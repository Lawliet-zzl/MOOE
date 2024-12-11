function Datasets = DivideData(Data, state)

Datasets = cell(1,3);

[m,n] = size(Data);
g = m / state;

X = Data(:,2:n);
Y = Data(:,1);

X = Normalization(X);

for i = 1:state
    
    Xs = X((i - 1 )*g + 1: i*g,:);
    Ys = Y((i - 1 )*g + 1: i*g,:);
    Datasets{i} = [Xs,Ys];
    
    PTE = [rand(1,n - 1); rand(1,n -1)];
    
    X = PreX(X, Y, PTE);

end

end

