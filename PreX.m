function X = PreX(X, Y, PTE)

[m,n] = size(X);

sigma = ones(1,n);

for i = 1:m
    mu = PTE(Y(i) + 1, :);
    
    noise = zeros(1,n);
    
    for j = 1:n
        noise(j) = normrnd(mu(j),sigma(j));
    end

    X(i,:) = X(i,:) + noise;
end

end

