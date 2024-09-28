function [dydx] = derivative(x,y)
    % Calculated derivative of the input vector y of x
    % Returns it as dydx
    dydx = diff(y) ./ diff(x);
    % Appends the last element another time, so that lengths match
    dydx(end+1) = dydx(end);
end