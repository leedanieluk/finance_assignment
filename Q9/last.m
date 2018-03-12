% calculate volatility of stock
c2925 = csvread('./c2925.csv');

Strike = 2925;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = c2925(100,3);
Value = c2925(100,2);
Time = T - T*(100 / 222);


ImpliedVolatility1 = blsimpv(Price,Strike,Rate,Time,Value);

% calculate volatility of stock
c3025 = csvread('./c3025.csv');

Strike = 3025;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = c3025(100,3);
Value = c3025(100,2);
Time = T - T*(100 / 222);


ImpliedVolatility2 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
c3125 = csvread('./c3125.csv');

Strike = 3125;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = c3125(100,3);
Value = c3125(100,2);
Time = T - T*(100 / 222);


ImpliedVolatility3 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
c3225 = csvread('./c3225.csv');

Strike = 3225;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = c3225(100,3);
Value = c3225(100,2);
Time = T - T*(100 / 222);


ImpliedVolatility4 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
c3325 = csvread('./c3325.csv');

Strike = 3325;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = c3325(100,3);
Value = c3325(100,2);
Time = T - T*(100 / 222);


ImpliedVolatility5 = blsimpv(Price,Strike,Rate,Time,Value)


% %  PPPPPPPP

% calculate volatility of stock
p2925 = csvread('./p2925.csv');

Strike = 2925;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = p2925(100,3);
Value = p2925(100,2);
Time = T - T*(100 / 222);


pImpliedVolatility1 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
p3025 = csvread('./p3025.csv');

Strike = 3025;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = p3025(100,3);
Value = p3025(100,2);
Time = T - T*(100 / 222);


pImpliedVolatility2 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
p3125 = csvread('./p3125.csv');

Strike = 3125;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = p3125(100,3);
Value = p3125(100,2);
Time = T - T*(100 / 222);


pImpliedVolatility3 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
p3225 = csvread('./p3225.csv');

Strike = 3225;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = p3225(100,3);
Value = p3225(100,2);
Time = T - T*(100 / 222);


pImpliedVolatility4 = blsimpv(Price,Strike,Rate,Time,Value)

% calculate volatility of stock
p3325 = csvread('./p3325.csv');

Strike = 3325;
Rate = 0.06;
counter = 1;

T = 11.1 / 12;

    
Price = p3325(100,3);
Value = p3325(100,2);
Time = T - T*(100 / 222);


pImpliedVolatility5 = blsimpv(Price,Strike,Rate,Time,Value)

imp = [ImpliedVolatility1 ImpliedVolatility2 ImpliedVolatility3 ImpliedVolatility4 ImpliedVolatility5];
pimp = [pImpliedVolatility1 pImpliedVolatility2 pImpliedVolatility3 pImpliedVolatility4 pImpliedVolatility5];
scatter([2925, 3025, 3125,3225,3325],imp,'filled')
hold on
scatter([2925, 3025, 3125,3225,3325],pimp,'filled')

title('Implied Volatility for several Strikes Prices in Day 100')
xlabel('Strike Price')
ylabel('Implied Volatility')
legend('Call Option','Put Option')
grid on
