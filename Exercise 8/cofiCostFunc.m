function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
% Function Definition
% R comprise of 1 and 0. 1 for those movies which are rated by users, otherwise 0

X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);
% X, Theta obtained from above set of command
            
J = 0;        
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));
% Initializing J, X_grad, Theta_grad


%-----------------------------WITHOUT REGULARIZATION----------------------------


J = sum(sum((((X*Theta') - Y).^2).*R))/2; % ((X*Theta') - Y).^2), is the error.
% . (dot) multiplying error by R so as to only calculate cost of those movies
% which are rated by the users.

X_grad = (((X*Theta') - Y).*R)*Theta; % Calculating X_grad. Same concept of R
% applies here.

Theta_grad = (((X*Theta') - Y).*R)'*X; % Calculating Theta_grad. Same concept of 
% R applies here.


%------------------SUCCESSFUL EVALUTION WITHOUT REGULARIZATION------------------
%===============================================================================



%------------------------------WITH REGULARIZATION------------------------------

Theta_Reg = (lambda/2)*sum((sum(Theta.^2))); %calculating regularization term
% for Theta

X_Reg = (lambda/2)*sum(sum(X.^2)); %calculating regularization term for X

J = J + Theta_Reg + X_Reg; %adding both of them back to cost function

%-------------------SUCCESSFUL EVALUTION WITH REGULARIZATION--------------------
%===============================================================================



%-----------------------------REGULARIZED GRADIENT------------------------------


%Since there is no biased feature so we can directly evaluate gradient term

X_grad += lambda*X; % adding regularization term back to gradient X
Theta_grad += lambda*Theta; % adding regularization term back to gradient Theta

%-----------------SUCCESSFULLY CALCULATED REGULARIZED GRADIENT------------------
%===============================================================================


grad = [X_grad(:); Theta_grad(:)]; %Rolling X_grad & Theta_grad

endfunction
