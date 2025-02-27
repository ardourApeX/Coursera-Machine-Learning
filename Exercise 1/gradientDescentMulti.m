function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

  m = length(y); % number of training examples
  n = size(X,2); % no of features
  J_history = zeros(num_iters, 1); % declaration of J_history.
% J_history is used to store all the cost values obtained from different Theta(s)
  temp = zeros(n,1);
  for iter = 1:num_iters
      % ====================== YOUR CODE HERE ============s==========
      % Instructions: Perform a single gradient step on the parameter vector
      %               theta. 
      %
      % Hint: While debugging, it can be useful to print out the values
      %       of the cost function (computeCostMulti) and gradient here.
        for repeat = 1:n
          temp(repeat) = sum(((X*theta)-y).*X(:,repeat))*(alpha/m);
        endfor
      theta=theta-temp;
      % Save the cost J in every iteration    
      J_history(iter) = computeCostMulti(X, y, theta);

  end

end
