Returns = [0.000404572542748 0.000498372281517 0.00118585783834];

Covariances = [ 4.76926246e-04   1.11973262e-04   1.13569308e-04
                1.11973262e-04   1.74727525e-04   9.14603035e-05
                1.13569308e-04   9.14603035e-05   2.51050907e-04];

points = 100;

[PRisk1, PRoR1] = NaiveMV_CVX(Returns, Covariances, points);
plot(PRisk1, PRoR1)

title('Mean-Variance Efficient Frontier for 3 random stocks in the FTSE100')

xlabel('Standard Deviation of Portfolio Returns') % x-axis label
ylabel('Mean of Portfolio Returns') % y-axis label

hold on

scatter([0.0154 0.01405 0.01302 0.01201],[0.001155 0.00105 0.000948 0.000749], 'ro')
legend('AHT.L, CRDA.L, SGE.L','Samples of Efficient Portfolios','Location', 'northwest')