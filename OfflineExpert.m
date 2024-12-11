function [W, loss] = OfflineExpert(DATA, lr, iter, gamma, Ws, alpha)

[m,n] = size(DATA);

X = DATA(:,1:n - 1);
Y = DATA(:,n);
W = rand(1, n - 1);

loss = zeros(iter, 1);

nw = size(alpha, 2);

for i = 1:iter
    g = mean(X.*repmat((X*W' - Y), [1, n - 1]));
    
    if nw > 0
        k = size(alpha, 2);
        g = g + gamma* mean(Ws(nw - k + 1:nw,:).*repmat(alpha', [1, n - 1]));
    end
    
    W = W - lr*g;
    loss(i) = mean((X*W' - Y).^2);
end

end

