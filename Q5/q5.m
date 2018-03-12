Returns = [0.000404572542748 0.000498372281517 0.00118585783834];

Covariances = [3.00902825e-04   1.26603213e-09   1.26603213e-09
               1.26603213e-09   3.00902825e-04   1.26603213e-09
               1.26603213e-09   1.26603213e-09   3.00902825e-04];


Covariances_normal = [4.76926246e-04   1.11973262e-04   1.13569308e-04
   1.11973262e-04   1.74727525e-04   9.14603035e-05
   1.13569308e-04   9.14603035e-05   2.51050907e-04];

points = 100;

[PRisk1, PRoR1] = NaiveMV(Returns, Covariances_normal, points);
plot(PRisk1, PRoR1, 'b')
hold on

[PRisk1, PRoR1] = NaiveMV(Returns, Covariances, points);
plot(PRisk1, PRoR1, 'r')

legend('without MP strategy','with MP strategy','Location','northwest')

title('Mean-Variance Efficient Frontier with MacKinlay/Pastor Enhancement')

xlabel('Standard Deviation of Portfolio Returns') % x-axis label
ylabel('Mean of Portfolio Returns') % y-axis label
