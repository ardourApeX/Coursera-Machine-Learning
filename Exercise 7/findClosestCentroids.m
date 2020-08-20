function idx = findClosestCentroids(X, centroids) % function definition
% X = Dataset
% centroids = Predifined clusters points
% Consider total no of clusters i.e. K = 3
K = size(centroids, 1);
% 
idx = zeros(size(X,1), 1);
% A column vector of size equal to dataset. Each column of idx holds corresponding training example's belonging cluster
for i = 1: size(X,1), % iterating over entire dataset
  temp = zeros(K,1);  % temporary variable to store distance of dataset from each cluster points
  for j = 1:K,        % iterating over no of clusters
    temp(j) = sqrt(sum((X(i,:) - centroids(j,:)).^2)); 
    % calculating distance and storing it in a temporary variable  
  endfor
  [~, idx(i)] = min(temp);
    % storing corresponding cluster index in idx for respective dataset
endfor
end

