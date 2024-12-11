function Datasets = SyntheticDataset(state, num, dim)

Datasets = cell(1,state);
MUS = [rand(1,dim)*10; rand(1,dim)*10];

for i = 1:state

    PTE = [rand(1,dim)*5; rand(1,dim)*5];
    MUS = MUS + PTE;
    Datasets{i} = GenerateDataset(num, MUS, dim);
    
end

end

