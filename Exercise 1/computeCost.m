function J = computeCost(X, y, theta) % Function Definition
  % This function takes 3 arguments for its onvocation
  m = size(X,1); % number of training examples (m holds only now of rows).
  predictions = X*theta; % Computing Hypothesis Function
  sqrErrors = (predictions-y).^2; %Computing squared error
  J=1/(2*m)*sum(sqrErrors); % Summing up all the errors and taking mean of it 
endfunction