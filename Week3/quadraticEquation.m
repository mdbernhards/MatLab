function [y] = quadraticEquation(x)
    %This function calculates y from the value x using an quadratic equation
    % x could be a vector
    y = 0.9 .* x.^4 -12 .* x.^2 -5 .* x;
end