clc;
clear all;
close all;

% Compare loss ratio, queuing ratio and load in the following cases:
% a) K = 0; b) K = 2; c) K = 10

%%       Initialisation     %%%

% lag1Corr
lag1Corr_Load0 = [];lag1Corr_Load2 = [];lag1Corr_Load5 = [];lag1Corr_Load10 = [];
lag1Corr_LossRatio0 = [];lag1Corr_LossRatio2 = [];lag1Corr_LossRatio5 = [];lag1Corr_LossRatio10 = [];
lag1Corr_QueueRatio0 = [];lag1Corr_QueueRatio2 = [];lag1Corr_QueueRatio5 = [];lag1Corr_QueueRatio10 = [];

% CI 90 
R90_LR0=[];R90_LR2=[];R90_LR5=[];R90_LR10=[];
R90_Load0=[];R90_Load2=[]; R90_Load5=[]; R90_Load10=[];
R90_QR0=[];R90_QR2=[];R90_QR5=[];R90_QR10=[];

% CI 95
R95_LR0=[];R95_LR2=[];R95_LR5=[];R95_LR10=[];
R95_Load0=[];R95_Load2=[]; R95_Load5=[]; R95_Load10=[];
R95_QR0=[];R95_QR2=[];R95_QR5=[];R95_QR10=[];

% CI 99
R99_LR0=[];R99_LR2=[];R99_LR5=[];R99_LR10=[];
R99_Load0=[];R99_Load2=[]; R99_Load5=[]; R99_Load10=[];
R99_QR0=[]; R99_QR2=[];R99_QR5=[]; R99_QR10=[];

% mean
m_LossRatio0 = [];m_LossRatio2 = [];m_LossRatio5 = [];m_LossRatio10 = [];
m_Load0 = [];m_Load2 = [];m_Load5 = [];m_Load10 = [];
m_QueueRatio0 = [];m_QueueRatio2 = [];m_QueueRatio5 = [];m_QueueRatio10 = [];


%%   for k = 0 and Service-time = 60    %%%

load k0s60.mat

load_k0s60=SM(:,2);
loss_ratio_k0s60=SM(:,3);
queue_ratio_k0s60=SM(:,4);

% Load

m_Load0(1) = mean(load_k0s60);
lag1Corr_Load0(1) = autocorrelation(load_k0s60)
[R90_Load0(1), R95_Load0(1), R99_Load0(1)] = AbsconfidenceIntv(load_k0s60)

% Loss Ratio

m_LossRatio0(1) = mean(loss_ratio_k0s60);
lag1Corr_LossRatio0(1) = autocorrelation(loss_ratio_k0s60)
[R90_LR0(1), R95_LR0(1), R99_LR0(1)] = AbsconfidenceIntv(loss_ratio_k0s60)

% Queue Ratio

m_QueueRatio0(1)=mean(queue_ratio_k0s60);
lag1Corr_QueueRatio0(1) = autocorrelation(queue_ratio_k0s60)
[R90_QR0(1), R95_QR0(1), R99_QR0(1)] = AbsconfidenceIntv(queue_ratio_k0s60)

%%%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load k0s80.mat

load_k0s80=SM(:,2);
loss_ratio_k0s80=SM(:,3);
queue_ratio_k0s80=SM(:,4);

% Load

m_Load0(2) = mean(load_k0s80);
lag1Corr_Load0(2) = autocorrelation(load_k0s80)
[R90_Load0(2), R95_Load0(2), R99_Load0(2)] = AbsconfidenceIntv(load_k0s80)

% Loss Ratio

m_LossRatio0(2) = mean(loss_ratio_k0s80);
lag1Corr_LossRatio0(2) = autocorrelation(loss_ratio_k0s80)
[R90_LR0(2), R95_LR0(2), R99_LR0(2)] = AbsconfidenceIntv(loss_ratio_k0s80)

% Queue Ratio

m_QueueRatio0(2)= mean(queue_ratio_k0s80);
lag1Corr_QueueRatio0(2) = autocorrelation(queue_ratio_k0s80)
[R90_QR0(2), R95_QR0(2), R99_QR0(2)] = AbsconfidenceIntv(queue_ratio_k0s80)

%%%%%%%%%%

%%   for k = 0 and Service-time = 100    %%%

load k0s100.mat

load_k0s100=SM(:,2);
loss_ratio_k0s100=SM(:,3);
queue_ratio_k0s100=SM(:,4);

