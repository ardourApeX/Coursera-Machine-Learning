function [bestEpsilon bestF1] = selectThreshold(yval, pval) %Function Definition
%yval = actual prediction vector of cross validation set
%pval = Predicted values on cross validation set

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;
% Intializing all variables

stepsize = (max(pval) - min(pval)) / 1000; %Definig stepsize (should be small 
% enough to increase the probability of getting bestEpsilon

for epsilon = min(pval):stepsize:max(pval), % Iterating a loop from minimum
% value to maximum value in pval of stepsize same as declared above

  prediction = pval < epsilon; % converting prediction into binary format (mX1)
 
% now calculating true positive, false positive, false negative
  true_positive = sum((prediction == 1) & (yval == 1));
  false_positive = sum((prediction == 1) & (yval == 0));
  false_negative = sum((prediction == 0) & (yval == 1));

% calculating precision and recall
  Precision = true_positive / (true_positive + false_positive);
  Recall = true_positive / (true_positive + false_negative);

% calculating F1 score
  F1 = (2 * Precision * Recall) / (Precision + Recall);
    if F1 > bestF1 % checking whether calculated F1 score is greater then stored 
    % one. If so, store the calculated one in bestF1 and epsilon in bestEpsilon
       bestF1 = F1;
       bestEpsilon = epsilon;
    endif
  endfor
end
