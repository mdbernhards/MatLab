function result = simpson(f_x,lower,upper,number_of_trapeziums)
% % Syntax:
% % simpson(f_x,lower_limit,upper_limit,number_of_trapeziums)
% % f_x should be an inline function
% % Beware: number of trapeziums must be even (2, 4, 6, ...)
% %
% % Example: simpson(@(x) x.^2,l,4,4)
     a = lower; % lower limit
     b = upper; % upper limit
     n = number_of_trapeziums;
     h = (b-a)/n; % integration stepsize
     x = a:h:b; % arguments for f_x
     sum= f_x(x(1)); % assign first function value to sum
     for i=2:n
        if mod(i,2)==0
            sum = sum +4* f_x(x(i));
        else
            sum = sum +2* f_x(x(i));
        end
     end
     sum = sum + f_x(x(n+1)); % add last function value to sum
     result=h/3*sum;
end