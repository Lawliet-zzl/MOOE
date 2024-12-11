function DrawK

x = [5,10,15,20,25,30,35];
y = [78.4,82.3,85.4,88.6,90.3,90.4,90.3];

figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(x,y,'MarkerFaceColor',[0 0.447058826684952 0.74117648601532],...
    'MarkerSize',8,...
    'Marker','o',...
    'LineWidth',3);

% Create ylabel
ylabel({'Accuracy'});

% Create xlabel
xlabel({'K_{max}'});

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',14,'XGrid','on','YGrid','on');

% print -depsc2 E:\experiment\MOOE\figures\CO2PARA.eps
end

