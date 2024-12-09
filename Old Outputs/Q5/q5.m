clc;
clear all;
close all;

% impact of the average service time on load, loss ratio and queuing ratio.

%%   k = 5 & service time = 
load q5st25.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%

%load
mean_11=mean(load_1);
mean_12=mean(loss_ratio_1);
mean_13=mean(queue_ratio_1);
[xcMU11,lags11] = xcorr(load_1-mean(load_1),1,'coeff');
lag1Corr_11=xcMU11(1);
%loss_ratio
[xcMU12,lags12] = xcorr(loss_ratio_1-mean(loss_ratio_1),1,'coeff');
lag1Corr_12=xcMU12(1);
%queue_ratio
[xcMU13,lags13] = xcorr(queue_ratio_1-mean(queue_ratio_1),1,'coeff');
lag1Corr_13=xcMU13(1);

%%%%%%% Second mat file
load q5st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
mean_21=mean(load_2);
mean_22=mean(loss_ratio_2);
mean_23=mean(queue_ratio_2);
%%%load
[xcMU21,lags21] = xcorr(load_2-mean(load_2),1,'coeff');
lag1Corr_21=xcMU21(1);
%loss_ratio
[xcMU22,lags22] = xcorr(loss_ratio_2-mean(loss_ratio_2),1,'coeff');
lag1Corr_22=xcMU22(1);
%queue_ratio
[xcMU23,lags23] = xcorr(queue_ratio_2-mean(queue_ratio_2),1,'coeff');
lag1Corr_23=xcMU23(1);


%%%%%%%third mat file
load q5st60.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
mean_31=mean(load_3);
mean_32=mean(loss_ratio_3);
mean_33=mean(queue_ratio_3);
%%%load
[xcMU31,lags31] = xcorr(load_3-mean(load_3),1,'coeff');
lag1Corr_31=xcMU31(1);
%loss_ratio
[xcMU32,lags32] = xcorr(loss_ratio_3-mean(loss_ratio_3),1,'coeff');
lag1Corr_32=xcMU32(1);
%queue_ratio
[xcMU33,lags33] = xcorr(queue_ratio_3-mean(queue_ratio_3),1,'coeff');
lag1Corr_33=xcMU33(1);


%%%%%%%fourth mat file
load q5st80.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
mean_41=mean(load_4);
mean_42=mean(loss_ratio_4);
mean_43=mean(queue_ratio_4);
%%%load
[xcMU41,lags41] = xcorr(load_4-mean(load_4),1,'coeff');
lag1Corr_41=xcMU41(1);
%loss_ratio
[xcMU42,lags42] = xcorr(loss_ratio_4-mean(loss_ratio_4),1,'coeff');
lag1Corr_42=xcMU42(1);
%queue_ratio
[xcMU43,lags43] = xcorr(queue_ratio_4-mean(queue_ratio_4),1,'coeff');
lag1Corr_43=xcMU43(1);
%%%%%%%%%

x=[25 40 60 80];
x = categorical({'25' '40' '60' '80'});
x = reordercats(x,{'25' '40' '60' '80'});


y1=[mean_11 mean_21 mean_31 mean_41];
y2=[mean_12 mean_22 mean_32 mean_42];
y3=[mean_13 mean_23 mean_33 mean_43];
figure;

%%    Plotting        %%%%%%%%


plot(x,y1,'*-g','LineWidth',2);
legend('load')
title('Effect of Avg Service Time on Load');
grid on;
figure;

plot(x,y2,'*-b','LineWidth',2);
legend('loss ratio')
title('Effect of Avg Service Time on Loss Ratio ')
grid on;
figure;

plot(x,y3,'*-r','LineWidth',2);
legend('queueing ratio')
title('Effect of Avg Service Time on Queue Ratio');
xlabel('Service Time');
grid on;

% y4=  % Load
% y5=  % Loss Ratio 
% y6=  % Queue Ratio
% figure;
% plot(x,y1,'*-g','LineWidth',2); hold on;
% plot(x,y2,'*-r','LineWidth',2); hold on;
% plot(x,y3,'*-b','LineWidth',2);