clc;
clear all;
close all;

%  the impact of the size of LOAD/QUEUING RATIO on the absolute sizes of the confidence intervals

%%       Initialisation     %%%

% lag1Corr
lag1Corr_Load2 = [];lag1Corr_Load5 = [];lag1Corr_Load10 = [];
lag1Corr_QueueRatio2 = [];lag1Corr_QueueRatio5 = [];lag1Corr_QueueRatio10 = [];

% CI 90 
R90_Load2=[]; R90_Load5=[]; R90_Load10=[];
R90_QR2=[];R90_QR5=[];R90_QR10=[];

% CI 95
R95_Load2=[]; R95_Load5=[]; R95_Load10=[];
R95_QR2=[];R95_QR5=[];R95_QR10=[];

% CI 99
R99_Load2=[]; R99_Load5=[]; R99_Load10=[];
R99_QR2=[]; R99_QR5=[]; R99_QR10=[];

% mean
m_Load2 = [];m_Load5 = [];m_Load10 = [];
m_QueueRatio2 = [];m_QueueRatio5 = [];m_QueueRatio10 = [];


%%   for k = 2 and Service-time = 40    %%%

load k2s40.mat

load_k2s40=SM(:,2);
queue_ratio_k2s40=SM(:,4);

% Load

m_Load2(1) = mean(load_k2s40);
lag1Corr_Load2(1) = autocorrelation(load_k2s40)
[R90_Load2(1), R95_Load2(1), R99_Load2(1)] = AbsconfidenceIntv(load_k2s40)

% Queue Ratio

m_QueueRatio2(1)=mean(queue_ratio_k2s40);
lag1Corr_QueueRatio2(1) = autocorrelation(queue_ratio_k2s40)
[R90_QR2(1), R95_QR2(1), R99_QR2(1)] = AbsconfidenceIntv(queue_ratio_k2s40)

%%%%%%%%%%

%%   for k = 2 and Service-time = 60    %%%

load k2s60.mat

load_k2s60=SM(:,2);
queue_ratio_k2s60=SM(:,4);

% Load

m_Load2(2) = mean(load_k2s60);
lag1Corr_Load2(2) = autocorrelation(load_k2s60)
[R90_Load2(2), R95_Load2(2), R99_Load2(2)] = AbsconfidenceIntv(load_k2s60)

% Queue Ratio

m_QueueRatio2(2)=mean(queue_ratio_k2s60);
lag1Corr_QueueRatio2(2) = autocorrelation(queue_ratio_k2s60)
[R90_QR2(2), R95_QR2(2), R99_QR2(2)] = AbsconfidenceIntv(queue_ratio_k2s60)

%%%%%%%%%%

%%   for k = 2 and Service-time = 80    %%%

load k2s80.mat

load_k2s80=SM(:,2);
queue_ratio_k2s80=SM(:,4);

% Load

m_Load2(3) = mean(load_k2s80);
lag1Corr_Load2(3) = autocorrelation(load_k2s80)
[R90_Load2(3), R95_Load2(3), R99_Load2(3)] = AbsconfidenceIntv(load_k2s80)

% Queue Ratio

m_QueueRatio2(3)= mean(queue_ratio_k2s80);
lag1Corr_QueueRatio2(3) = autocorrelation(queue_ratio_k2s80)
[R90_QR2(3), R95_QR2(3), R99_QR2(3)] = AbsconfidenceIntv(queue_ratio_k2s80)

%%%%%%%%%%

%%   for k = 2 and Service-time = 100    %%%

load k2s100.mat

load_k2s100=SM(:,2);
queue_ratio_k2s100=SM(:,4);

% Load

m_Load2(4) = mean(load_k2s100);
lag1Corr_Load2(4) = autocorrelation(load_k2s100)
[R90_Load2(4), R95_Load2(4), R99_Load2(4)] = AbsconfidenceIntv(load_k2s100)

% Queue Ratio

