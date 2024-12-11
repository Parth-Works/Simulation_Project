clc;
clear all;
close all;

% Discuss the impact of the type of the server process (M, D, 1) and (M, U,1) on loss.

%%       Initialisation     %%%

% lag1Corr
lag1Corr_LossRatio0 = [];lag1Corr_LossRatio2 = [];lag1Corr_LossRatio5 = [];lag1Corr_LossRatio10 = [];
lag1Corr_QueueRatio0 = [];lag1Corr_QueueRatio2 = [];lag1Corr_QueueRatio5 = [];lag1Corr_QueueRatio10 = [];

% CI 90 
R90_LR0=[];R90_LR2=[];R90_LR5=[];R90_LR10=[];
R90_QR0=[];R90_QR2=[];R90_QR5=[];R90_QR10=[];

% CI 95
R95_LR0=[];R95_LR2=[];R95_LR5=[];R95_LR10=[];
R95_QR0=[];R95_QR2=[];R95_QR5=[];R95_QR10=[];

% CI 99
R99_LR0=[];R99_LR2=[];R99_LR5=[];R99_LR10=[];
R99_QR0=[]; R99_QR2=[];R99_QR5=[]; R99_QR10=[];

% mean
m_LossRatio0 = [];m_LossRatio2 = [];m_LossRatio5 = [];m_LossRatio10 = [];
m_QueueRatio0 = [];m_QueueRatio2 = [];m_QueueRatio5 = [];m_QueueRatio10 = [];

%%                                 M/D/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load md1k0s80.mat

loss_ratio_md1k0s80=SM(:,3);
queue_ratio_md1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(1) = mean(loss_ratio_md1k0s80);
lag1Corr_LossRatio0(1) = autocorrelation(loss_ratio_md1k0s80)
[R90_LR0(1), R95_LR0(1), R99_LR0(1)] = confidenceIntv(loss_ratio_md1k0s80)

% Queue Ratio

m_QueueRatio0(1)=mean(queue_ratio_md1k0s80);
lag1Corr_QueueRatio0(1) = autocorrelation(queue_ratio_md1k0s80)
[R90_QR0(1), R95_QR0(1), R99_QR0(1)] = confidenceIntv(queue_ratio_md1k0s80)

%%%%%%%%%%

%%   for k = 0 and Service-time = 120    %%%

load md1k0s120.mat

loss_ratio_md1k0s120=SM(:,3);
queue_ratio_md1k0s120=SM(:,4);

% Loss Ratio

m_LossRatio0(2) = mean(loss_ratio_md1k0s120);
lag1Corr_LossRatio0(2) = autocorrelation(loss_ratio_md1k0s120)
[R90_LR0(2), R95_LR0(2), R99_LR0(2)] = confidenceIntv(loss_ratio_md1k0s120)

% Queue Ratio

m_QueueRatio0(2)= mean(queue_ratio_md1k0s120);
lag1Corr_QueueRatio0(2) = autocorrelation(queue_ratio_md1k0s120)
[R90_QR0(2), R95_QR0(2), R99_QR0(2)] = confidenceIntv(queue_ratio_md1k0s120)

%%%%%%%%%%

%%    K = 2

%%   for k = 2 and Service-time = 80    %%%

load md1k2s80.mat

loss_ratio_md1k2s80=SM(:,3);
queue_ratio_md1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(1) = mean(loss_ratio_md1k2s80);
lag1Corr_LossRatio2(1) = autocorrelation(loss_ratio_md1k2s80)
[R90_LR2(1), R95_LR2(1), R99_LR2(1)] = confidenceIntv(loss_ratio_md1k2s80)

% Queue Ratio

