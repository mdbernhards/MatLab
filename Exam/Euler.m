function [t, y] = Euler(deriv_func, t_end, dt, t0, y0)
    % Function to approximate a first-order DE using Euler's method
    t = t0:dt:t_end;     % Create a time array from t0 to t_end
    y = zeros(size(t));   % Initialize y array for solutions
    y(1) = y0;            % Set initial condition

    for i = 1:(length(t)-1)
        y(i+1) = y(i) + dt * deriv_func(t(i), y(i));  % Euler update
    end
end