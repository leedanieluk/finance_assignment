call_mses = [c1_mse,c2_mse,c3_mse,c4_mse,c5_mse]';
put_mses = [p1_mse,p2_mse,p3_mse,p4_mse,p5_mse]';

mses = horzcat(call_mses, put_mses);

bar([2925 3025 3125 3225 3325], mses)

legend('Call MSEs','Put MSEs','Location','NorthWest')
xlabel('Strike Price')
ylabel('MSE')
title('MSEs between Actual Option Price and BS Option Price')