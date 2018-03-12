Returns = [0.10 0.20 0.15];

Covariances = [0.005 -0.010 0.004
                -0.010 0.040 -0.002
                0.004 -0.002 0.023];

points = 100;

figure
[PRisk, PRoR] = NaiveMV_CVX(Returns, Covariances, points);
plot(PRisk, PRoR, 'r--', 'LineWidth', 4)

hold on
[PRisk1, PRoR1] = NaiveMV(Returns, Covariances, points);
plot(PRisk1, PRoR1, 'b', 'LineWidth', 2)

legend('CVX','Linprog/Quadprog')
title('Mean-Variance Efficient Frontier for comparing CVX and Linprog/Quadprog')

xlabel('Standard Deviation of Portfolio Returns') % x-axis label
ylabel('Mean of Portfolio Returns') % y-axis label
