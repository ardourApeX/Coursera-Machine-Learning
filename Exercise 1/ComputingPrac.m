function J = ComputingPrac(X,Y,Theta)
  %computing H(x), it is going to be a vector as we are dealing with vector itself.
  H = X*Theta;
  disp(size(H));
  %Now we have H(x). We now calculate deviation from original values
  m = length(Y);
  temp = (H-Y).^2;
  J = (sum(temp))/(2*m);
endfunction
