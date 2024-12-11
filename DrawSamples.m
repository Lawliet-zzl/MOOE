function DrawSamples(Datasets)

figure
set(gcf,'Position',[0,0,1000,400])
Colors = [1 0.545454545454545 0; 0 0.181818181818182 1];

for i = 1:10
    subplot(2,5,i)
    D = Datasets{i};
    X = D(:,[1,2]);
    Y = D(:,3);
    
    hold on
    for j = 1:2
        subset = X(Y == j - 1,:);
        title("g = " + i,'FontSize',12);
        plot(subset(:,1),subset(:,2),...
            'LineStyle','none',...
            'Marker','.','MarkerSize',12,...
            'Color',Colors(j,:));
    end
    hold off
    
end

end

