function y = sumsin(t, f, a)
% t - time vector
% f - frequency
% a - amplitudes
% this function can add multiple sine waves together

sf = size(f); 
sa = size(a); 

  if sf(1)==sa(2)
    y = a .* sin(f.*t) 
  else 
    y = NaN; 
    Txt = 'f and a must have the same length'; 
  end 
end