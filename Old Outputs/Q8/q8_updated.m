clc;
clear all;
close all;

% impact of the size of load or queuing ratio on the absolute sizes of the confidence intervals.

%%%%first mat file
load q8st25.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%

% size of load 

%90 ci
MU11=fitdist(load_1,'Normal') 
ci11 = paramci(MU11,'Alpha',.1)
R90_11 = ci11(2)-ci11(1)
%95 ci
MU12=fitdist(load_1,'Normal') 
ci12 = paramci(MU12,'Alpha',.05)
R95_11=ci12(2)-ci12(1)
% 99 ci
MU13=fitdist(load_1,'Normal') 
ci13 = paramci(MU13,'Alpha',.01)
R99_11 = ci13(2)-ci13(1)
%%%%

% size of queue_ratio

%90 ci
MU14=fitdist(queue_ratio_1,'Normal') 
ci14 = paramci(MU14,'Alpha',.1)
R90_12 = ci14(2)-ci14(1)
%95 ci
MU15=fitdist(queue_ratio_1,'Normal') 
ci15 = paramci(MU15,'Alpha',.05)
R95_12=ci15(2)-ci15(1)
% 99 ci
MU16=fitdist(queue_ratio_1,'Normal') 
ci16 = paramci(MU16,'Alpha',.01)
R99_12 = ci16(2)-ci16(1)


%%%%%%% Second mat file

load q8st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

% size of load 

%90 ci
MU21=fitdist(load_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
R90_21 = ci21(2)-ci21(1)
%95 ci
MU22=fitdist(load_2,'Normal') 
ci22 = paramci(MU22,'Alpha',.05)
R95_21=ci22(2)-ci22(1)
% 99 ci
MU23=fitdist(load_2,'Normal') 
ci23 = paramci(MU23,'Alpha',.01)
R99_21 = ci23(2)-ci23(1)
%%%%

% size of queue_ratio

%90 ci
MU24 =fitdist(queue_ratio_2,'Normal') 
ci24 = paramci(MU24,'Alpha',.1)
R90_22 = ci24(2)-ci24(1)
%95 ci
MU25=fitdist(queue_ratio_2,'Normal') 
ci25 = paramci(MU25,'Alpha',.05)
R95_22=ci25(2)-ci25(1)
% 99 ci
MU26=fitdist(queue_ratio_2,'Normal') 
ci26 = paramci(MU26,'Alpha',.01)
R99_22 = ci26(2)-ci26(1)

%%%%%%%third mat file

load q8st60.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%

% size of load 

%90 ci
MU31=fitdist(load_3,'Normal') 
ci31 = paramci(MU31,'Alpha',.1)
R90_31 = ci31(2)-ci31(1)
%95 ci
MU32=fitdist(load_3,'Normal') 
ci32 = paramci(MU32,'Alpha',.05)
R95_31=ci32(2)-ci32(1)
% 99 ci
MU33=fitdist(load_3,'Normal') 
ci33 = paramci(MU33,'Alpha',.01)
R99_31 = ci33(2)-ci33(1)
%%%%

% size of queue_ratio

%90 ci
MU34=fitdist(queue_ratio_3,'Normal') 
ci34 = paramci(MU34,'Alpha',.1)
R90_32 = ci34(2)-ci34(1)
%95 ci
MU35=fitdist(queue_ratio_3,'Normal') 
ci35 = paramci(MU35,'Alpha',.05)
R95_32=ci35(2)-ci35(1)
% 99 ci
MU36=fitdist(queue_ratio_3,'Normal') 
ci36 = paramci(MU36,'Alpha',.01)
R99_32 = ci36(2)-ci36(1)


%%%%%%%fourth mat file

load q8st80.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%

% size of load 

%90 ci
MU41=fitdist(load_4,'Normal') 
ci41 = paramci(MU41,'Alpha',.1)
R90_41 = ci41(2)-ci41(1)
%95 ci
MU42=fitdist(load_4,'Normal') 
ci42 = paramci(MU42,'Alpha',.05)
R95_41=ci42(2)-ci42(1)
% 99 ci
MU43=fitdist(load_4,'Normal') 
ci43 = paramci(MU43,'Alpha',.01)
R99_41 = ci43(2)-ci43(1)
%%%%

% size of queue_ratio

%90 ci
MU44=fitdist(queue_ratio_4,'Normal') 
ci44 = paramci(MU44,'Alpha',.1)
R90_42 = ci44(2)-ci44(1)
%95 ci
MU45=fitdist(queue_ratio_4,'Normal') 
ci45 = paramci(MU45,'Alpha',.05)
R95_42=ci45(2)-ci45(1)
% 99 ci
MU46=fitdist(queue_ratio_4,'Normal') 
ci46 = paramci(MU46,'Alpha',.01)
R99_42 = ci46(2)-ci46(1)



x=[25 40 60 80]
x = categorical({'25' '40' '60' '80'});
x = reordercats(x,{'25' '40' '60' '80'});


ly1=[R90_11 R90_21 R90_31 R90_41]
ly2=[R95_11 R95_21 R95_31 R95_41]
ly3=[R99_11 R99_21 R99_31 R99_41]
figure;
plot(x,ly1/2,'*-g','LineWidth',2), hold on,
plot(x,ly2/2,'*-b','LineWidth',2), hold on,
plot(x,ly3/2,'*-r','LineWidth',2);
title('Effect of Load on Absolute sizes confidence interval');legend('90% CI','95% CI','99% CI');
xlabel('average service time');
ylabel('Absolute size of Confidence interval');
grid on;

Qy1=[R90_12 R90_22 R90_32 R90_42]
Qy2=[R95_12 R95_22 R95_32 R95_42]
Qy3=[R99_12 R99_22 R99_32 R99_42]
figure;
plot(x,Qy1/2,'*-g','LineWidth',2), hold on,
plot(x,Qy2/2,'*-b','LineWidth',2), hold on,
plot(x,Qy3/2,'*-r','LineWidth',2);

title('Effect of Queuing Ratio on Absolute sizes confidence interval');legend('90% CI','95% CI','99% CI');
xlabel('average service time');
ylabel('Absolute size of Confidence interval');
grid on;