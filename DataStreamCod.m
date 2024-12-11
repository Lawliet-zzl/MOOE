clc
clear

state = 15;
K = 5;
lr = 0.000005;
lro = 0.001;
rand('seed', 20201124);

data = importdata('cod-rnatmat.txt');
Datasets = DivideData(DisOrder(data), state);

[vs_co2, vs_ogd, rs_co2, rs_ogd, OfflineACC] = CO2(Datasets, lr, lro, K);

DrawRegret(rs_co2, rs_ogd, 1000, state, 'cod-rna');
% print -depsc2 C:\experiment\CO2\figures\codRegret.eps

DrawLoss(vs_co2, vs_ogd, 1000, state, 'cod-rna');
% print -depsc2 C:\experiment\CO2\figures\codLoss.eps