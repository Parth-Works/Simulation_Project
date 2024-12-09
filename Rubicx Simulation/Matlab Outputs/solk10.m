clc;
clear all;
%close all;

%  the impact of the size of loss ratio on the absolute sizes of the confidence intervals

%%       Initialisation     %%%

% lag1Corr
lag1Corr_LossRatio10 = [];


% CI 90 
R90_LR10=[];

% CI 95
R95_LR10=[];

% CI 99
R99_LR10=[];

% mean
m_LossRatio10 = [];

%%   for k = 5 and Service-time = 40    %%%

load k10s40.mat

loss_ratio_k10s40=SM(:,3);

% Loss Ratio

m_LossRatio10(1) = mean(loss_ratio_k10s40);
lag1Corr_LossRatio10(1) = autocorrelation(loss_ratio_k10s40)
[R90_LR10(1), R95_LR10(1), R99_LR10(1)] = AbsconfidenceIntv(loss_ratio_k10s40)

%%%%%%%%%%

%%   for k = 5 and Service-time = 60    %%%

load k10s60.mat

loss_ratio_k10s60=SM(:,3);

% Loss Ratio

m_LossRatio10(2) = mean(loss_ratio_k10s60);
lag1Corr_LossRatio10(2) = autocorrelation(loss_ratio_k10s60)
[R90_LR10(2), R95_LR10(2), R99_LR10(2)] = AbsconfidenceIntv(loss_ratio_k10s60)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k10s80.mat

loss_ratio_k10s80=SM(:,3);

% Loss Ratio

m_LossRatio10(3) = mean(loss_ratio_k10s80);
lag1Corr_LossRatio10(3) = autocorrelation(loss_ratio_k10s80)
[R90_LR10(3), R95_LR10(3), R99_LR10(3)] = AbsconfidenceIntv(loss_ratio_k10s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 100    %%%

load k10s100.mat

loss_ratio_k10s100=SM(:,3);

% Loss Ratio

m_LossRatio10(4) = mean(loss_ratio_k10s100);
lag1Corr_LossRatio10(4) = autocorrelation(loss_ratio_k10s100)
[R90_LR10(4), R95_LR10(4), R99_LR10(4)] = AbsconfidenceIntv(loss_ratio_k10s100)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load k10s120.mat

loss_ratio_k10s120=SM(:,3);

% Loss Ratio

m_LossRatio10(5) = mean(loss_ratio_k10s120);
lag1Corr_LossRatio10(5) = autocorrelation(loss_ratio_k10s120)
[R90_LR10(5), R95_LR10(5), R99_LR10(5)] = AbsconfidenceIntv(loss_ratio_k10s120)

%%%%%%%%%%

%%   for k = 5 and Service-time = 150    %%%

load k10s150.mat

loss_ratio_k10s150=SM(:,3);

% Loss Ratio

m_LossRatio10(6) = mean(loss_ratio_k10s150);
lag1Corr_LossRatio10(6) = autocorrelation(loss_ratio_k10s150)
[R90_LR10(6), R95_LR10(6), R99_LR10(6)] = AbsconfidenceIntv(loss_ratio_k10s150)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%   Plotting    %%%

x=[40 60 80 100 120 150];
x = categorical({'40' '60' '80' '100' '120' '150'});
x = reordercats(x,{'40' '60' '80' '100' '120' '150'});

y1=m_Load;
y2=m_LossRatio;
y3=m_QueueRatio;

figure;
%plot(x,y1,'*-g','LineWidth',2);hold on;
%legend('load') %title('Effect of Avg Service Time on Load');

plot(x,y2,'*-b','LineWidth',2);hold on;
%legend('loss ratio') %title('Effect of Avg Service Time on Loss Ratio ')

%plot(x,y3,'*-r','LineWidth',2);
%legend('queueing ratio') %title('Effect of Avg Service Time on Queue Ratio');

xlabel('Service Time');
title('Effect of Loss ratio on Abs. CI')
%legend('load','loss ratio','queueing ratio')
grid on;

% based on correlation

% y4=lag1Corr_Load % Load
% y5=lag1Corr_LossRatio % Loss Ratio 
% y6=lag1Corr_QueueRatio % Queue Ratio
% figure;
% plot(x,y4,'*-g','LineWidth',2); hold on;
% plot(x,y5,'*-r','LineWidth',2); hold on;
% plot(x,y6,'*-b','LineWidth',2);grid on;