% Define the function for the ODE system

function dydt = odefcn2(~, y, n, b, p_asym, p_sym, u, g_1, g_2,N)
    % Calculate l dynamically
    dydt(1) = -b*(y(3)/(2*N) + y(4)/N) * y(1);
    dydt(2) = b*(y(3)/(2*N) + y(4)/N) * y(1) - n * y(2);
    dydt(3) = n * p_asym * y(2) - g_1 * y(3);
    dydt(4) = n * p_sym * y(2) - u * y(4) - g_2 * y(4);
    dydt(5) = g_1 * y(3) + g_2 * y(4);
    dydt(6) = u * y(4);
    dydt = dydt';
end




