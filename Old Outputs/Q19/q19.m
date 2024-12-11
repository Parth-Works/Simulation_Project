clc;
clear all;
close all;
%%%%first mat file
load q19mm1.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%
[xcMU11,lags11] = xcorr(queue_ratio_1-mean(queue_ratio_1),1,'coeff');
lag1Corr_11=xcMU11(1);

%%%%%%% Second mat file
load q19mu1.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

[xcMU21,lags21] = xcorr(queue_ratio_2-mean(queue_ratio_2),1,'coeff');
lag1Corr_21=xcMU21(1);


%%%%%%%third mat file
load q19um1.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%
[xcMU31,lags31] = xcorr(queue_ratio_3-mean(queue_ratio_3),1,'coeff');
lag1Corr_31=xcMU31(1);

%%%%%%%fourth mat file
load q19uu1.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%
[xcMU41,lags41] = xcorr(queue_ratio_4-mean(queue_ratio_4),1,'coeff');
lag1Corr_41=xcMU41(1);

%%%
x=[1 2 3 4]
x = categorical({'M/M/1','M/U/1','U/M/1','U/U/1'});
x = reordercats(x,{'M/M/1','M/U/1','U/M/1','U/U/1'});

ycorr=[lag1Corr_11 lag1Corr_21 lag1Corr_31 lag1Corr_41]

figure;
plot(x,ycorr,'*-r','LineWidth',2);

title('Effect of different Systems');legend('Lag-1 Autocorrelation');
xlabel('Auto-corr');
ylabel('queuing Ratio');
grid on;