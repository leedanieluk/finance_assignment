% calculate volatility of stock
c3225 = csvread('./c3225.csv');

Strike = 3225;
Yield = 0.00;
Rate = 0.06;

counter = 1;

T = 11.1 / 12;

call_prices_estimate = [];

for i=52:222
    
    Price = c3225(i,3);
    Value = c3225(i,2);
    Time = T - T*(i / 222);

    ImpliedVolatility = blsimpv(Price,Strike,Rate,Time,Value);
    change_in_price = c3225(counter+1:i,3) - c3225(counter:i-1,3);
    change_in_price = std((change_in_price ./ c3225(counter:i-1,3)));
    
%     Volatility = change_in_price * sqrt((2.6 / 12))
    Volatility = change_in_price * sqrt(252);

    [Call] = blsprice(Price,Strike,Rate,Time,Volatility,Yield);
    call_prices_estimate(end+1) = Call;
    counter = counter + 1;
end

time = 52:1:222;
call_prices = c3225(52:end,2);

h1 = scatter(time,call_prices,'filled','r');
hold on
plot(time,call_prices,'r')
hold on
h3 = scatter(time, call_prices_estimate,'filled','b');
hold on
plot(time, call_prices_estimate,'b')

legend([h1 h3],{'Actual Option Prices','BS Option Prices'}); 
grid on
xlim([52 222])

title('Black-Scholes model on Call Options Prices for c3225')

xlabel('Time (days)') % x-axis label
ylabel('Option Price') % y-axis label

c4_mse = immse(call_prices, call_prices_estimate')
