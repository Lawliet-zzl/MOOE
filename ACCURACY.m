function [accuracy, loss] = ACCURACY(TES, W)

accuracy = 0;
loss = 0;


[m,n] = size(TES);
P = zeros(m,1);

X = TES(:,1:n - 1);
Y = TES(:,n);

loss = mean((X*W' - Y).^2);

O = X*W';
P(O > 0.5) = 1;


accuracy = size(Y(Y == P), 1) / m;

end

