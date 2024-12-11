function [vs_co2, vs_ogd, rs_co2, rs_ogd, OfflineACC] = CO2(Datasets, lr, lro, K)

state = size(Datasets,2);
[m,n] = size(Datasets{1});
rs_co2 = zeros(m, state);
rs_ogd = zeros(m, state);
vs_co2 = zeros(m, state);
vs_ogd = zeros(m, state);
OfflineACC = zeros(state, K);

Ws = [];
alpha = 1;

for i = 1:state
    
    Data = Datasets{i};
    dim = n - 1;
    
    Wk = rand(1, dim);
    
    Ws = [Ws; Wk];
    
    IDX = size(Ws, 1);
    
    [Wo, losses] = OfflineExpert(Datasets{i}, lro, 1000, 0.1, Ws, alpha);
    
    for j = 1:m
        
        [alpha, vs_co2(j,i), rs_co2(j,i)] = MetaExpert(Data(j,:), lr, alpha, Ws, Wo);
        
        [Wk, vs_ogd(j,i), rs_ogd(j,i)] = OnlineExpert(Data(j,:), lr, Wk, Wo);
        
        Ws(IDX,:) = Wk;
    end
    
    
    Ws(IDX,:) = Wo;
    
    na = min(K, size(alpha,2) + 1);
    alpha = InitAlpha(na);
    
    OfflineACC(i,:) = MeasureOfflineACC(Data, Ws, K);
end


end

