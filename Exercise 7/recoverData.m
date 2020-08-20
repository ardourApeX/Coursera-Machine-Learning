function X_rec = recoverData(Z, U, K) % Function Definition
X_rec = zeros(size(Z, 1), size(U, 1));
% Intializing X_rec with zeros of size mXn
% size of: 
%    Z = m x K
%    U = n x n
%    U_reduce = n x k
%    K = scalar
%    X_rec = m x n
U_reduce = U(:,1:K);
% Slicing U upto K
X_rec = Z*U_reduce';
% Reversing Back!
end
