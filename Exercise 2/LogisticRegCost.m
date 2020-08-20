function J = LogisticRegCost(x,y,theta)
m=length(y);
h = sigmoid(x*theta);
J = ((-y)'*(log(h))).-((1-y)'*(log(1-h)))/m;
