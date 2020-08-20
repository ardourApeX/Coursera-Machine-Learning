function centroids = computeCentroids(X, idx, K) %Function Definition
[m n] = size(X);% Storing dimension of dataset
centroids = zeros(K, n); % Centroids declaration 
for i = 1:K % iterating over total no of clusterss
      idx_i = find(idx==i);%indexes of all the input which belongs to cluster i
      centroids(i,:) = mean(X(idx_i,:));% calculating mean distance of the datasets belongs to cluster i and storing it in correponding centroids
end
end

