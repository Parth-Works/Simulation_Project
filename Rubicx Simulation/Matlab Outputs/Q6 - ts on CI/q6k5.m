clc;
clear all;
close all;

% impact of the average service time on the size of the confidence intervals.
% for k = 5   

%%       Initialisation     %%%

% lag1Corr
lag1Corr_Load = [];
lag1Corr_LossRatio = [];
lag1Corr_QueueRatio = [];

% CI 90 
R90_Load=[]; R90_LR=[]; R90_QR=[];

% CI 95
R95_Load=[]; R95_LR=[]; R95_QR=[];

% CI 99
R99_Load=[]; R99_LR=[]; R99_QR=[];

% mean
m_Load = [];
m_LossRatio = [];
m_QueueRatio = [];

%%   for k = 5 and Service-time = 40    %%%

load k5s40.mat

load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);

% Load

m_Load(1) = mean(load_1);
lag1Corr_Load(1) = autocorrelation(load_1)
[R90_Load(1), R95_Load(1), R99_Load(1)] = confidenceIntv(load_1)

% Loss Ratio

m_LossRatio(1) = mean(loss_ratio_1);
lag1Corr_LossRatio(1) = autocorrelation(loss_ratio_1)
[R90_LR(1), R95_LR(1), R99_LR(1)] = confidenceIntv(loss_ratio_1)

% Queue Ratio

m_QueueRatio(1)=mean(queue_ratio_1);
lag1Corr_QueueRatio(1) = autocorrelation(queue_ratio_1)
[R90_QR(1), R95_QR(1), R99_QR(1)] = confidenceIntv(queue_ratio_1)

%%%%%%%%%%

%%   for k = 5 and Service-time = 60    %%%

load k5s60.mat

load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);

% Load

m_Load(2) = mean(load_2);
lag1Corr_Load(2) = autocorrelation(load_2)
[R90_Load(2), R95_Load(2), R99_Load(2)] = confidenceIntv(load_2)

% Loss Ratio

m_LossRatio(2) = mean(loss_ratio_2);
lag1Corr_LossRatio(2) = autocorrelation(loss_ratio_2)
[R90_LR(2), R95_LR(2), R99_LR(2)] = confidenceIntv(loss_ratio_2)

% Queue Ratio

m_QueueRatio(2)=mean(queue_ratio_2);
lag1Corr_QueueRatio(2) = autocorrelation(queue_ratio_2)
[R90_QR(2), R95_QR(2), R99_QR(2)] = confidenceIntv(queue_ratio_2)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k5s80.mat

load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);

% Load

m_Load(3) = mean(load_3);
lag1Corr_Load(3) = autocorrelation(load_3)
[R90_Load(3), R95_Load(3), R99_Load(3)] = confidenceIntv(load_3)

% Loss Ratio

m_LossRatio(3) = mean(loss_ratio_3);
lag1Corr_LossRatio(3) = autocorrelation(loss_ratio_3)
[R90_LR(3), R95_LR(3), R99_LR(3)] = confidenceIntv(loss_ratio_3)

% Queue Ratio

m_QueueRatio(3)=mean(queue_ratio_3);
lag1Corr_QueueRatio(3) = autocorrelation(queue_ratio_3)
[R90_QR(3), R95_QR(3), R99_QR(3)] = confidenceIntv(queue_ratio_3)

%%%%%%%%%%

%%   for k = 5 and Service-time = 100    %%%

load k5s100.mat

load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);

% Load

m_Load(4) = mean(load_4);
lag1Corr_Load(4) = autocorrelation(load_4)
[R90_Load(4), R95_Load(4), R99_Load(4)] = confidenceIntv(load_4)

% Loss Ratio

m_LossRatio(4) = mean(loss_ratio_4);
lag1Corr_LossRatio(4) = autocorrelation(loss_ratio_4)
[R90_LR(4), R95_LR(4), R99_LR(4)] = confidenceIntv(loss_ratio_4)

% Queue Ratio

m_QueueRatio(4)=mean(queue_ratio_4);
lag1Corr_QueueRatio(4) = autocorrelation(queue_ratio_4)
[R90_QR(4), R95_QR(4), R99_QR(4)] = confidenceIntv(queue_ratio_4)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load k5s120.mat

load_5=SM(:,2);
loss_ratio_5=SM(:,3);
queue_ratio_5=SM(:,4);

% Load

m_Load(5) = mean(load_5);
lag1Corr_Load(5) = autocorrelation(load_5)
[R90_Load(5), R95_Load(5), R99_Load(5)] = confidenceIntv(load_5)

% Loss Ratio

m_LossRatio(5) = mean(loss_ratio_5);
lag1Corr_LossRatio(5) = autocorrelation(loss_ratio_5)
[R90_LR(5), R95_LR(5), R99_LR(5)] = confidenceIntv(loss_ratio_5)

% Queue Ratio

m_QueueRatio(5)=mean(queue_ratio_5);
lag1Corr_QueueRatio(5) = autocorrelation(queue_ratio_5)
[R90_QR(5), R95_QR(5), R99_QR(5)] = confidenceIntv(queue_ratio_5)

%%%%%%%%%%

%%   for k = 5 and Service-time = 150    %%%

load k5s150.mat

load_6=SM(:,2);
loss_ratio_6=SM(:,3);
queue_ratio_6=SM(:,4);

% Load

m_Load(6) = mean(load_6);
lag1Corr_Load(6) = autocorrelation(load_6)
[R90_Load(6), R95_Load(6), R99_Load(6)] = confidenceIntv(load_6)

% Loss Ratio

m_LossRatio(6) = mean(loss_ratio_6);
lag1Corr_LossRatio(6) = autocorrelation(loss_ratio_6)
[R90_LR(6), R95_LR(6), R99_LR(6)] = confidenceIntv(loss_ratio_6)

% Queue Ratio

m_QueueRatio(6)=mean(queue_ratio_6);
lag1Corr_QueueRatio(6) = autocorrelation(queue_ratio_6)
[R90_QR(6), R95_QR(6), R99_QR(6)] = confidenceIntv(queue_ratio_6)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%   Plotting    %%%

x=[40 60 80 100 120 150];
x = categorical({'40' '60' '80' '100' '120' '150'});
x = reordercats(x,{'40' '60' '80' '100' '120' '150'});

y1=R95_Load
y2=R95_LR;
y3=R95_QR;

figure;
plot(x,y1,'*-g','LineWidth',2);hold on;
plot(x,y2,'*-b','LineWidth',2);hold on;
plot(x,y3,'*-r','LineWidth',2);

xlabel('Service Time');
title('Effect of Avg Service Time on size(95% CI)')
legend('load','loss ratio','queueing ratio')
grid on;

% based on correlation

% y4=lag1Corr_Load % Load
% y5=lag1Corr_LossRatio % Loss Ratio 
% y6=lag1Corr_QueueRatio % Queue Ratio
% figure;
% plot(x,y4,'*-g','LineWidth',2); hold on;
% plot(x,y5,'*-r','LineWidth',2); hold on;
% plot(x,y6,'*-b','LineWidth',2);grid on;