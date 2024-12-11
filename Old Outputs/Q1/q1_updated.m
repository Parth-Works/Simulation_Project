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
%%%%%%%%%%
load out_q1b1000.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%
[xcMU2,lags21] = xcorr(load_2-mean(load_2),1,'coeff');
lag1Corr_2=xcMU2(1);
%%%%%%load out_q1b5000.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%
[xcMU3,lags31] = xcorr(load_3-mean(load_3),1,'coeff');
lag1Corr_3=xcMU3(1);
%%%%%%%sixth mat file
load out_q1b10000.mat
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
x = categorical({'200','1000','5000','10000'});
x = reordercats(x,{'200','1000','5000','10000'});
y=[lag1Corr_1 lag1Corr_2 lag1Corr_3 lag1Corr_4 ];

figure;
plot(x,y,'-*','LineWidth',2);
ylim([0 0.5]);hold on;
bar(y),legend('lagcorr1')
