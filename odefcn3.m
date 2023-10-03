% Define the function for the ODE system

function dydt = odefcn3(~, y, b, b_2, g, N)
dydt(1) = -b* (y(3)/N) * y(1);
dydt(2) = -b_2 * (y(3)/N) *y(2);
dydt(3) = b*(y(3)/N)*y(1) + b_2*(y(3)/N)*y(2)-g*y(3);
dydt(4) = g*y(3);
dydt = dydt';
end