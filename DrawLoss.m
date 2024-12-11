function DrawLoss(vco2, vogd, T, state, info)

Colors = [1 0.545454545454545 0; 0 0.181818181818182 1];

vogd = vogd(1:T,:);
vco2 = vco2(1:T,:);

values = [vogd(:,state), vco2(:,state)];

figure1 = figure;
axes1 = axes('Parent',figure1);


plot1 = plot(values, 'LineWidth',2);
set(plot1(1),'DisplayName','OGD', 'Color', Colors(1,:));
set(plot1(2),'DisplayName','MOOE', 'Color', Colors(2,:));

% Create ylabel
ylabel({'Loss'});

% Create xlabel
xlabel({'T'});

title(info);

legend1 = legend('show');
set(legend1,'FontSize',18, 'Location','best');
set(axes1,'FontSize',18);
end

