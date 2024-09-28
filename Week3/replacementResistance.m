function [Rv] = replacementResistance(R)
    % The function calculates the total resistance of resistors in vector R
    % only works if resistors are in paralel
    Rv = 1 / sum(1 ./ R);
end