m_QueueRatio2(1)=mean(queue_ratio_md1k2s80);
lag1Corr_QueueRatio2(1) = autocorrelation(queue_ratio_md1k2s80)
[R90_QR2(1), R95_QR2(1), R99_QR2(1)] = confidenceIntv(queue_ratio_md1k2s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 120    %%%

load md1k2s120.mat

loss_ratio_md1k2s120=SM(:,3);
queue_ratio_md1k2s120=SM(:,4);

% Loss Ratio

m_LossRatio2(2) = mean(loss_ratio_md1k2s120);
lag1Corr_LossRatio2(2) = autocorrelation(loss_ratio_md1k2s120)
[R90_LR2(2), R95_LR2(2), R99_LR2(2)] = confidenceIntv(loss_ratio_md1k2s120)

% Queue Ratio

m_QueueRatio2(2)= mean(queue_ratio_md1k2s120);
lag1Corr_QueueRatio2(2) = autocorrelation(queue_ratio_md1k2s120)
[R90_QR2(2), R95_QR2(2), R99_QR2(2)] = confidenceIntv(queue_ratio_md1k2s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    K = 5

%%   for k = 5 and Service-time = 80    %%%

load md1k5s80.mat

loss_ratio_md1k5s80=SM(:,3);
queue_ratio_md1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(1) = mean(loss_ratio_md1k5s80);
lag1Corr_LossRatio5(1) = autocorrelation(loss_ratio_md1k5s80)
[R90_LR5(1), R95_LR5(1), R99_LR5(1)] = confidenceIntv(loss_ratio_md1k5s80)

% Queue Ratio

m_QueueRatio5(1)=mean(queue_ratio_md1k5s80);
lag1Corr_QueueRatio5(1) = autocorrelation(queue_ratio_md1k5s80)
[R90_QR5(1), R95_QR5(1), R99_QR5(1)] = confidenceIntv(queue_ratio_md1k5s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load md1k5s120.mat

loss_ratio_md1k5s120=SM(:,3);
queue_ratio_md1k5s120=SM(:,4);

% Loss Ratio

m_LossRatio5(2) = mean(loss_ratio_md1k5s120);
lag1Corr_LossRatio5(2) = autocorrelation(loss_ratio_md1k5s120)
[R90_LR5(2), R95_LR5(2), R99_LR5(2)] = confidenceIntv(loss_ratio_md1k5s120)

% Queue Ratio

m_QueueRatio5(2)= mean(queue_ratio_md1k5s120);
lag1Corr_QueueRatio5(2) = autocorrelation(queue_ratio_md1k5s120)
[R90_QR5(2), R95_QR5(2), R99_QR5(2)] = confidenceIntv(queue_ratio_md1k5s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  K = 10

%%   for k = 10 and Service-time = 80    %%%

load md1k10s80.mat

loss_ratio_md1k10s80=SM(:,3);
queue_ratio_md1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(1) = mean(loss_ratio_md1k10s80);
lag1Corr_LossRatio10(1) = autocorrelation(loss_ratio_md1k10s80)
[R90_LR10(1), R95_LR10(1), R99_LR10(1)] = confidenceIntv(loss_ratio_md1k10s80)

% Queue Ratio

m_QueueRatio10(1)=mean(queue_ratio_md1k10s80);
lag1Corr_QueueRatio10(1) = autocorrelation(queue_ratio_md1k10s80)
[R90_QR10(1), R95_QR10(1), R99_QR10(1)] = confidenceIntv(queue_ratio_md1k10s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 120    %%%

load md1k10s120.mat

loss_ratio_md1k10s120=SM(:,3);
queue_ratio_md1k10s120=SM(:,4);

% Loss Ratio

m_LossRatio10(2) = mean(loss_ratio_md1k10s120);
lag1Corr_LossRatio10(2) = autocorrelation(loss_ratio_md1k10s120)
[R90_LR10(2), R95_LR10(2), R99_LR10(2)] = confidenceIntv(loss_ratio_md1k10s120)

% Queue Ratio

m_QueueRatio10(2)= mean(queue_ratio_md1k10s120);
lag1Corr_QueueRatio10(2) = autocorrelation(queue_ratio_md1k10s120)
[R90_QR10(2), R95_QR10(2), R99_QR10(2)] = confidenceIntv(queue_ratio_md1k10s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%                                 M/U/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load mu1k0s80.mat

loss_ratio_mu1k0s80=SM(:,3);
queue_ratio_mu1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(3) = mean(loss_ratio_mu1k0s80);
lag1Corr_LossRatio0(3) = autocorrelation(loss_ratio_mu1k0s80)
[R90_LR0(3), R95_LR0(3), R99_LR0(3)] = confidenceIntv(loss_ratio_mu1k0s80)

% Queue Ratio

m_QueueRatio0(3)=mean(queue_ratio_mu1k0s80);
lag1Corr_QueueRatio0(3) = autocorrelation(queue_ratio_mu1k0s80)
[R90_QR0(3), R95_QR0(3), R99_QR0(3)] = confidenceIntv(queue_ratio_mu1k0s80)

%%%%%%%%%%

%%   for k = 0 and Service-time = 120    %%%

load mu1k0s120.mat

loss_ratio_mu1k0s120=SM(:,3);
queue_ratio_mu1k0s120=SM(:,4);

% Loss Ratio

m_LossRatio0(4) = mean(loss_ratio_mu1k0s120);
lag1Corr_LossRatio0(4) = autocorrelation(loss_ratio_mu1k0s120)
[R90_LR0(4), R95_LR0(4), R99_LR0(4)] = confidenceIntv(loss_ratio_mu1k0s120)

% Queue Ratio

m_QueueRatio0(4)= mean(queue_ratio_mu1k0s120);
lag1Corr_QueueRatio0(4) = autocorrelation(queue_ratio_mu1k0s120)
[R90_QR0(4), R95_QR0(4), R99_QR0(4)] = confidenceIntv(queue_ratio_mu1k0s120)

%%%%%%%%%%

%%    K = 2

%%   for k = 2 and Service-time = 80    %%%

load mu1k2s80.mat

loss_ratio_mu1k2s80=SM(:,3);
queue_ratio_mu1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(3) = mean(loss_ratio_mu1k2s80);
lag1Corr_LossRatio2(3) = autocorrelation(loss_ratio_mu1k2s80)
[R90_LR2(3), R95_LR2(3), R99_LR2(3)] = confidenceIntv(loss_ratio_mu1k2s80)

% Queue Ratio

m_QueueRatio2(3)=mean(queue_ratio_mu1k2s80);
lag1Corr_QueueRatio2(3) = autocorrelation(queue_ratio_mu1k2s80)
[R90_QR2(3), R95_QR2(3), R99_QR2(3)] = confidenceIntv(queue_ratio_mu1k2s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 120    %%%

load mu1k2s120.mat

loss_ratio_mu1k2s120=SM(:,3);
queue_ratio_mu1k2s120=SM(:,4);

% Loss Ratio

m_LossRatio2(4) = mean(loss_ratio_mu1k2s120);
lag1Corr_LossRatio2(4) = autocorrelation(loss_ratio_mu1k2s120)
[R90_LR2(4), R95_LR2(4), R99_LR2(4)] = confidenceIntv(loss_ratio_mu1k2s120)

% Queue Ratio

m_QueueRatio2(4)= mean(queue_ratio_mu1k2s120);
lag1Corr_QueueRatio2(4) = autocorrelation(queue_ratio_mu1k2s120)
[R90_QR2(4), R95_QR2(4), R99_QR2(4)] = confidenceIntv(queue_ratio_mu1k2s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    K = 5

%%   for k = 5 and Service-time = 80    %%%

load mu1k5s80.mat

loss_ratio_mu1k5s80=SM(:,3);
queue_ratio_mu1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(3) = mean(loss_ratio_mu1k5s80);
lag1Corr_LossRatio5(3) = autocorrelation(loss_ratio_mu1k5s80)
[R90_LR5(3), R95_LR5(3), R99_LR5(3)] = confidenceIntv(loss_ratio_mu1k5s80)

% Queue Ratio

m_QueueRatio5(3)=mean(queue_ratio_mu1k5s80);
lag1Corr_QueueRatio5(3) = autocorrelation(queue_ratio_mu1k5s80)
[R90_QR5(3), R95_QR5(3), R99_QR5(3)] = confidenceIntv(queue_ratio_mu1k5s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load mu1k5s120.mat

loss_ratio_mu1k5s120=SM(:,3);
queue_ratio_mu1k5s120=SM(:,4);

% Loss Ratio

m_LossRatio5(4) = mean(loss_ratio_mu1k5s120);
lag1Corr_LossRatio5(4) = autocorrelation(loss_ratio_mu1k5s120)
[R90_LR5(4), R95_LR5(4), R99_LR5(4)] = confidenceIntv(loss_ratio_mu1k5s120)

% Queue Ratio

m_QueueRatio5(4)= mean(queue_ratio_mu1k5s120);
lag1Corr_QueueRatio5(4) = autocorrelation(queue_ratio_mu1k5s120)
[R90_QR5(4), R95_QR5(4), R99_QR5(4)] = confidenceIntv(queue_ratio_mu1k5s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  K = 10

%%   for k = 10 and Service-time = 80    %%%

load mu1k10s80.mat

loss_ratio_mu1k10s80=SM(:,3);
queue_ratio_mu1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(3) = mean(loss_ratio_mu1k10s80);
lag1Corr_LossRatio10(3) = autocorrelation(loss_ratio_mu1k10s80)
[R90_LR10(3), R95_LR10(3), R99_LR10(3)] = confidenceIntv(loss_ratio_mu1k10s80)

% Queue Ratio

m_QueueRatio10(3)=mean(queue_ratio_mu1k10s80);
lag1Corr_QueueRatio10(3) = autocorrelation(queue_ratio_mu1k10s80)
[R90_QR10(3), R95_QR10(3), R99_QR10(3)] = confidenceIntv(queue_ratio_mu1k10s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 120    %%%

load mu1k10s120.mat

loss_ratio_mu1k10s120=SM(:,3);
queue_ratio_mu1k10s120=SM(:,4);

% Loss Ratio

m_LossRatio10(4) = mean(loss_ratio_mu1k10s120);
lag1Corr_LossRatio10(4) = autocorrelation(loss_ratio_mu1k10s120)
[R90_LR10(4), R95_LR10(4), R99_LR10(4)] = confidenceIntv(loss_ratio_mu1k10s120)

% Queue Ratio

m_QueueRatio10(4)= mean(queue_ratio_mu1k10s120);
lag1Corr_QueueRatio10(4) = autocorrelation(queue_ratio_mu1k10s120)
[R90_QR10(4), R95_QR10(4), R99_QR10(4)] = confidenceIntv(queue_ratio_mu1k10s120)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Plotting    %%%

x=[0 2 5 10];
x = categorical({'0' '2' '5' '10'});
x = reordercats(x,{'0' '2' '5' '10'});

y1=[m_LossRatio0(1),m_LossRatio2(1),m_LossRatio5(1),m_LossRatio10(1)];  %  dm1 & s=80
y2=[m_LossRatio0(3),m_LossRatio2(3),m_LossRatio5(3),m_LossRatio10(3)];  %  um1 & s=80
y1new=[y1;y2];
y3=[m_LossRatio0(2),m_LossRatio2(2),m_LossRatio5(2),m_LossRatio10(2)];  %  dm1 & s=120
y4=[m_LossRatio0(4),m_LossRatio2(4),m_LossRatio5(4),m_LossRatio10(4)];  %  um1 & s=120
y2new=[y3;y4];

%  Plot for s=80

figure;

% plot(x,y1,'*-b','LineWidth',2);hold on;
% plot(x,y2,'*-r','LineWidth',2);
bar(x,y1new);

xlabel('Queue Capacity');
title('Effect on loss for service time = 80')
legend('M/D/1','M/U/1')
grid on;

%  Plot for s=120

figure;

% plot(x,y3,'*-b','LineWidth',2);hold on;
% plot(x,y4,'*-r','LineWidth',2);
bar(x,y2new);

xlabel('Queue Capacity');
title('Effect on Loss for service time=120')
legend('M/D/1','M/U/1')
grid on;

%  Autocorrelation

y5=[lag1Corr_LossRatio0(1),lag1Corr_LossRatio2(1),lag1Corr_LossRatio5(1),lag1Corr_LossRatio10(1)];  %  dm1 & s=80
y6=[lag1Corr_LossRatio0(3),lag1Corr_LossRatio2(3),lag1Corr_LossRatio5(3),lag1Corr_LossRatio10(3)];  %  um1 & s=80
y3new=[y5;y6];
y7=[lag1Corr_LossRatio0(2),lag1Corr_LossRatio2(2),lag1Corr_LossRatio5(2),lag1Corr_LossRatio10(2)];  %  dm1 & s=120
y8=[lag1Corr_LossRatio0(4),lag1Corr_LossRatio2(4),lag1Corr_LossRatio5(4),lag1Corr_LossRatio10(4)];  %  um1 & s=120
y4new=[y7;y8];

%  Plot for s=80

figure;

plot(x,y5,'*-b','LineWidth',2);hold on;
plot(x,y6,'*-r','LineWidth',2);
% bar(x,y3new);
xlabel('Queue Capacity');
title('Effect on loss using Autocorrelation for service time = 80')
legend('M/D/1','M/U/1')
grid on;

%  Plot for s=120

figure;

plot(x,y7,'*-b','LineWidth',2);hold on;
plot(x,y8,'*-r','LineWidth',2);


xlabel('Queue Capacity');
title('Effect on Loss using Autocorrelation for service time=120')
legend('M/D/1','M/U/1')
grid on;
