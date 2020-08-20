function [mu sigma2] = estimateGaussian(X) %Function Definition
[m, n] = size(X); % collecting no of datasets and features
mu = zeros(n, 1); % declaration of mean
sigma2 = zeros(n, 1); %declaration of variance
mu = (mean(X))'; % calculating mean of each feature (or calculating mean coulmn wise)

%---------------------------------Using For Loop---------------------------------

%for i = [1:n],
%  sigma2(i) = sum((X(:,i) - mu(i)).^2);
%endfor
%sigma2 /= m;

%---------------------------------Vectorization---------------------------------
sigma2 = ((1/m)*sum((X-mu').^2))';
end
