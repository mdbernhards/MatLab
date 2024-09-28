function [y, txt] = calculateAngle(a, b)
    % The function checks if input values a and b have the same dimensions
    % if they don't returns Error txt
    % if they do return the angle between the two vectors
    
    % Checks if vectors have the same length
    if size(a) == size(b)
        % using a formula calculates the angle
        y = acos(dot(a, b) / (norm(a) * norm(b)));
        txt = 'OK';
    else
        y = NaN;
        txt = 'Error';
    end
end