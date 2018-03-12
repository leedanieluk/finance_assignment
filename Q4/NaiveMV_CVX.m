function [PRisk, PRoR, PWts] = NaiveMV_CVX(ERet, ECov, NPts)
% ERet = ERet(:); % makes sure it is a column vector

NAssets = length(ERet); % get number of assets
% vector of lower bounds on weights
V0 = zeros(NAssets, 1);
% row vector of ones
V1 = ones(1, NAssets);
% set medium scale option
options = optimset('LargeScale', 'off');
% Find the maximum expected return
% MaxReturnWeights = linprog(-ERet, [], [], V1, 1, V0);

cvx_begin
    variable pi_weights(3)
    maximize( ERet * pi_weights )
    subject to
        V1 * pi_weights == 1; % equality constraint
        pi_weights >= 0; % inequality constraint (Lower Bound)
cvx_end

ERet = ERet(:); % makes sure it is a column vector
MaxReturn = pi_weights' * ERet;

% Find the minimum variance return
MinVarWeights = quadprog(ECov,V0,[],[],V1,1,V0,[],[],options);

cvx_begin
    variable pi_weights(3)
    minimize( pi_weights' * ECov * pi_weights )
    subject to
        V1 * pi_weights == 1; % equality constraint
        pi_weights >= 0; % inequality constraint (Lower Bound)
cvx_end

MinVarReturn = pi_weights' * ERet;
MinVarStd = sqrt(MinVarWeights' * ECov * MinVarWeights);

% check if there is only one efficient portfolio
if MaxReturn > MinVarReturn
RTarget = linspace(MinVarReturn, MaxReturn, NPts);
NumFrontPoints = NPts;
else
RTarget = MaxReturn;
NumFrontPoints = 1;
end

% Store first portfolio
PRoR = zeros(NumFrontPoints, 1);
PRisk = zeros(NumFrontPoints, 1);
PWts = zeros(NumFrontPoints, NAssets);
PRoR(1) = MinVarReturn;
PRisk(1) = MinVarStd;
PWts(1,:) = MinVarWeights(:)';
% trace frontier by changing target return
VConstr = ERet';
A = [V1 ; VConstr ];
B = [1 ; 0];

for point = 2:NumFrontPoints
B(2) = RTarget(point);
% Weights = quadprog(ECov,V0,[],[],A,B,V0,[],[],options);

cvx_begin quiet
    variable pi_weights(3)
    minimize( pi_weights' * ECov * pi_weights )
    subject to
        A*pi_weights == B; % equality constraint
        pi_weights >= 0; % inequality constraint (Lower Bound)
cvx_end

B(2);
sqrt(cvx_optval);
Weights = pi_weights;
PRoR(point) = dot(Weights, ERet);
PRisk(point) = sqrt(Weights'*ECov*Weights);
PWts(point, :) = Weights(:)';
end
