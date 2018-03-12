% calculate volatility of stock
c2925 = csvread('./c2925.csv');

Strike = 2925;
Yield = 0.00;
Rate = 0.06;

counter = 1;

T = 11.1 / 12;

call_prices_estimate = [];

for i=52:222
    
    Price = c2925(i,3);
    Value = c2925(i,2);
    Time = T - T*(i / 222)+0.00001;

    ImpliedVolatility = blsimpv(Price,Strike,Rate,Time,Value);
    change_in_price = c2925(counter+1:i,3) - c2925(counter:i-1,3);
    change_in_price = std((change_in_price ./ c2925(counter:i-1,3)));
    
%     Volatility = change_in_price * sqrt((2.6 / 12))
    Volatility = change_in_price * sqrt(252);

%     [Call] = blsprice(Price,Strike,Rate,Time,Volatility,Yield);
    [Call] = blsdelta(Price,Strike,Rate,Time,Volatility);
    call_prices_estimate(end+1) = Call;
    counter = counter + 1;
end

time = 52:1:222;
call_prices = c2925(52:end,2);

% h1 = scatter(time,call_prices,'filled','r');
% hold on
% plot(time,call_prices,'r')
% hold on
h3 = scatter(time, call_prices_estimate,'filled','b');
hold on
plot(time, call_prices_estimate,'b')

legend('Delta (dC/dS'); 
grid on
xlim([52 222])

title('Black-Scholes model on Call Options Prices for c2925')

xlabel('Time (days)') % x-axis label
ylabel('Option Price') % y-axis label

c1_mse = immse(call_prices, call_prices_estimate');
