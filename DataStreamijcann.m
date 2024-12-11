clc
clear

state = 15;
K = 5;
lr = 0.000002;
lro = 0.001;
rand('seed', 20201124);

data = importdata('ijcnnmat.txt');

data = data(1:49500,:);

Datasets = DivideData(DisOrder(data), state);

[vs_co2, vs_ogd, rs_co2, rs_ogd, OfflineACC] = CO2(Datasets, lr, lro, K);

DrawRegret(rs_co2, rs_ogd, 1000, state, 'ijcnn');
% print -depsc2 C:\experiment\MOOE\figures\ijcnnRegret.eps

DrawLoss(vs_co2, vs_ogd, 1000, state, 'ijcnn');
% print -depsc2 C:\experiment\MOOE\figures\ijcnnLoss.eps