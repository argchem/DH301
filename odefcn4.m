function dydt = odefcn4(~, y, b, delta, u, g_1, g_2,N)
    % Calculate l dynamically
    dydt(1) = -b*(y(2)/(2*N) + y(4)/N) * y(1);
    dydt(2) = b*(y(2)/(2*N) + y(4)/N) * y(1) - g_1* y(2);
    dydt(3) = g_1* y(2) - delta * y(3) ;
    dydt(4) = delta* y(3) - u * y(4) - g_2 * y(4);
    dydt(5) = g_2 * y(4);
    dydt(6) = u * y(4);
    dydt = dydt';
end
