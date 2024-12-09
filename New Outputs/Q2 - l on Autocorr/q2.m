clc;
clear all;
close all;
%%%%%%%%%%%%%

% Describe the impact of the LENGTH of batches on the estimation of the autocorrelation.

lag1Corr = [];
R90=[];R95=[];R99=[];
MeanValue = [];

%% Length of Batch = 50   %%%

load k5l50.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);

% mean
MeanValue(1)=mean(load_1);

%autocorr
lag1Corr(1) = autocorrelation(load_1)

%confidence-Interval
[R90(1), R95(1), R99(1)] = confidenceIntv(load_1)

%%%%%%%%%%%%%

%%%%%%%%%%%%%

%% Length of Batch = 100   %%%

load k5l100.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);

% mean
MeanValue(2)=mean(load_2);

%autocorr
lag1Corr(2) = autocorrelation(load_2)

%confidence-Interval
[R90(2), R95(2), R99(2)] = confidenceIntv(load_2)

%%%%%%%%%%%%%

%% Length of Batch = 200   %%%

load k5l200.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);

% mean
MeanValue(3)=mean(load_3);

%autocorr
lag1Corr(3) = autocorrelation(load_3)

%confidence-Interval
[R90(3), R95(3), R99(3)] = confidenceIntv(load_3)

%%%%%%%%%%%%%

%% Length of Batch = 500   %%%

load k5l500.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);

% mean
MeanValue(4)=mean(load_3);

%autocorr
lag1Corr(4) = autocorrelation(load_4)

%confidence-Interval
[R90(4), R95(4), R99(4)] = confidenceIntv(load_4)

%%%%%%%%%%%%%

%% Length of Batch = 1000   %%%

load k5l1000.mat
number_of_batches_5=SM(:,1);
load_5=SM(:,2);
loss_ratio_5=SM(:,3);
queue_ratio_5=SM(:,4);

% mean
MeanValue(5)=mean(load_5);

%autocorr
lag1Corr(5) = autocorrelation(load_5)

%confidence-Interval
[R90(5), R95(5), R99(5)] = confidenceIntv(load_5)

%%%%%%%%%%%%%

%% Length of Batch = 5000   %%%

load k5l5000.mat
number_of_batches_6=SM(:,1);
load_6=SM(:,2);
loss_ratio_6=SM(:,3);
queue_ratio_6=SM(:,4);

% mean
MeanValue(6)=mean(load_6);

%autocorr
lag1Corr(6) = autocorrelation(load_6)

%confidence-Interval
[R90(6), R95(6), R99(6)] = confidenceIntv(load_6)

%%%%%%%%%%%%%

%% Length of Batch = 10000   %%%

load k5l10000.mat
number_of_batches_7=SM(:,1);
load_7=SM(:,2);
loss_ratio_7=SM(:,3);
queue_ratio_7=SM(:,4);

% mean
MeanValue(7)=mean(load_7);

%autocorr
lag1Corr(7) = autocorrelation(load_7)

%confidence-Interval
[R90(7), R95(7), R99(7)] = confidenceIntv(load_7)

%%%

%%    Plotting   %%%

x = categorical({'50','100','200','500','1000','5000','10000'});
x = reordercats(x,{'50','100','200','500','1000','5000','10000'});
y=lag1Corr

figure;
plot(x,y,'-*','LineWidth',2);
title('Effect of length of batch on autocorrelation')
legend('lagcorr1')
grid on;

%%%