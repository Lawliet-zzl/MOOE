function D = EstimateD(Data)
v = 0;

for i = 1:size(Data,1)
    v = max(norm(Data(i,:), 2), v);
end

D = v;
end

