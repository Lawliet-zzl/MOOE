function Data = DisOrder(Data)

num = size(Data, 1);
Data = Data(randperm(num),:);

end

