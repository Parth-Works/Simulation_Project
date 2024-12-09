clc;
clear all;
close all;

% Compare the loss ratios for the M/M/K’’ system 
% with those obtained for the M/U/K’’, U/M/K’’ and U/U/K’’ systems 
% at 80 % load, and motivate your observations.

% Compare the queuing ratios for the M/M/K’’=10 system with those obtained 
% for the M/U/K’’, U/M/K’’ and U/U/K’’ systems at 80 % load, and motivate your observations.

%%              INITIALISATION              %%%%%%%%%%%%%%%%

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

%%                                 U/M/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load um1k0s80.mat

loss_ratio_um1k0s80=SM(:,3);
queue_ratio_um1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(1) = mean(loss_ratio_um1k0s80);
lag1Corr_LossRatio0(1) = autocorrelation(loss_ratio_um1k0s80)
[R90_LR0(1), R95_LR0(1), R99_LR0(1)] = confidenceIntv(loss_ratio_um1k0s80)

% Queue Ratio

m_QueueRatio0(1)=mean(queue_ratio_um1k0s80);
lag1Corr_QueueRatio0(1) = autocorrelation(queue_ratio_um1k0s80)
[R90_QR0(1), R95_QR0(1), R99_QR0(1)] = confidenceIntv(queue_ratio_um1k0s80)

%%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load um1k2s80.mat

loss_ratio_um1k2s80=SM(:,3);
queue_ratio_um1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(1) = mean(loss_ratio_um1k2s80);
lag1Corr_LossRatio2(1) = autocorrelation(loss_ratio_um1k2s80)
[R90_LR2(1), R95_LR2(1), R99_LR2(1)] = confidenceIntv(loss_ratio_um1k2s80)

% Queue Ratio

m_QueueRatio2(1)=mean(queue_ratio_um1k2s80);
lag1Corr_QueueRatio2(1) = autocorrelation(queue_ratio_um1k2s80)
[R90_QR2(1), R95_QR2(1), R99_QR2(1)] = confidenceIntv(queue_ratio_um1k2s80)

%%%%%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load um1k5s80.mat

loss_ratio_um1k5s80=SM(:,3);
queue_ratio_um1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(1) = mean(loss_ratio_um1k5s80);
lag1Corr_LossRatio5(1) = autocorrelation(loss_ratio_um1k5s80)
[R90_LR5(1), R95_LR5(1), R99_LR5(1)] = confidenceIntv(loss_ratio_um1k5s80)

% Queue Ratio

m_QueueRatio5(1)=mean(queue_ratio_um1k5s80);
lag1Corr_QueueRatio5(1) = autocorrelation(queue_ratio_um1k5s80)
[R90_QR5(1), R95_QR5(1), R99_QR5(1)] = confidenceIntv(queue_ratio_um1k5s80)

%%%%%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load um1k10s80.mat

loss_ratio_um1k10s80=SM(:,3);
queue_ratio_um1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(1) = mean(loss_ratio_um1k10s80);
lag1Corr_LossRatio10(1) = autocorrelation(loss_ratio_um1k10s80)
[R90_LR10(1), R95_LR10(1), R99_LR10(1)] = confidenceIntv(loss_ratio_um1k10s80)

% Queue Ratio

