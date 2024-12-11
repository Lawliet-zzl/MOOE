function ACC = MeasureOfflineACC(Data, Ws, K)

ACC = zeros(1,K);

a = size(Ws,1);

if a > K
    Ws = Ws(a - K + 1:a,:);
    L = K;
else
    L = a;
end

for k = 1:L
    W = Ws(k,:);
    [accuracy, loss] = ACCURACY(Data, W);
    ACC(1,k) = accuracy;
end

end

