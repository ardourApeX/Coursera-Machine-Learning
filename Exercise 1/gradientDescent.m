function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters) % Function Definition
  m = length(y); % Number of training examples
  J_history = zeros(num_iters, 1); % Declaration of J_history 
% It is to store each value of Cost Function until it becomes minimum of all time

  for iter = 1:num_iters % Iterating over 'N' no of times
      temp1=sum(((X*theta)-y).*X(:,1))*(alpha/m);% Calculating Gradient for Theta1
      temp2=sum(((X*theta)-y).*X(:,2))*(alpha/m);% Calculating Gradient for Theta2
      theta(1)=theta(1)-temp1;% Updating Theta1 ie applying Gradient Descent here
      theta(2)=theta(2)-temp2;% Updating Theta2 ie applying Gradient Descent here   
      J_history(iter) = computeCost(X, y, theta);
%     Storing each value of Cost Function obtained from each set of Theta(s)
  endfor
endfunction
