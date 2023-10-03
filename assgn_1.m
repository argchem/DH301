%parameters
t_0=0;
t_end=46;
tspan=[0,46];
step = 5;
u=0.067;
n=0.5;
p_sym=0.6;
p_asym=0.4;
g_1=0.33;
g_2=0.2;
u_0=99999;
s_0=1;
i_0=0;
a_0=0;
r_0=0;
d_0=0;
b=3.7;
N=100000;
y0 = [u_0 i_0 a_0 s_0 r_0 d_0];
%ODEs
[t,y]=ode45(@(t,y) odefcn2(t,y, n, b, p_asym, p_sym, u, g_1, g_2,N), tspan, y0);
% Plot the results
figure;
plot(t, y(:, 1), '-r', 'LineWidth', 2); % Plot u(t) in red
hold on;
plot(t, y(:, 2), '-g', 'LineWidth', 2); % Plot i(t) in green
plot(t, y(:, 3), '-b', 'LineWidth', 2); % Plot a(t) in blue
plot(t, y(:, 4), '-m', 'LineWidth', 2); % Plot s(t) in magenta
plot(t, y(:, 5), '-c', 'LineWidth', 2); % Plot r(t) in cyan
plot(t, y(:, 6), '-k', 'LineWidth', 2); % Plot d(t) in black

% Customize the plot
xlabel('Time');
ylabel('Population');
title('Population Dynamics Over Time');
legend('Uninfected', 'Incubation', 'Asymptomatic', 'Symptomatic', 'Recovered', 'Death');
grid on;
hold off

