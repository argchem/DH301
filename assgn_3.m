%parameters
t_0=0;
t_end=730;
tspan=[0,730];
step=1;
g=0.1;
s_0=99999;
v_0=0;
i_0=1;
r_0=0;
b=0.25;
b_2=0.075;  
N=100000;
esi=0.7;
y0 = [s_0 v_0 i_0 r_0];
r0=b/g;
HIT= (1-(1/r0))/esi;
%ODEs
options = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
[t,y]=ode45(@(t,y) odefcn3(t, y, b, b_2, g, N), tspan, y0);
% Plot the results
figure
plot(t, y(:, 1), '-r', 'LineWidth', 1); % Plot s(t) in red
hold on;
plot(t, y(:, 2), '-g', 'LineWidth', 1); % Plot v(t) in green
plot(t, y(:, 3), '-b', 'LineWidth', 1); % Plot i(t) in blue
plot(t, y(:, 4), '-m', 'LineWidth', 1); % Plot r(t) in magenta


% Customize the plot
xlabel('Time');
ylabel('Population');
title('Population Dynamics Over Time');
legend('Suspetible', 'Vaccinated', 'Infected', 'Recovered');
disp(HIT);
disp(r0);
grid on;
hold off