clc;
clear all;
close all;

% Compare the loss ratios for the M/M/K’’=10 system with those obtained for 
% the M/D/K’’ and D/M/K’’ systems at 80 % load, and motivate your observations. 
% (Why is the D/D/K’’ case trivial?)

%%       Initialisation     %%%

% lag1Corr
lag1Corr_LossRatio0 = [];lag1Corr_LossRatio2 = [];lag1Corr_LossRatio5 = [];lag1Corr_LossRatio10 = [];

% CI 90 
R90_LR0=[];R90_LR2=[];R90_LR5=[];R90_LR10=[];

% CI 95
R95_LR0=[];R95_LR2=[];R95_LR5=[];R95_LR10=[];

% CI 99
R99_LR0=[];R99_LR2=[];R99_LR5=[];R99_LR10=[];

% mean
m_LossRatio0 = [];m_LossRatio2 = [];m_LossRatio5 = [];m_LossRatio10 = [];

%%                                 D/M/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load dm1k0s80.mat

loss_ratio_dm1k0s80=SM(:,3);
queue_ratio_dm1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(1) = mean(loss_ratio_dm1k0s80);
lag1Corr_LossRatio0(1) = autocorrelation(loss_ratio_dm1k0s80)
[R90_LR0(1), R95_LR0(1), R99_LR0(1)] = confidenceIntv(loss_ratio_dm1k0s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load dm1k2s80.mat

loss_ratio_dm1k2s80=SM(:,3);
queue_ratio_dm1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(1) = mean(loss_ratio_dm1k2s80);
lag1Corr_LossRatio2(1) = autocorrelation(loss_ratio_dm1k2s80)
[R90_LR2(1), R95_LR2(1), R99_LR2(1)] = confidenceIntv(loss_ratio_dm1k2s80)

%%%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load dm1k5s80.mat

loss_ratio_dm1k5s80=SM(:,3);
queue_ratio_dm1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(1) = mean(loss_ratio_dm1k5s80);
lag1Corr_LossRatio5(1) = autocorrelation(loss_ratio_dm1k5s80)
[R90_LR5(1), R95_LR5(1), R99_LR5(1)] = confidenceIntv(loss_ratio_dm1k5s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load dm1k10s80.mat

loss_ratio_dm1k10s80=SM(:,3);
queue_ratio_dm1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(1) = mean(loss_ratio_dm1k10s80);
lag1Corr_LossRatio10(1) = autocorrelation(loss_ratio_dm1k10s80)
[R90_LR10(1), R95_LR10(1), R99_LR10(1)] = confidenceIntv(loss_ratio_dm1k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%                                 M/D/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load md1k0s80.mat

loss_ratio_md1k0s80=SM(:,3);
queue_ratio_md1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(2) = mean(loss_ratio_md1k0s80);
lag1Corr_LossRatio0(2) = autocorrelation(loss_ratio_md1k0s80)
[R90_LR0(2), R95_LR0(2), R99_LR0(2)] = confidenceIntv(loss_ratio_md1k0s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load md1k2s80.mat

loss_ratio_md1k2s80=SM(:,3);
queue_ratio_md1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(2) = mean(loss_ratio_md1k2s80);
lag1Corr_LossRatio2(2) = autocorrelation(loss_ratio_md1k2s80)
[R90_LR2(2), R95_LR2(2), R99_LR2(2)] = confidenceIntv(loss_ratio_md1k2s80)

%%%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load md1k5s80.mat

loss_ratio_md1k5s80=SM(:,3);
queue_ratio_md1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(2) = mean(loss_ratio_md1k5s80);
lag1Corr_LossRatio5(2) = autocorrelation(loss_ratio_md1k5s80)
[R90_LR5(2), R95_LR5(2), R99_LR5(2)] = confidenceIntv(loss_ratio_md1k5s80)

%%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load md1k10s80.mat

loss_ratio_md1k10s80=SM(:,3);
queue_ratio_md1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(2) = mean(loss_ratio_md1k10s80);
lag1Corr_LossRatio10(2) = autocorrelation(loss_ratio_md1k10s80)
[R90_LR10(2), R95_LR10(2), R99_LR10(2)] = confidenceIntv(loss_ratio_md1k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%                M/M/1 System          %%%%%%%%%%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load k0s80.mat

load_k0s80=SM(:,2);
loss_ratio_k0s80=SM(:,3);
queue_ratio_k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(3) = mean(loss_ratio_k0s80);
lag1Corr_LossRatio0(3) = autocorrelation(loss_ratio_k0s80)
[R90_LR0(3), R95_LR0(3), R99_LR0(3)] = confidenceIntv(loss_ratio_k0s80)

%%%%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load k2s80.mat

load_k2s80=SM(:,2);
loss_ratio_k2s80=SM(:,3);
queue_ratio_k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(3) = mean(loss_ratio_k2s80);
lag1Corr_LossRatio2(3) = autocorrelation(loss_ratio_k2s80)
[R90_LR2(3), R95_LR2(3), R99_LR2(3)] = confidenceIntv(loss_ratio_k2s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k5s80.mat

load_k5s80=SM(:,2);
loss_ratio_k5s80=SM(:,3);
queue_ratio_k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(3) = mean(loss_ratio_k5s80);
lag1Corr_LossRatio5(3) = autocorrelation(loss_ratio_k5s80)
[R90_LR5(3), R95_LR5(3), R99_LR5(3)] = confidenceIntv(loss_ratio_k5s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load k10s80.mat

load_k10s80=SM(:,2);
loss_ratio_k10s80=SM(:,3);
queue_ratio_k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(3) = mean(loss_ratio_k10s80);
lag1Corr_LossRatio10(3) = autocorrelation(loss_ratio_k10s80)
[R90_LR10(3), R95_LR10(3), R99_LR10(3)] = confidenceIntv(loss_ratio_k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%   Plotting    %%%

x=[0 2 5 10];
x = categorical({'0' '2' '5' '10'});
x = reordercats(x,{'0' '2' '5' '10'});

y1=[m_LossRatio0(1),m_LossRatio2(1),m_LossRatio5(1),m_LossRatio10(1)];  %  dm1 & s=80
y2=[m_LossRatio0(2),m_LossRatio2(2),m_LossRatio5(2),m_LossRatio10(2)];  %  um1 & s=80
y3=[m_LossRatio0(3),m_LossRatio2(3),m_LossRatio5(3),m_LossRatio10(3)];  %  dm1 & s=120
%y4=[m_LossRatio0(4),m_LossRatio2(4),m_LossRatio5(4),m_LossRatio10(4)];  %  um1 & s=120
y1new = [y1;y2;y3];

figure;
bar(x,y1new);
%plot(x,y1,'*-b','LineWidth',2);hold on;
%plot(x,y2,'*-r','LineWidth',2);hold on;
%plot(x,y3,'*-b','LineWidth',2);

xlabel('Queue Capacity');
title('Effect on loss for service time = 80')
legend('D/M/1','M/D/1','M/M/1')
grid on;

%  Autocorrelation

y4=[lag1Corr_LossRatio0(1),lag1Corr_LossRatio2(1),lag1Corr_LossRatio5(1),lag1Corr_LossRatio10(1)];  %  dm1 & s=80
y5=[lag1Corr_LossRatio0(2),lag1Corr_LossRatio2(2),lag1Corr_LossRatio5(2),lag1Corr_LossRatio10(2)];  %  um1 & s=80
y6=[lag1Corr_LossRatio0(3),lag1Corr_LossRatio2(3),lag1Corr_LossRatio5(3),lag1Corr_LossRatio10(3)]; %  dm1 & s=120


y2new=[y4;y5;y6];

figure;
bar(x,y2new)
%plot(x,y4,'*-b','LineWidth',2);hold on;
%plot(x,y5,'*-r','LineWidth',2);hold on;
%plot(x,y6,'*-r','LineWidth',2);

xlabel('Queue Capacity');
title('Effect on loss using Autocorrelation for service time = 80')
legend('D/M/1','M/D/1','M/M/1')
grid on;

y7=[R95_LR0;R95_LR2;R95_LR5;R95_LR10];
figure;
bar(x,y7)
%plot(x,y4,'*-b','LineWidth',2);hold on;
%plot(x,y5,'*-r','LineWidth',2);hold on;
%plot(x,y6,'*-r','LineWidth',2);

xlabel('Queue Capacity');
title('Effect on loss using 95% CI for service time = 80')
legend('D/M/1','M/D/1','M/M/1')
grid on;
