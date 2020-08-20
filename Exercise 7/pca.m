function [U, S] = pca(X) % function definition
[m, n] = size(X); % storing no of rows and columns
% [U, S, V] = svd(sigma)
% U & S, both are square matrix of size equal to no of features
U = zeros(n); 
S = zeros(n);
sigma = (1/m) * (X'*X); % calculating Sigma
% size of Sigma = nXn
[U, S, V] = svd(sigma);
% S is a diagonal matrix 
% U is transforming parameter
end
