function J = computeCostMulti(X, Y, Theta) % Function Definition
  H = X*Theta;% Calculating Hypothesis Function through Vectorization
  m = length(Y);% Calculating number of Training Examples
  J = (sum((H-Y).^2))/(2*m);% Calculating Cost Function
% First Calculating sum of error difference and then calculating mean of it
endfunction

