function [y] = squaredSum(x)
    % This function squares the x vector and then sums up all of its values
    % The result is returned as y
    y = sum(x.^2);
end