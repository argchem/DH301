%parameters
t_0=0;
t_end=100;
tspan=[0,100];
step=1;
g_1=0.33;
g_2=0.33;
delta=0.25;
b=0.667;
s_0=99999;
e_0=1;
i_0=0;
q_0=0;
r_0=0;
d_0=0;
u=g_2/49;
N=100000;
y0 = [s_0 e_0 q_0 i_0 r_0 d_0];
%ODEs
options = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
[t,y]=ode45(@(t,y) odefcn4(t, y, b, delta, u, g_1, g_2,N), tspan, y0);
% Plot the results
figure
plot(t, y(:, 1), '-r', 'LineWidth', 1); % Plot s(t) in red
hold on;
plot(t, y(:, 2), '-g', 'LineWidth', 1); % Plot e(t) in green
plot(t, y(:, 3), '-b', 'LineWidth', 1); % Plot q(t) in blue
plot(t, y(:, 4), '-m', 'LineWidth', 1); % Plot i(t) in magenta
plot(t, y(:, 5), '-c', 'LineWidth', 1); % Plot r(t) in cyan
plot(t, y(:, 6), '-k', 'LineWidth', 1); % Plot d(t) in black

% Customize the plot
xlabel('Time');
ylabel('Population');
title('Population Dynamics Over Time');
legend('Suspetible', 'Asymptomatic', 'Quarantine', 'Symptomatic', 'Recovered', 'Deaths');
grid on;
hold off