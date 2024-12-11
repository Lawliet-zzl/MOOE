clc
clear

% data = importdata('heartmat.txt');
% Datasets = DivideData(DisOrder(data), 3);

lr = 0.000001;
lro = 0.0001;
K = 5;
state = 15;
dim = 2;
rand('seed', 20201124);

Datasets = SyntheticDataset(state, 1000, dim);
[vs_co2, vs_ogd, rs_co2, rs_ogd, OfflineACC] = CO2(Datasets, lr, lro, K);

DrawSamples(Datasets)
% print -depsc2 C:\experiment\MOOE\figures\GeneratedSamples.eps

DrawRegret(rs_co2, rs_ogd, 1000, state, 'synthetic');
% print -depsc2 C:\experiment\MOOE\figures\syntheticRegret.eps

DrawLoss(vs_co2, vs_ogd, 1000, state, 'synthetic');
% print -depsc2 C:\experiment\MOOE\figures\syntheticLoss.eps