% Load

m_Load0(3) = mean(load_k0s100);
lag1Corr_Load0(3) = autocorrelation(load_k0s100)
[R90_Load0(3), R95_Load0(3), R99_Load0(3)] = AbsconfidenceIntv(load_k0s100)

% Loss Ratio

m_LossRatio0(3) = mean(loss_ratio_k0s100);
lag1Corr_LossRatio0(3) = autocorrelation(loss_ratio_k0s100)
[R90_LR0(3), R95_LR0(3), R99_LR0(3)] = AbsconfidenceIntv(loss_ratio_k0s100)

% Queue Ratio

m_QueueRatio0(3)=mean(queue_ratio_k0s100);
lag1Corr_QueueRatio0(3) = autocorrelation(queue_ratio_k0s100)
[R90_QR0(3), R95_QR0(3), R99_QR0(3)] = AbsconfidenceIntv(queue_ratio_k0s100)

%%%%%%%%%%

%%   for k = 0 and Service-time = 120    %%%

load k0s120.mat

load_k0s120=SM(:,2);
loss_ratio_k0s120=SM(:,3);
queue_ratio_k0s120=SM(:,4);

% Load

m_Load0(4) = mean(load_k0s120);
lag1Corr_Load0(4) = autocorrelation(load_k0s120)
[R90_Load0(4), R95_Load0(4), R99_Load0(4)] = AbsconfidenceIntv(load_k0s120)

% Loss Ratio

m_LossRatio0(4) = mean(loss_ratio_k0s120);
lag1Corr_LossRatio0(4) = autocorrelation(loss_ratio_k0s120)
[R90_LR0(4), R95_LR0(4), R99_LR0(4)] = AbsconfidenceIntv(loss_ratio_k0s120)

% Queue Ratio