m_QueueRatio2(4)=mean(queue_ratio_k2s100);
lag1Corr_QueueRatio2(4) = autocorrelation(queue_ratio_k2s100)
[R90_QR2(4), R95_QR2(4), R99_QR2(4)] = AbsconfidenceIntv(queue_ratio_k2s100)

%%%%%%%%%%

%%   for k = 2 and Service-time = 120    %%%

load k2s120.mat

load_k2s120=SM(:,2);
queue_ratio_k2s120=SM(:,4);

% Load

m_Load2(5) = mean(load_k2s120);
lag1Corr_Load2(5) = autocorrelation(load_k2s120)
[R90_Load2(5), R95_Load2(5), R99_Load2(5)] = AbsconfidenceIntv(load_k2s120)

% Queue Ratio

m_QueueRatio2(5)=mean(queue_ratio_k2s120);
lag1Corr_QueueRatio2(5) = autocorrelation(queue_ratio_k2s120)
[R90_QR2(5), R95_QR2(5), R99_QR2(5)] = AbsconfidenceIntv(queue_ratio_k2s120)

%%%%%%%%%%

%%   for k = 2 and Service-time = 150    %%%

load k2s150.mat

load_k2s150=SM(:,2);
queue_ratio_k2s150=SM(:,4);

% Load

m_Load2(6) = mean(load_k2s150);
lag1Corr_Load2(6) = autocorrelation(load_k2s150)
[R90_Load2(6), R95_Load2(6), R99_Load2(6)] = AbsconfidenceIntv(load_k2s150)

% Queue Ratio

m_QueueRatio2(6)=mean(queue_ratio_k2s150);
lag1Corr_QueueRatio2(6) = autocorrelation(queue_ratio_k2s150)
[R90_QR2(6), R95_QR2(6), R99_QR2(6)] = AbsconfidenceIntv(queue_ratio_k2s150)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%    K = 5

%%   for k = 5 and Service-time = 40    %%%

load k5s40.mat

load_k5s40=SM(:,2);
queue_ratio_k5s40=SM(:,4);

% Load

m_Load5(1) = mean(load_k5s40);
lag1Corr_Load5(1) = autocorrelation(load_k5s40)
[R90_Load5(1), R95_Load5(1), R99_Load5(1)] = AbsconfidenceIntv(load_k5s40)

% Queue Ratio

m_QueueRatio5(1)=mean(queue_ratio_k5s40);
lag1Corr_QueueRatio5(1) = autocorrelation(queue_ratio_k5s40)
[R90_QR5(1), R95_QR5(1), R99_QR5(1)] = AbsconfidenceIntv(queue_ratio_k5s40)

%%%%%%%%%%

%%   for k = 5 and Service-time = 60    %%%

load k5s60.mat

load_k5s60=SM(:,2);
queue_ratio_k5s60=SM(:,4);

% Load

m_Load5(2) = mean(load_k5s60);
lag1Corr_Load5(2) = autocorrelation(load_k5s60)
[R90_Load5(2), R95_Load5(2), R99_Load5(2)] = AbsconfidenceIntv(load_k5s60)

% Queue Ratio

m_QueueRatio5(2)=mean(queue_ratio_k5s60);
lag1Corr_QueueRatio5(2) = autocorrelation(queue_ratio_k5s60)
[R90_QR5(2), R95_QR5(2), R99_QR5(2)] = AbsconfidenceIntv(queue_ratio_k5s60)

%%%%%%%%%%

%%   for k = 5 and Service-time = 80    %%%

load k5s80.mat

load_k5s80=SM(:,2);
queue_ratio_k5s80=SM(:,4);

% Load

m_Load5(3) = mean(load_k5s80);
lag1Corr_Load5(3) = autocorrelation(load_k5s80)
[R90_Load5(3), R95_Load5(3), R99_Load5(3)] = AbsconfidenceIntv(load_k5s80)

% Queue Ratio

m_QueueRatio5(3)= mean(queue_ratio_k5s80);
lag1Corr_QueueRatio5(3) = autocorrelation(queue_ratio_k5s80)
[R90_QR5(3), R95_QR5(3), R99_QR5(3)] = AbsconfidenceIntv(queue_ratio_k5s80)

