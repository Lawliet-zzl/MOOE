function D = Normalization(X)

[M,N] = size(X);
MINV = min(X);
MAXV = max(X);

D = (X - repmat(MINV,[M,1]))./repmat(MAXV - MINV,[M,1]);

[n,m]=find(isnan(D));
colNum=(1:1:N);
colRest=setdiff(colNum, m);
D = D(:,colRest ); 
end

