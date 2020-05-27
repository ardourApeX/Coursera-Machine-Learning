function [theta, J_history] = Grad(x,y,theta,alpha,num_iters)
  m = length(y);
  J_history = zeros(num_iters, 1);
  for iters = 1:num_iters
    h = x*theta;
    theta = theta - (alpha/m)*((sum((h-y).*x)))';
    J_history(iters) = computeCostMulti(x,y,theta);
    
  endfor
endfunction
