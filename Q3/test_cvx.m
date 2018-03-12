% n = 3;
% V1 = ones(1, n);
% 
% A1 = [0.1 0.5 0.3];

% cvx_begin
%     variable x(n)
%     maximize( A*x )
%     subject to
%         sum(x) <= 1; % equality constraint
%         x >= 0; % inequality constraint (Lower Bound)
% cvx_end

A2 = [0.005 -0.010 0.004
      -0.010 0.040 -0.002
      0.004 -0.002 0.023];


cvx_begin
    variable x(3)
    minimize( x'*A2*x)
    subject to
        sum(x) <= 1; % equality constraint
        x >= 0; % inequality constraint (Lower Bound)
cvx_end