m_QueueRatio0(4)=mean(queue_ratio_k0s120);
lag1Corr_QueueRatio0(4) = autocorrelation(queue_ratio_k0s120)
[R90_QR0(4), R95_QR0(4), R99_QR0(4)] = AbsconfidenceIntv(queue_ratio_k0s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%    K = 2

%%   for k = 2 and Service-time = 60    %%%

load k2s60.mat

load_k2s60=SM(:,2);
loss_ratio_k2s60=SM(:,3);
queue_ratio_k2s60=SM(:,4);

% Load

m_Load2(1) = mean(load_k2s60);
lag1Corr_Load2(1) = autocorrelation(load_k2s60)
[R90_Load2(1), R95_Load2(1), R99_Load2(1)] = AbsconfidenceIntv(load_k2s60)

% Loss Ratio

m_LossRatio2(1) = mean(loss_ratio_k2s60);
lag1Corr_LossRatio2(1) = autocorrelation(loss_ratio_k2s60)
[R90_LR2(1), R95_LR2(1), R99_LR2(1)] = AbsconfidenceIntv(loss_ratio_k2s60)

% Queue Ratio

m_QueueRatio2(1)=mean(queue_ratio_k2s60);
lag1Corr_QueueRatio2(1) = autocorrelation(queue_ratio_k2s60)
[R90_QR2(1), R95_QR2(1), R99_QR2(1)] = AbsconfidenceIntv(queue_ratio_k2s60)

%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load k2s80.mat

load_k2s80=SM(:,2);
loss_ratio_k2s80=SM(:,3);
queue_ratio_k2s80=SM(:,4);

% Load

m_Load2(2) = mean(load_k2s80);
lag1Corr_Load2(2) = autocorrelation(load_k2s80)
[R90_Load2(2), R95_Load2(2), R99_Load2(2)] = AbsconfidenceIntv(load_k2s80)

% Loss Ratio

m_LossRatio2(2) = mean(loss_ratio_k2s80);
lag1Corr_LossRatio2(2) = autocorrelation(loss_ratio_k2s80)
[R90_LR2(2), R95_LR2(2), R99_LR2(2)] = AbsconfidenceIntv(loss_ratio_k2s80)

% Queue Ratio

m_QueueRatio2(2)= mean(queue_ratio_k2s80);
lag1Corr_QueueRatio2(2) = autocorrelation(queue_ratio_k2s80)
[R90_QR2(2), R95_QR2(2), R99_QR2(2)] = AbsconfidenceIntv(queue_ratio_k2s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 100    %%%

load k2s100.mat

load_k2s100=SM(:,2);
loss_ratio_k2s100=SM(:,3);
queue_ratio_k2s100=SM(:,4);

% Load

m_Load2(3) = mean(load_k2s100);
lag1Corr_Load2(3) = autocorrelation(load_k2s100)
[R90_Load2(3), R95_Load2(3), R99_Load2(3)] = AbsconfidenceIntv(load_k2s100)

% Loss Ratio

m_LossRatio2(3) = mean(loss_ratio_k2s100);
lag1Corr_LossRatio2(3) = autocorrelation(loss_ratio_k2s100)
[R90_LR2(3), R95_LR2(3), R99_LR2(3)] = AbsconfidenceIntv(loss_ratio_k2s100)

% Queue Ratio

m_QueueRatio2(3)=mean(queue_ratio_k2s100);
lag1Corr_QueueRatio2(3) = autocorrelation(queue_ratio_k2s100)
[R90_QR2(3), R95_QR2(3), R99_QR2(3)] = AbsconfidenceIntv(queue_ratio_k2s100)

%%%%%%%%%%

%%   for k = 2 and Service-time = 120    %%%

load k2s120.mat

load_k2s120=SM(:,2);
loss_ratio_k2s120=SM(:,3);
queue_ratio_k2s120=SM(:,4);

% Load

m_Load2(4) = mean(load_k2s120);
lag1Corr_Load2(4) = autocorrelation(load_k2s120)
[R90_Load2(4), R95_Load2(4), R99_Load2(4)] = AbsconfidenceIntv(load_k2s120)

% Loss Ratio

m_LossRatio2(4) = mean(loss_ratio_k2s120);
lag1Corr_LossRatio2(4) = autocorrelation(loss_ratio_k2s120)
[R90_LR2(4), R95_LR2(4), R99_LR2(4)] = AbsconfidenceIntv(loss_ratio_k2s120)

% Queue Ratio

m_QueueRatio2(4)=mean(queue_ratio_k2s120);
lag1Corr_QueueRatio2(4) = autocorrelation(queue_ratio_k2s120)
[R90_QR2(4), R95_QR2(4), R99_QR2(4)] = AbsconfidenceIntv(queue_ratio_k2s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    K = 5

%%   for k = 5 and Service-time = 60    %%%

load k5s60.mat

load_k5s60=SM(:,2);
loss_ratio_k5s60=SM(:,3);
queue_ratio_k5s60=SM(:,4);

% Load

m_Load5(1) = mean(load_k5s60);
lag1Corr_Load5(1) = autocorrelation(load_k5s60)
[R90_Load5(1), R95_Load5(1), R99_Load5(1)] = AbsconfidenceIntv(load_k5s60)

% Loss Ratio

m_LossRatio5(1) = mean(loss_ratio_k5s60);
lag1Corr_LossRatio5(1) = autocorrelation(loss_ratio_k5s60)
[R90_LR5(1), R95_LR5(1), R99_LR5(1)] = AbsconfidenceIntv(loss_ratio_k5s60)

% Queue Ratio

m_QueueRatio5(1)=mean(queue_ratio_k5s60);
lag1Corr_QueueRatio5(1) = autocorrelation(queue_ratio_k5s60)
[R90_QR5(1), R95_QR5(1), R99_QR5(1)] = AbsconfidenceIntv(queue_ratio_k5s60)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k5s80.mat

load_k5s80=SM(:,2);
loss_ratio_k5s80=SM(:,3);
queue_ratio_k5s80=SM(:,4);

% Load

m_Load5(2) = mean(load_k5s80);
lag1Corr_Load5(2) = autocorrelation(load_k5s80)
[R90_Load5(2), R95_Load5(2), R99_Load5(2)] = AbsconfidenceIntv(load_k5s80)

% Loss Ratio

m_LossRatio5(2) = mean(loss_ratio_k5s80);
lag1Corr_LossRatio5(2) = autocorrelation(loss_ratio_k5s80)
[R90_LR5(2), R95_LR5(2), R99_LR5(2)] = AbsconfidenceIntv(loss_ratio_k5s80)

% Queue Ratio

m_QueueRatio5(2)= mean(queue_ratio_k5s80);
lag1Corr_QueueRatio5(2) = autocorrelation(queue_ratio_k5s80)
[R90_QR5(2), R95_QR5(2), R99_QR5(2)] = AbsconfidenceIntv(queue_ratio_k5s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 100    %%%

load k5s100.mat

load_k5s100=SM(:,2);
loss_ratio_k5s100=SM(:,3);
queue_ratio_k5s100=SM(:,4);

% Load

m_Load5(3) = mean(load_k5s100);
lag1Corr_Load5(3) = autocorrelation(load_k5s100)
[R90_Load5(3), R95_Load5(3), R99_Load5(3)] = AbsconfidenceIntv(load_k5s100)

% Loss Ratio

m_LossRatio5(3) = mean(loss_ratio_k5s100);
lag1Corr_LossRatio5(3) = autocorrelation(loss_ratio_k5s100)
[R90_LR5(3), R95_LR5(3), R99_LR5(3)] = AbsconfidenceIntv(loss_ratio_k5s100)

% Queue Ratio

m_QueueRatio5(3)=mean(queue_ratio_k5s100);
lag1Corr_QueueRatio5(3) = autocorrelation(queue_ratio_k5s100)
[R90_QR5(3), R95_QR5(3), R99_QR5(3)] = AbsconfidenceIntv(queue_ratio_k5s100)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load k5s120.mat

load_k5s120=SM(:,2);
loss_ratio_k5s120=SM(:,3);
queue_ratio_k5s120=SM(:,4);

% Load

m_Load5(4) = mean(load_k5s120);
lag1Corr_Load5(4) = autocorrelation(load_k5s120)
[R90_Load5(4), R95_Load5(4), R99_Load5(4)] = AbsconfidenceIntv(load_k5s120)

% Loss Ratio

m_LossRatio5(4) = mean(loss_ratio_k5s120);
lag1Corr_LossRatio5(4) = autocorrelation(loss_ratio_k5s120)
[R90_LR5(4), R95_LR5(4), R99_LR5(4)] = AbsconfidenceIntv(loss_ratio_k5s120)

% Queue Ratio

m_QueueRatio5(4)=mean(queue_ratio_k5s120);
lag1Corr_QueueRatio5(4) = autocorrelation(queue_ratio_k5s120)
[R90_QR5(4), R95_QR5(4), R99_QR5(4)] = AbsconfidenceIntv(queue_ratio_k5s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  K = 10

%%   for k = 10 and Service-time = 60    %%%

load k10s60.mat

load_k10s60=SM(:,2);
loss_ratio_k10s60=SM(:,3);
queue_ratio_k10s60=SM(:,4);

% Load

m_Load10(1) = mean(load_k10s60);
lag1Corr_Load10(1) = autocorrelation(load_k10s60)
[R90_Load10(1), R95_Load10(1), R99_Load10(1)] = AbsconfidenceIntv(load_k10s60)

% Loss Ratio

m_LossRatio10(1) = mean(loss_ratio_k10s60);
lag1Corr_LossRatio10(1) = autocorrelation(loss_ratio_k10s60)
[R90_LR10(1), R95_LR10(1), R99_LR10(1)] = AbsconfidenceIntv(loss_ratio_k10s60)

% Queue Ratio

m_QueueRatio10(1)=mean(queue_ratio_k10s60);
lag1Corr_QueueRatio10(1) = autocorrelation(queue_ratio_k10s60)
[R90_QR10(1), R95_QR10(1), R99_QR10(1)] = AbsconfidenceIntv(queue_ratio_k10s60)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load k10s80.mat

load_k10s80=SM(:,2);
loss_ratio_k10s80=SM(:,3);
queue_ratio_k10s80=SM(:,4);

% Load

m_Load10(2) = mean(load_k10s80);
lag1Corr_Load10(2) = autocorrelation(load_k10s80)
[R90_Load10(2), R95_Load10(2), R99_Load10(2)] = AbsconfidenceIntv(load_k10s80)

% Loss Ratio

m_LossRatio10(2) = mean(loss_ratio_k10s80);
lag1Corr_LossRatio10(2) = autocorrelation(loss_ratio_k10s80)
[R90_LR10(2), R95_LR10(2), R99_LR10(2)] = AbsconfidenceIntv(loss_ratio_k10s80)

% Queue Ratio

m_QueueRatio10(2)= mean(queue_ratio_k10s80);
lag1Corr_QueueRatio10(2) = autocorrelation(queue_ratio_k10s80)
[R90_QR10(2), R95_QR10(2), R99_QR10(2)] = AbsconfidenceIntv(queue_ratio_k10s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 100    %%%

load k10s100.mat

load_k10s100=SM(:,2);
loss_ratio_k10s100=SM(:,3);
queue_ratio_k10s100=SM(:,4);

% Load

m_Load10(3) = mean(load_k10s100);
lag1Corr_Load10(3) = autocorrelation(load_k10s100)
[R90_Load10(3), R95_Load10(3), R99_Load10(3)] = AbsconfidenceIntv(load_k10s100)

% Loss Ratio

m_LossRatio10(3) = mean(loss_ratio_k10s100);
lag1Corr_LossRatio10(3) = autocorrelation(loss_ratio_k10s100)
[R90_LR10(3), R95_LR10(3), R99_LR10(3)] = AbsconfidenceIntv(loss_ratio_k10s100)

% Queue Ratio

m_QueueRatio10(3)=mean(queue_ratio_k10s100);
lag1Corr_QueueRatio10(3) = autocorrelation(queue_ratio_k10s100)
[R90_QR10(3), R95_QR10(3), R99_QR10(3)] = AbsconfidenceIntv(queue_ratio_k10s100)

%%%%%%%%%%

%%   for k = 10 and Service-time = 120    %%%

load k10s120.mat

load_k10s120=SM(:,2);
loss_ratio_k10s120=SM(:,3);
queue_ratio_k10s120=SM(:,4);

% Load

m_Load10(4) = mean(load_k10s120);
lag1Corr_Load10(4) = autocorrelation(load_k10s120)
[R90_Load10(4), R95_Load10(4), R99_Load10(4)] = AbsconfidenceIntv(load_k10s120)

% Loss Ratio

m_LossRatio10(4) = mean(loss_ratio_k10s120);
lag1Corr_LossRatio10(4) = autocorrelation(loss_ratio_k10s120)
[R90_LR10(4), R95_LR10(4), R99_LR10(4)] = AbsconfidenceIntv(loss_ratio_k10s120)

% Queue Ratio

m_QueueRatio10(4)=mean(queue_ratio_k10s120);
lag1Corr_QueueRatio10(4) = autocorrelation(queue_ratio_k10s120)
[R90_QR10(4), R95_QR10(4), R99_QR10(4)] = AbsconfidenceIntv(queue_ratio_k10s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Plotting    %%%

x=[0 2 5 10];
x = categorical({'0' '2' '5' '10'});
x = reordercats(x,{'0' '2' '5' '10'});

y1=[m_Load0(1),m_Load2(1),m_Load5(1),m_Load10(1)];
y2=[m_LossRatio0(1),m_LossRatio2(1),m_LossRatio5(1),m_LossRatio10(1)];
y3=[m_QueueRatio0(1),m_QueueRatio2(1),m_QueueRatio5(1),m_QueueRatio10(1)];

y4=[m_Load0(3),m_Load2(3),m_Load5(3),m_Load10(3)];
y5=[m_LossRatio0(3),m_LossRatio2(3),m_LossRatio5(3),m_LossRatio10(3)];
y6=[m_QueueRatio0(3),m_QueueRatio2(3),m_QueueRatio5(3),m_QueueRatio10(3)];

y7=[m_Load0(4),m_Load2(4),m_Load5(4),m_Load10(4)];
y8=[m_LossRatio0(4),m_LossRatio2(4),m_LossRatio5(4),m_LossRatio10(4)];
y9=[m_QueueRatio0(4),m_QueueRatio2(4),m_QueueRatio5(4),m_QueueRatio10(4)];


figure;

plot(x,y1,'*-g','LineWidth',2);hold on;
plot(x,y2,'*-b','LineWidth',2);hold on;
plot(x,y3,'*-r','LineWidth',2);

xlabel('Queue Capacity');
title('Effect of Queue Capacity for service time = 60')
legend('Load','LossRatio','QueueRatio')
grid on;

figure;

plot(x,y4,'*-g','LineWidth',2);hold on;
plot(x,y5,'*-b','LineWidth',2);hold on;
plot(x,y6,'*-r','LineWidth',2);


xlabel('Queue Capacity');
title('Effect of Queue Capacity for service time=100')
legend('Load','LossRatio','QueueRatio')
grid on;

figure;

plot(x,y7,'*-g','LineWidth',2);hold on;
plot(x,y8,'*-b','LineWidth',2);hold on;
plot(x,y9,'*-r','LineWidth',2);


xlabel('Queue Capacity');
title('Effect of Queue Capacity for service time=120')
legend('Load','LossRatio','QueueRatio')
grid on;
