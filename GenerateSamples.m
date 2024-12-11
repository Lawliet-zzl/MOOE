function DATA = GenerateSamples(mu,sigma, num, c)

dim = size(mu, 2);

X = zeros(num, dim);
Y = ones(num,1)*c;

for j = 1:dim
    X(:,j) = normrnd(mu(j),sigma(j), [num,1]);
end

DATA = [X,Y];

end

