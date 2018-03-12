% calculate volatility of stock
p3125 = csvread('./p3125.csv');

Strike = 3125;
Yield = 0.00;
Rate = 0.06;

counter = 1;

T = 11.1 / 12;

call_prices_estimate = [];

for i=52:222
    
    Price = p3125(i,3);
    Value = p3125(i,2);
    Time = T - T*(i / 222);

    ImpliedVolatility = blsimpv(Price,Strike,Rate,Time,Value);
    change_in_price = p3125(counter+1:i,3) - p3125(counter:i-1,3);
    change_in_price = std((change_in_price ./ p3125(counter:i-1,3)));
    
%     Volatility = change_in_price * sqrt((2.6 / 12))
    Volatility = change_in_price * sqrt(252);

    [Call, Put] = blsprice(Price,Strike,Rate,Time,Volatility,Yield);
    call_prices_estimate(end+1) = Put;
    counter = counter + 1;
end

time = 52:1:222;
call_prices = p3125(52:end,2);

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

title('Black-Scholes model on Put Options Prices for p3125')

xlabel('Time (days)') % x-axis label
ylabel('Option Price') % y-axis label

p3_mse = immse(call_prices, call_prices_estimate')
