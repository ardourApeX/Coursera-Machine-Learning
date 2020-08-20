function Z = projectData(X, U, K) % Function Definition
% X = Dataset
% U = Transforming Matrix
% K = No of clusters
Z = zeros(size(X, 1), K); % Initializing K with Zeros
U_reduce = U(:,[1:K]); % Picking out Transforming Matrix upto K columns 
% size of U_reduce (nXk)
Z = X*U_reduce
% Compressed Matrix of X is stored in Z
end
