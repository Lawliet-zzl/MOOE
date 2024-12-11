function DATA = GenerateDataset(num, MUS, dim)

DATA1 = GenerateSamples(MUS(1,:), ones(1,dim), num/2, 0);
DATA2 = GenerateSamples(MUS(2,:), ones(1,dim), num/2, 1);

DATA = [DATA1; DATA2];

DATA = DATA(randperm(num),:);

end

