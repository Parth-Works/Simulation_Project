clc;
clear all;
close all;
%%%%reference mat file
load out_q1b200.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%
[xcMU1,lags11] = xcorr(load_1-mean(load_1),1,'coeff');
lag1Corr_1=xcMU1(1);
%mean_load=mean(load);
%MU1=fitdist(load','Normal') %95%)
%%%%%%% Second mat file
load out_q1b50.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%
[xcMU2,lags21] = xcorr(load_2-mean(load_2),1,'coeff');
lag1Corr_2=xcMU2(1);

%%%%%%%third mat file
load out_q1b500.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%
[xcMU3,lags31] = xcorr(load_3-mean(load_3),1,'coeff');
lag1Corr_3=xcMU3(1);
%%%%%%%fourth mat file
load out_q1b1000.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%
[xcMU4,lags41] = xcorr(load_4-mean(load_4),1,'coeff');
lag1Corr_4=xcMU4(1);
%%%
%%%%%%%fifth mat file
load out_q1b100.mat
number_of_batches_5=SM(:,1);
load_5=SM(:,2);
loss_ratio_5=SM(:,3);
queue_ratio_5=SM(:,4);
dep_queued_5=SM(:,5);
Waiting_time_5=SM(:,6);
%%%
[xcMU5,lags51] = xcorr(load_5-mean(load_5),1,'coeff');
lag1Corr_5=xcMU5(1);
%%%%%%%sixth mat file
load out_q1b700.mat
number_of_batches_6=SM(:,1);
load_6=SM(:,2);
loss_ratio_6=SM(:,3);
queue_ratio_6=SM(:,4);
dep_queued_6=SM(:,5);
Waiting_time_6=SM(:,6);
%%%
[xcMU6,lags61] = xcorr(load_6-mean(load_6),1,'coeff');
lag1Corr_6=xcMU6(1);
%%%
%%%%%%%seventh mat file
load out_q1b2500.mat
number_of_batches_7=SM(:,1);
load_7=SM(:,2);
loss_ratio_7=SM(:,3);
queue_ratio_7=SM(:,4);
dep_queued_7=SM(:,5);
Waiting_time_7=SM(:,6);
%%%
[xcMU7,lags71] = xcorr(load_7-mean(load_7),1,'coeff');
lag1Corr_7=xcMU7(1);
%%%
%%%%%%%eithth mat file
load out_q1b5000.mat
number_of_batches_8=SM(:,1);
load_8=SM(:,2);
loss_ratio_8=SM(:,3);
queue_ratio_8=SM(:,4);
dep_queued_8=SM(:,5);
Waiting_time_8=SM(:,6);
%%%
[xcMU8,lags81] = xcorr(load_8-mean(load_8),1,'coeff');
lag1Corr_8=xcMU8(1);
%%%
%%%%%%%ninth mat file
load out_q1b7500.mat
number_of_batches_9=SM(:,1);
load_9=SM(:,2);
loss_ratio_9=SM(:,3);
queue_ratio_9=SM(:,4);
dep_queued_9=SM(:,5);
Waiting_time_9=SM(:,6);
%%%
[xcMU9,lags91] = xcorr(load_9-mean(load_9),1,'coeff');
lag1Corr_9=xcMU9(1);
%%%
%%%%%%%sixth mat file
load out_q1b10000.mat
number_of_batches_10=SM(:,1);
load_10=SM(:,2);
loss_ratio_10=SM(:,3);
queue_ratio_10=SM(:,4);
dep_queued_10=SM(:,5);
Waiting_time_10=SM(:,6);
%%%
[xcMU10,lags101] = xcorr(load_10-mean(load_10),1,'coeff');
lag1Corr_10=xcMU10(1);
%%%
%%%
figure;
% plot(lag1Corr_1,'*g'),hold on,
% plot(lag1Corr_2,'*r'), hold on,
% plot(lag1Corr_3,'*b'), hold on,
% plot(lag1Corr_4,'*m')%axis([-1 1 -1 1]);
x=[50 100 200 500 700 1000 2500 5000 7500 10000 ]
y=[lag1Corr_2 lag1Corr_5 lag1Corr_1 lag1Corr_3 lag1Corr_6 lag1Corr_4 lag1Corr_7 lag1Corr_8 lag1Corr_9 lag1Corr_10 ]
figure;
plot(x,y);