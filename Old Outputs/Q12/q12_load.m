clc;
clear all;
close all;

% Load : for  a)- K = 0; b)- K = 2; c)- K = 10.

%%%%         first mat file          %%

% for  a)- K = 0;
load q12k0.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%

[xcMU11,lags11] = xcorr(load_1-mean(load_1),1,'coeff');
lag1Corr_11=xcMU11(1);

MU11=fitdist(load_1,'Normal') 

%90 ci

ci11 = paramci(MU11,'Alpha',.1)
R90_1=ci11(2)-ci11(1)

%95 ci

ci12 = paramci(MU11,'Alpha',.05)
R95_1=ci12(2)-ci12(1)

% 99 ci

ci13 = paramci(MU11,'Alpha',.01)
R99_1=ci13(2)-ci13(1)

%%%%%%% Second mat file

load q12k2.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

[xcMU21,lags21] = xcorr(load_2-mean(load_2),1,'coeff');
lag1Corr_21=xcMU21(1);

MU21=fitdist(load_2,'Normal') 

%90 ci
ci21 = paramci(MU21,'Alpha',.1)
R90_2=ci21(2)-ci21(1)

%95 ci 
ci22 = paramci(MU21,'Alpha',.05)
R95_2=ci22(2)-ci22(1)

% 99 ci
ci23 = paramci(MU21,'Alpha',.01)
R99_2=ci23(2)-ci23(1)


%%%%%%%third mat file

load q12k10.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%

[xcMU31,lags31] = xcorr(load_3-mean(load_3),1,'coeff');
lag1Corr_31=xcMU31(1);

MU31=fitdist(load_3,'Normal') 

%90 ci
ci31=paramci(MU31,'Alpha',.1)

%95 ci
ci32=paramci(MU31,'Alpha',.05)
R95_3=ci32(2)-ci32(1)

% 99 ci
ci33=paramci(MU31,'Alpha',.01)

%%%

x=[0 2 10]
x = categorical({'0','2','10'});
x = reordercats(x,{'0','2','10'});
y95=[R95_1 R95_2 R95_3]
ycorr=[lag1Corr_11 lag1Corr_21 lag1Corr_31]

figure;
plot(x,y95,'*-g','LineWidth',2), hold on, plot(x,ycorr,'*-r','LineWidth',2);

title('Effect of different Queue Lengths on Load');legend('95% CI','Lag-1 Autocorrelation');
xlabel('Queue Lengths');
ylabel('Load');
grid on;
