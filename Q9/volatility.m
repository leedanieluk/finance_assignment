    % calculate volatility of stock
p3325 = csvread('./p3325.csv');

Strike = 2925;
Rate = 0.0;
counter = 1;

T = 11.1 / 12;

call_prices_estimate = [];
implied_volatility = [];
estimated_volatility = [];

for i=52:222
    
    Price = p3325(i,3);
    Value = p3325(i,2);
    Time = T - T*(i / 222);
    
    if (100 < i) && (i <= 130)
        ImpliedVolatility = blsimpv(Price,Strike,Rate,Time,Value);
        implied_volatility(end+1) = ImpliedVolatility;

    end
  
    change_in_price = p3325(counter+1:i,3) - p3325(counter:i-1,3);
    change_in_price = std((change_in_price ./ p3325(counter:i-1,3)));
    
    Volatility = change_in_price * sqrt(252);

    if (100 < i) && (i <= 130)
        estimated_volatility(end+1) = Volatility;
    end
 
    [Call] = blsprice(Price,Strike,Rate,Time,Volatility);

    counter = counter + 1;
end

time = 100:1:129;

scatter(time,estimated_volatility,'r','filled')
hold on 
scatter(time,implied_volatility,'b','filled')

legend('Historical Volatility (Hull)','BS Implied Volatility')

title('Historical Volatility vs BS Implied Volatility over 30 days')

xlabel('Time (days)') % x-axis label
ylabel('Volatility') % y-axis label

xlim([100 129])
grid on