%%%%%%%%%%

%%   for k = 5 and Service-time = 100    %%%

load k5s100.mat

load_k5s100=SM(:,2);
queue_ratio_k5s100=SM(:,4);

% Load

m_Load5(4) = mean(load_k5s100);
lag1Corr_Load5(4) = autocorrelation(load_k5s100)
[R90_Load5(4), R95_Load5(4), R99_Load5(4)] = AbsconfidenceIntv(load_k5s100)

% Queue Ratio

m_QueueRatio5(4)=mean(queue_ratio_k5s100);
lag1Corr_QueueRatio5(4) = autocorrelation(queue_ratio_k5s100)
[R90_QR5(4), R95_QR5(4), R99_QR5(4)] = AbsconfidenceIntv(queue_ratio_k5s100)

%%%%%%%%%%

%%   for k = 5 and Service-time = 120    %%%

load k5s120.mat

load_k5s120=SM(:,2);
queue_ratio_k5s120=SM(:,4);

% Load

m_Load5(5) = mean(load_k5s120);
lag1Corr_Load5(5) = autocorrelation(load_k5s120)
[R90_Load5(5), R95_Load5(5), R99_Load5(5)] = AbsconfidenceIntv(load_k5s120)

% Queue Ratio

m_QueueRatio5(5)=mean(queue_ratio_k5s120);
lag1Corr_QueueRatio5(5) = autocorrelation(queue_ratio_k5s120)
[R90_QR5(5), R95_QR5(5), R99_QR5(5)] = AbsconfidenceIntv(queue_ratio_k5s120)

%%%%%%%%%%

%%   for k = 5 and Service-time = 150    %%%

load k5s150.mat

load_k5s150=SM(:,2);
queue_ratio_k5s150=SM(:,4);

% Load

m_Load5(6) = mean(load_k5s150);
lag1Corr_Load5(6) = autocorrelation(load_k5s150)
[R90_Load5(6), R95_Load5(6), R99_Load5(6)] = AbsconfidenceIntv(load_k5s150)

% Queue Ratio

m_QueueRatio5(6)=mean(queue_ratio_k5s150);
lag1Corr_QueueRatio5(6) = autocorrelation(queue_ratio_k5s150)
[R90_QR5(6), R95_QR5(6), R99_QR5(6)] = AbsconfidenceIntv(queue_ratio_k5s150)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  K = 10

%%   for k = 10 and Service-time = 40    %%%

load k10s40.mat

load_k10s40=SM(:,2);
queue_ratio_k10s40=SM(:,4);

% Load

m_Load10(1) = mean(load_k10s40);
lag1Corr_Load10(1) = autocorrelation(load_k10s40)
[R90_Load10(1), R95_Load10(1), R99_Load10(1)] = AbsconfidenceIntv(load_k10s40)

% Queue Ratio

m_QueueRatio10(1)=mean(queue_ratio_k10s40);
lag1Corr_QueueRatio10(1) = autocorrelation(queue_ratio_k10s40)
[R90_QR10(1), R95_QR10(1), R99_QR10(1)] = AbsconfidenceIntv(queue_ratio_k10s40)

%%%%%%%%%%

%%   for k = 10 and Service-time = 60    %%%

load k10s60.mat

load_k10s60=SM(:,2);
queue_ratio_k10s60=SM(:,4);

% Load

m_Load10(2) = mean(load_k10s60);
lag1Corr_Load10(2) = autocorrelation(load_k10s60)
[R90_Load10(2), R95_Load10(2), R99_Load10(2)] = AbsconfidenceIntv(load_k10s60)

% Queue Ratio

m_QueueRatio10(2)=mean(queue_ratio_k10s60);
lag1Corr_QueueRatio10(2) = autocorrelation(queue_ratio_k10s60)
[R90_QR10(2), R95_QR10(2), R99_QR10(2)] = AbsconfidenceIntv(queue_ratio_k10s60)

%%%%%%%%%%

%%   for k = 10 and Service-time = 80    %%%

load k10s80.mat