m_QueueRatio10(1)=mean(queue_ratio_um1k10s80);
lag1Corr_QueueRatio10(1) = autocorrelation(queue_ratio_um1k10s80)
[R90_QR10(1), R95_QR10(1), R99_QR10(1)] = confidenceIntv(queue_ratio_um1k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%                                 M/U/1 SYSTEMS               %%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load mu1k0s80.mat

loss_ratio_mu1k0s80=SM(:,3);
queue_ratio_mu1k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(2) = mean(loss_ratio_mu1k0s80);
lag1Corr_LossRatio0(2) = autocorrelation(loss_ratio_mu1k0s80)
[R90_LR0(2), R95_LR0(2), R99_LR0(2)] = confidenceIntv(loss_ratio_mu1k0s80)

% Queue Ratio

m_QueueRatio0(2)=mean(queue_ratio_mu1k0s80);
lag1Corr_QueueRatio0(2) = autocorrelation(queue_ratio_mu1k0s80)
[R90_QR0(2), R95_QR0(2), R99_QR0(2)] = confidenceIntv(queue_ratio_mu1k0s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load mu1k2s80.mat

loss_ratio_mu1k2s80=SM(:,3);
queue_ratio_mu1k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(2) = mean(loss_ratio_mu1k2s80);
lag1Corr_LossRatio2(2) = autocorrelation(loss_ratio_mu1k2s80)
[R90_LR2(2), R95_LR2(2), R99_LR2(2)] = confidenceIntv(loss_ratio_mu1k2s80)

% Queue Ratio

m_QueueRatio2(2)=mean(queue_ratio_mu1k2s80);
lag1Corr_QueueRatio2(2) = autocorrelation(queue_ratio_mu1k2s80)
[R90_QR2(2), R95_QR2(2), R99_QR2(2)] = confidenceIntv(queue_ratio_mu1k2s80)

%%%%%%%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load mu1k5s80.mat

loss_ratio_mu1k5s80=SM(:,3);
queue_ratio_mu1k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(2) = mean(loss_ratio_mu1k5s80);
lag1Corr_LossRatio5(2) = autocorrelation(loss_ratio_mu1k5s80)
[R90_LR5(2), R95_LR5(2), R99_LR5(2)] = confidenceIntv(loss_ratio_mu1k5s80)

% Queue Ratio

m_QueueRatio5(2)=mean(queue_ratio_mu1k5s80);
lag1Corr_QueueRatio5(2) = autocorrelation(queue_ratio_mu1k5s80)
[R90_QR5(2), R95_QR5(2), R99_QR5(2)] = confidenceIntv(queue_ratio_mu1k5s80)

%%%%%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load mu1k10s80.mat

loss_ratio_mu1k10s80=SM(:,3);
queue_ratio_mu1k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(2) = mean(loss_ratio_mu1k10s80);
lag1Corr_LossRatio10(2) = autocorrelation(loss_ratio_mu1k10s80)
[R90_LR10(2), R95_LR10(2), R99_LR10(2)] = confidenceIntv(loss_ratio_mu1k10s80)

% Queue Ratio

m_QueueRatio10(2)=mean(queue_ratio_mu1k10s80);
lag1Corr_QueueRatio10(2) = autocorrelation(queue_ratio_mu1k10s80)
[R90_QR10(2), R95_QR10(2), R99_QR10(2)] = confidenceIntv(queue_ratio_mu1k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%                U/U/1 System          %%%%%%%%%%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load uu1k0.mat

loss_ratio_uu1k0=SM(:,3);
queue_ratio_uu1k0=SM(:,4);

% Loss Ratio

m_LossRatio0(3) = mean(loss_ratio_uu1k0);
lag1Corr_LossRatio0(3) = autocorrelation(loss_ratio_uu1k0)
[R90_LR0(3), R95_LR0(3), R99_LR0(3)] = confidenceIntv(loss_ratio_uu1k0)

% Queue Ratio

m_QueueRatio0(3)= mean(queue_ratio_uu1k0);
lag1Corr_QueueRatio0(3) = autocorrelation(queue_ratio_uu1k0)
[R90_QR0(3), R95_QR0(3), R99_QR0(3)] = confidenceIntv(queue_ratio_uu1k0)

%%%%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load uu1k2.mat

loss_ratio_uu1k2=SM(:,3);
queue_ratio_uu1k2=SM(:,4);

% Loss Ratio

m_LossRatio2(3) = mean(loss_ratio_uu1k2);
lag1Corr_LossRatio2(3) = autocorrelation(loss_ratio_uu1k2)
[R90_LR2(3), R95_LR2(3), R99_LR2(3)] = confidenceIntv(loss_ratio_uu1k2)

% Queue Ratio

m_QueueRatio2(3)= mean(queue_ratio_uu1k2);
lag1Corr_QueueRatio2(3) = autocorrelation(queue_ratio_uu1k2)
[R90_QR2(3), R95_QR2(3), R99_QR2(3)] = confidenceIntv(queue_ratio_uu1k2)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load uu1k5.mat

loss_ratio_uu1k5=SM(:,3);
queue_ratio_uu1k5=SM(:,4);

% Loss Ratio

m_LossRatio5(3) = mean(loss_ratio_uu1k5);
lag1Corr_LossRatio5(3) = autocorrelation(loss_ratio_uu1k5)
[R90_LR5(3), R95_LR5(3), R99_LR5(3)] = confidenceIntv(loss_ratio_uu1k5)

% Queue Ratio

m_QueueRatio5(3)= mean(queue_ratio_uu1k5);
lag1Corr_QueueRatio5(3) = autocorrelation(queue_ratio_uu1k5)
[R90_QR5(3), R95_QR5(3), R99_QR5(3)] = confidenceIntv(queue_ratio_uu1k5)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load uu1k10.mat

loss_ratio_uu1k10=SM(:,3);
queue_ratio_uu1k10=SM(:,4);

% Loss Ratio

m_LossRatio10(3) = mean(loss_ratio_uu1k10);
lag1Corr_LossRatio10(3) = autocorrelation(loss_ratio_uu1k10)
[R90_LR10(3), R95_LR10(3), R99_LR10(3)] = confidenceIntv(loss_ratio_uu1k10)

% Queue Ratio

m_QueueRatio10(3)= mean(queue_ratio_uu1k10);
lag1Corr_QueueRatio10(3) = autocorrelation(queue_ratio_uu1k10)
[R90_QR10(3), R95_QR10(3), R99_QR10(3)] = confidenceIntv(queue_ratio_uu1k10)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                M/M/1 System          %%%%%%%%%%%%%%%%%

%%   for k = 0 and Service-time = 80    %%%

load k0s80.mat

loss_ratio_k0s80=SM(:,3);
queue_ratio_k0s80=SM(:,4);

% Loss Ratio

m_LossRatio0(4) = mean(loss_ratio_k0s80);
lag1Corr_LossRatio0(4) = autocorrelation(loss_ratio_k0s80)
[R90_LR0(4), R95_LR0(4), R99_LR0(4)] = confidenceIntv(loss_ratio_k0s80)

% Queue Ratio

m_QueueRatio0(4)= mean(queue_ratio_k0s80);
lag1Corr_QueueRatio0(4) = autocorrelation(queue_ratio_k0s80)
[R90_QR0(4), R95_QR0(4), R99_QR0(4)] = confidenceIntv(queue_ratio_k0s80)

%%%%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load k2s80.mat

loss_ratio_k2s80=SM(:,3);
queue_ratio_k2s80=SM(:,4);

% Loss Ratio

m_LossRatio2(4) = mean(loss_ratio_k2s80);
lag1Corr_LossRatio2(4) = autocorrelation(loss_ratio_k2s80)
[R90_LR2(4), R95_LR2(4), R99_LR2(4)] = confidenceIntv(loss_ratio_k2s80)

% Queue Ratio

m_QueueRatio2(4)= mean(queue_ratio_k2s80);
lag1Corr_QueueRatio2(4) = autocorrelation(queue_ratio_k2s80)
[R90_QR2(4), R95_QR2(4), R99_QR2(4)] = confidenceIntv(queue_ratio_k2s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k5s80.mat

loss_ratio_k5s80=SM(:,3);
queue_ratio_k5s80=SM(:,4);

% Loss Ratio

m_LossRatio5(4) = mean(loss_ratio_k5s80);
lag1Corr_LossRatio5(4) = autocorrelation(loss_ratio_k5s80)
[R90_LR5(4), R95_LR5(4), R99_LR5(4)] = confidenceIntv(loss_ratio_k5s80)

% Queue Ratio

m_QueueRatio5(4)= mean(queue_ratio_k5s80);
lag1Corr_QueueRatio5(4) = autocorrelation(queue_ratio_k5s80)
[R90_QR5(4), R95_QR5(4), R99_QR5(4)] = confidenceIntv(queue_ratio_k5s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load k10s80.mat

load_k10s80=SM(:,2);
loss_ratio_k10s80=SM(:,3);
queue_ratio_k10s80=SM(:,4);

% Loss Ratio

m_LossRatio10(4) = mean(loss_ratio_k10s80);
lag1Corr_LossRatio10(4) = autocorrelation(loss_ratio_k10s80)
[R90_LR10(4), R95_LR10(4), R99_LR10(4)] = confidenceIntv(loss_ratio_k10s80)

% Queue Ratio

m_QueueRatio10(4)= mean(queue_ratio_k10s80);
lag1Corr_QueueRatio10(4) = autocorrelation(queue_ratio_k10s80)
[R90_QR10(4), R95_QR10(4), R99_QR10(4)] = confidenceIntv(queue_ratio_k10s80)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%   Plotting    %%%

x=[0 2 5 10];
x = categorical({'0' '2' '5' '10'});
x = reordercats(x,{'0' '2' '5' '10'});

%   LOSS RATIO   %%%%%%%%%%%%%%%%%%%

% Mean

% y1=[m_LossRatio0(1),m_LossRatio2(1),m_LossRatio5(1),m_LossRatio10(1)];  %  um1 & s=80
% y2=[m_LossRatio0(2),m_LossRatio2(2),m_LossRatio5(2),m_LossRatio10(2)];  %  mu1 & s=80
% y3=[m_LossRatio0(3),m_LossRatio2(3),m_LossRatio5(3),m_LossRatio10(3)];  %  uu1 & s=80
% y4=[m_LossRatio0(4),m_LossRatio2(4),m_LossRatio5(4),m_LossRatio10(4)];  %  mm1 & s=80
y1=[m_LossRatio0(1), m_LossRatio0(2), m_LossRatio0(3), m_LossRatio0(4)];
y2=[m_LossRatio2(1), m_LossRatio2(2), m_LossRatio2(3), m_LossRatio2(4)];
y3=[m_LossRatio5(1), m_LossRatio5(2), m_LossRatio5(3), m_LossRatio5(4)];
y4=[m_LossRatio10(1), m_LossRatio10(2), m_LossRatio10(3), m_LossRatio10(4)];
y1new = [y1;y2;y3;y4];

figure;
bar(x,y1new);

xlabel('Queue Capacity');
title('Effect on loss for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

%  Autocorrelation

y5=[lag1Corr_LossRatio0(1),lag1Corr_LossRatio2(1),lag1Corr_LossRatio5(1),lag1Corr_LossRatio10(1)];  %  um1 & s=80
y6=[lag1Corr_LossRatio0(2),lag1Corr_LossRatio2(2),lag1Corr_LossRatio5(2),lag1Corr_LossRatio10(2)];  %  mu1
y7=[lag1Corr_LossRatio0(3),lag1Corr_LossRatio2(3),lag1Corr_LossRatio5(3),lag1Corr_LossRatio10(3)];  %  uu1
y8=[lag1Corr_LossRatio0(4),lag1Corr_LossRatio2(4),lag1Corr_LossRatio5(4),lag1Corr_LossRatio10(4)];  %  mm1
% y5=[lag1Corr_LossRatio0(1),lag1Corr_LossRatio0(2),lag1Corr_LossRatio0(3),lag1Corr_LossRatio0(4)];
% y6=[lag1Corr_LossRatio2(1),lag1Corr_LossRatio2(2),lag1Corr_LossRatio2(3),lag1Corr_LossRatio2(4)];
% y7=[lag1Corr_LossRatio5(1),lag1Corr_LossRatio5(2),lag1Corr_LossRatio5(3),lag1Corr_LossRatio5(4)];
% y8=[lag1Corr_LossRatio10(1),lag1Corr_LossRatio10(2),lag1Corr_LossRatio10(3),lag1Corr_LossRatio10(4)];
% y2new=[y5;y6;y7;y8];

figure;
% bar(x,y2new)
plot(x,y5,'*-b','LineWidth',2), hold on;
plot(x,y6,'*-r','LineWidth',2), hold on;
plot(x,y7,'*-g','LineWidth',2), hold on;
plot(x,y8,'*-y','LineWidth',2), hold on;
xlabel('Queue Capacity');
title('Effect on loss using Autocorrelation for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

% 95% CI

y9=[R95_LR0;R95_LR2;R95_LR5;R95_LR10];
figure;
bar(x,y9)

xlabel('Queue Capacity');
title('Effect on loss using 95% CI for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% QUEUING RATIO

% Mean

% y11=[m_QueueRatio0(1),m_QueueRatio2(1),m_QueueRatio5(1),m_QueueRatio10(1)];  %  um1 & s=80
% y12=[m_QueueRatio0(2),m_QueueRatio2(2),m_QueueRatio5(2),m_QueueRatio10(2)];  %  mu1 & s=80
% y13=[m_QueueRatio0(3),m_QueueRatio2(3),m_QueueRatio5(3),m_QueueRatio10(3)];  %  uu1 & s=80
% y14=[m_QueueRatio0(4),m_QueueRatio2(4),m_QueueRatio5(4),m_QueueRatio10(4)];  %  mm1 & s=80
y11=[m_QueueRatio0(1),m_QueueRatio0(2),m_QueueRatio0(3),m_QueueRatio0(4)];
y12=[m_QueueRatio2(1),m_QueueRatio2(2),m_QueueRatio2(3),m_QueueRatio2(4)];
y13=[m_QueueRatio5(1),m_QueueRatio5(2),m_QueueRatio5(3),m_QueueRatio5(4)];
y14=[m_QueueRatio10(1),m_QueueRatio10(2),m_QueueRatio10(3),m_QueueRatio10(4)];
y11new = [y11;y12;y13;y14];

figure;
bar(x,y11new);

xlabel('Queue Capacity');
title('Effect on Queuing Ratio for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

%  Autocorrelation

y15=[lag1Corr_QueueRatio0(1),lag1Corr_QueueRatio2(1),lag1Corr_QueueRatio5(1),lag1Corr_QueueRatio10(1)];  %  um1 & s=80
y16=[lag1Corr_QueueRatio0(2),lag1Corr_QueueRatio2(2),lag1Corr_QueueRatio5(2),lag1Corr_QueueRatio10(2)];  %  mu1
y17=[lag1Corr_QueueRatio0(3),lag1Corr_QueueRatio2(3),lag1Corr_QueueRatio5(3),lag1Corr_QueueRatio10(3)];  %  uu1
y18=[lag1Corr_QueueRatio0(4),lag1Corr_QueueRatio2(4),lag1Corr_QueueRatio5(4),lag1Corr_QueueRatio10(4)];  %  mm1
% y15=[lag1Corr_QueueRatio0(1),lag1Corr_QueueRatio0(2),lag1Corr_QueueRatio0(3),lag1Corr_QueueRatio0(4)];
% y16=[lag1Corr_QueueRatio2(1),lag1Corr_QueueRatio2(2),lag1Corr_QueueRatio2(3),lag1Corr_QueueRatio2(4)];
% y17=[lag1Corr_QueueRatio5(1),lag1Corr_QueueRatio5(2),lag1Corr_QueueRatio5(3),lag1Corr_QueueRatio5(4)];
% y18=[lag1Corr_QueueRatio10(1),lag1Corr_QueueRatio10(2),lag1Corr_QueueRatio10(3),lag1Corr_QueueRatio10(4)];
% y12new=[y15;y16;y17;y18];

figure;
% bar(x,y12new)
plot(x,y15,'*-b','LineWidth',2), hold on;
plot(x,y16,'*-r','LineWidth',2), hold on;
plot(x,y17,'*-g','LineWidth',2), hold on;
plot(x,y18,'*-y','LineWidth',2), hold on;

xlabel('Queue Capacity');
title('Effect on Queuing Ratio using Autocorrelation for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

%  95% CI

y19=[R95_QR0;R95_QR2;R95_QR5;R95_QR10];
figure;
bar(x,y19)

xlabel('Queue Capacity');
title('Effect on Queuing Ratio using 95% CI for service time = 80')
legend('U/M/1','M/U/1','U/U/1','M/M/1')
grid on;

