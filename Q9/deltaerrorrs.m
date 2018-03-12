% calculate volatility of stock
c2925 = csvread('./c2925.csv');
strike = 2925;
Price = c2925(:,3);
time = c2925(:,1) - min(c2925(:,1));

input_1 = Price(52:end) ./ strike; % S(t) / X
input_2 = flipud(time) / 20; % T - t
input_2 = input_2(52:end);
input = horzcat(input_1, input_2)';

train_input = input(:,1:170);
test_input = input(:,171:end);

% target = c2925(:,2);
target = call_prices_estimate;
% train_target = target(1:170,1);
% test_target = target(171:end,1);

eg = 0.0001; % sum-squared error goal
sc = 1;    % spread constant
net = newrb(input,target,eg,sc);
figure
test_output_plot = net(input);

% timeframe = c2925(:,1) - min(c2925(:,1)) + 1;

timeframe = 52:1:222;

plot(timeframe,target);
xlabel('Time (days)');
ylabel('Sensitivity');
hold on
plot(timeframe,test_output_plot,'+');
hold off;
legend({'Target','Output'})
title('Estimating Delta for c2925 using Radial Basis Functions')
xlim([52 222])
