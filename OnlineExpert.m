function [W, v, r] = OnlineExpert(data, lr, W0, Wx)

n = size(data, 2);

X = data(:,1:n - 1);
Y = data(:,n);

W = W0 - lr*(X*W0' - Y)*X;

v = (X*W0' - Y)^2;
r = v - (X*Wx' - Y)^2;
end

