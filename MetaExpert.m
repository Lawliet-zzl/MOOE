function [alpha, v, r] = MetaExpert(data, lr, alpha, Ws, Wx)

n = size(data, 2);
X = data(:,1:n - 1);
Y = data(:,n);

nw = size(Ws, 1);
na = size(alpha, 2);
Ws = Ws(nw - na + 1:nw,:);
W = sum(repmat(alpha', [1, n - 1]).*Ws, 1);

alpha = (exp(-((Ws*X' - Y).^2)'*lr).*alpha) / sum(exp(-((Ws*X' - Y).^2)'*lr).*alpha);

v = (X*W' - Y)^2;
r = v - (X*Wx' - Y)^2;
end

