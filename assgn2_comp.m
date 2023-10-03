figure
plot(y_noq, '-r', 'LineWidth', 1); % Plot s(t) in red
hold on;
plot(y_1, '-g', 'LineWidth', 1); % Plot e(t) in green
plot(y_2, '-m', 'LineWidth', 1); % Plot i(t) in magenta
plot(y_3, '-c', 'LineWidth', 1); % Plot r(t) in cyan


% Customize the plot
xlabel('Time');
ylabel('Population');
title('Population Dynamics Over Time');
legend('No Quarantine', '2 Days Isolation', '3 Days Isolation', '4 Days Isolation');
grid on;
hold off