function dydt = odefcn5(~, y, b, u, g_1, g_2,N)
    % Calculate l dynamically
    dydt(1) = -b*(y(2)/(2*N) + y(3)/N) * y(1);
    dydt(2) = b*(y(2)/(2*N) + y(3)/N) * y(1) - g_1* y(2);
    dydt(3) = g_1* y(2)  - g_2 * y(3) -  u * y(4);
    dydt(4) = g_2 * y(3);
    dydt(5) = u * y(4);
    dydt = dydt';
end
