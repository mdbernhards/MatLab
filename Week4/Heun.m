function [t, y] = Heun(deriv_func, t_end, dt, t0, y0)
    t = t0:dt:t_end;  % Time array
    y = zeros(size(t));  % Array for the solution
    y(1) = y0;  % Initial condition
    
    for i = 1:(length(t) - 1)
        % Predictor step (Euler method)
        y_pred = y(i) + dt * feval(deriv_func, t(i), y(i));
        
        % Corrector step
        slope_avg = (feval(deriv_func, t(i), y(i)) + feval(deriv_func, t(i+1), y_pred)) / 2;
        y(i+1) = y(i) + dt * slope_avg;
    end
end