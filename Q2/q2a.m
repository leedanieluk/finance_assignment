% 1 and 2
Returns = [0.10 0.20];
Covariances = [0.005 -0.010
                -0.010 0.040];

portopt(Returns, Covariances, 20)

Weights = rand(100, 2);

Total = sum(Weights, 2);     % Add the weights
Total = Total(:,ones(2,1));  % Make size-compatible matrix
Weights = Weights./Total;    % Normalize so sum = 1

[PortRisk, PortReturn] = portstats(Returns, Covariances, Weights);

hold on
plot (PortRisk, PortReturn, '.r')
title('Mean-Variance Efficient Frontier and Random Portfolios')
hold off 