load_k10s80=SM(:,2);
queue_ratio_k10s80=SM(:,4);

% Load

m_Load10(3) = mean(load_k10s80);
lag1Corr_Load10(3) = autocorrelation(load_k10s80)
[R90_Load10(3), R95_Load10(3), R99_Load10(3)] = AbsconfidenceIntv(load_k10s80)

% Queue Ratio

m_QueueRatio10(3)= mean(queue_ratio_k10s80);
lag1Corr_QueueRatio10(3) = autocorrelation(queue_ratio_k10s80)
[R90_QR10(3), R95_QR10(3), R99_QR10(3)] = AbsconfidenceIntv(queue_ratio_k10s80)

%%%%%%%%%%

%%   for k = 10 and Service-time = 100    %%%

load k10s100.mat

load_k10s100=SM(:,2);
queue_ratio_k10s100=SM(:,4);

% Load

m_Load10(4) = mean(load_k10s100);
lag1Corr_Load10(4) = autocorrelation(load_k10s100)
[R90_Load10(4), R95_Load10(4), R99_Load10(4)] = AbsconfidenceIntv(load_k10s100)

% Queue Ratio

m_QueueRatio10(4)=mean(queue_ratio_k10s100);
lag1Corr_QueueRatio10(4) = autocorrelation(queue_ratio_k10s100)
[R90_QR10(4), R95_QR10(4), R99_QR10(4)] = AbsconfidenceIntv(queue_ratio_k10s100)

%%%%%%%%%%

%%   for k = 10 and Service-time = 120    %%%

load k10s120.mat

load_k10s120=SM(:,2);
queue_ratio_k10s120=SM(:,4);

% Load

m_Load10(5) = mean(load_k10s120);
lag1Corr_Load10(5) = autocorrelation(load_k10s120)
[R90_Load10(5), R95_Load10(5), R99_Load10(5)] = AbsconfidenceIntv(load_k10s120)

% Queue Ratio

m_QueueRatio10(5)=mean(queue_ratio_k10s120);
lag1Corr_QueueRatio10(5) = autocorrelation(queue_ratio_k10s120)
[R90_QR10(5), R95_QR10(5), R99_QR10(5)] = AbsconfidenceIntv(queue_ratio_k10s120)

%%%%%%%%%%

%%   for k = 10 and Service-time = 150    %%%

load k10s150.mat

load_k10s150=SM(:,2);
queue_ratio_k10s150=SM(:,4);

% Load

m_Load10(6) = mean(load_k10s150);
lag1Corr_Load10(6) = autocorrelation(load_k10s150)
[R90_Load10(6), R95_Load10(6), R99_Load10(6)] = AbsconfidenceIntv(load_k10s150)

% Queue Ratio

m_QueueRatio10(6)=mean(queue_ratio_k10s150);
lag1Corr_QueueRatio10(6) = autocorrelation(queue_ratio_k10s150)
[R90_QR10(6), R95_QR10(6), R99_QR10(6)] = AbsconfidenceIntv(queue_ratio_k10s150)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Plotting    %%%

x=[40 60 80 100 120 150];
x = categorical({'40' '60' '80' '100' '120' '150'});
x = reordercats(x,{'40' '60' '80' '100' '120' '150'});

y1=R95_QR2;
y2=R95_QR5;
y3=R95_QR10;

y4=R95_Load2;
y5=R95_Load5;
y6=R95_Load10;

figure;

plot(x,y1,'*-g','LineWidth',2);hold on;
plot(x,y2,'*-b','LineWidth',2);hold on;
plot(x,y3,'*-r','LineWidth',2);


xlabel('Service Time');
title('Effect of Queuing ratio on Abs. size(95% CI)')
legend('k=2','k=5','k=10')
grid on;

figure;

plot(x,y4,'*-g','LineWidth',2);hold on;
plot(x,y5,'*-b','LineWidth',2);hold on;
plot(x,y6,'*-r','LineWidth',2);


xlabel('Service Time');
title('Effect of Load on Abs. size(95% CI)')
legend('k=2','k=5','k=10')
grid on;
