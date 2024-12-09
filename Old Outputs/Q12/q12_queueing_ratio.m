clc;
clear all;
close all;
%%%%first mat file
load q12k0.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%
[xcMU11,lags11] = xcorr(queue_ratio_1-mean(queue_ratio_1),1,'coeff');
lag1Corr_11=xcMU11(1);
%90 ci
MU11=fitdist(queue_ratio_1,'Normal') 
ci11 = paramci(MU11,'Alpha',.1)
%95 ci
MU12=fitdist(queue_ratio_1,'Normal') 
ci12 = paramci(MU12,'Alpha',.05)
R95_1=ci12(2)-ci12(1)
% 99 ci
MU13=fitdist(queue_ratio_1,'Normal') 
ci13 = paramci(MU13,'Alpha',.01)


%%%%%%% Second mat file
load q12k2.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%
[xcMU21,lags21] = xcorr(queue_ratio_2-mean(queue_ratio_2),1,'coeff');
lag1Corr_21=xcMU21(1);
%90 ci
MU21=fitdist(queue_ratio_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
%95 ci
MU22=fitdist(queue_ratio_2,'Normal') 
ci22 = paramci(MU22,'Alpha',.05)
R95_2=ci22(2)-ci22(1)
% 99 ci
MU23=fitdist(queue_ratio_2,'Normal') 
ci23 = paramci(MU23,'Alpha',.01)


%%%%%%%third mat file
load q12k10.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%
[xcMU31,lags31] = xcorr(queue_ratio_3-mean(queue_ratio_3),1,'coeff');
lag1Corr_31=xcMU31(1);
%90 ci
MU31=fitdist(queue_ratio_3,'Normal') 
ci31 = paramci(MU31,'Alpha',.1)
%95 ci
MU32=fitdist(queue_ratio_3,'Normal') 
ci32 = paramci(MU32,'Alpha',.05)
R95_3=ci32(2)-ci32(1)
% 99 ci
MU33=fitdist(queue_ratio_3,'Normal') 
ci33 = paramci(MU33,'Alpha',.01)


%%%
x=[0 2 10]
x = categorical({'0','2','10'});
x = reordercats(x,{'0','2','10'});
y95=[R95_1 R95_2 R95_3]
ycorr=[lag1Corr_11 lag1Corr_21 lag1Corr_31]

figure;
plot(x,y95,'*-g','LineWidth',2), hold on, plot(x,ycorr,'*-r','LineWidth',2);

title('Effect of different Queue Lengths on Queuing Ratio');legend('95% CI','Lag-1 Autocorrelation');
xlabel('Queue Lengths');
ylabel('Queuing Ratio');
grid on;
