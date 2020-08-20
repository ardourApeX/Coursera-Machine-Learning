function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
h = sigmoid(X*theta);
theta(1)=0
J = (((-y)'*(log(h))).-((1-y)'*(log(1-h)))+sum(theta.^2)*lambda/2)/m;

grad = zeros(size(theta));

grad = (1/m)*((X')*(h-y)+theta.*lambda);

grad = grad(:);

end
