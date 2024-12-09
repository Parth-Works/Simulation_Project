clc;
clear all;
close all;

% impact of the size of load or queuing ratio on the relative sizes of the confidence intervals.

%%%%first mat file
load q10st25.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%

% Load

MU_l1=fitdist(load_1,'Normal') 

%90 ci
ci90_l1 = paramci(MU_l1,'Alpha',.1)
R90_l1=ci90_l1(2)-ci90_l1(1)
RelativeCI90_l1=R90_l1/mean(load_1)
%95 ci

ci95_l1 = paramci(MU_l1,'Alpha',.05)
R95_l1=ci95_l1(2)-ci95_l1(1)
RelativeCI95_l1=R95_l1/mean(load_1)
% 99 ci
 
ci99_l1 = paramci(MU_l1,'Alpha',.01)
R99_l1=ci99_l1(2)-ci99_l1(1)
RelativeCI99_l1=R99_l1/mean(load_1)
%%%

% queuing ratio

MU_Q1=fitdist(queue_ratio_1,'Normal')

%90 ci
ci90_Q1 = paramci(MU_Q1,'Alpha',.1)
R90_Q1=ci90_Q1(2)-ci90_Q1(1)
RelativeCI90_Q1=R90_Q1/mean(queue_ratio_1)

%95 ci 
ci95_Q1 = paramci(MU_Q1,'Alpha',.05)
R95_Q1=ci95_Q1(2)-ci95_Q1(1)
RelativeCI95_Q1=R95_Q1/mean(queue_ratio_1)

% 99 ci 
ci99_Q1 = paramci(MU_Q1,'Alpha',.01)
R99_Q1=ci99_Q1(2)-ci99_Q1(1)
RelativeCI99_Q1=R99_Q1/mean(queue_ratio_1)
%%%


%%%%%%% Second mat file
load q10st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

% Load
MU_l2=fitdist(load_2,'Normal')

%90 ci
ci90_l2 = paramci(MU_l2,'Alpha',.1)
R90_l2=ci90_l2(2)-ci90_l2(1)
RelativeCI90_l2=R90_l2/mean(load_2)

%95 ci
ci95_l2 = paramci(MU_l2,'Alpha',.05)
R95_l2=ci95_l2(2)-ci95_l2(1)
RelativeCI95_l2=R95_l2/mean(load_2)

% 99 ci 
ci99_l2 = paramci(MU_l2,'Alpha',.01)
R99_l2=ci99_l2(2)-ci99_l2(1)
RelativeCI99_l2=R99_l2/mean(load_2)

% queuing ratio
MU_Q2=fitdist(queue_ratio_2,'Normal')

%90 ci
ci90_Q2 = paramci(MU_Q2,'Alpha',.1)
R90_Q2=ci90_Q2(2)-ci90_Q2(1)
RelativeCI90_Q2=R90_Q2/mean(queue_ratio_2)

%95 ci 
ci95_Q2 = paramci(MU_Q2,'Alpha',.05)
R95_Q2=ci95_Q2(2)-ci95_Q2(1)
RelativeCI95_Q2=R95_Q2/mean(queue_ratio_2)

% 99 ci 
ci99_Q2 = paramci(MU_Q2,'Alpha',.01)
R99_Q2=ci99_Q2(2)-ci99_Q2(1)
RelativeCI99_Q2=R99_Q2/mean(queue_ratio_2)
%%%


%%%%%%%third mat file
load q10st60.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%

% Load

MU_l3=fitdist(load_3,'Normal')

%90 ci
ci90_l3 = paramci(MU_l3,'Alpha',.1)
R90_l3=ci90_l3(2)-ci90_l3(1)
RelativeCI90_l3=R90_l3/mean(load_3)

%95 ci
ci95_l3 = paramci(MU_l3,'Alpha',.05)
R95_l3=ci95_l3(2)-ci95_l3(1)
RelativeCI95_l3=R95_l3/mean(load_3)

% 99 ci 
ci99_l3 = paramci(MU_l3,'Alpha',.01)
R99_l3=ci99_l3(2)-ci99_l3(1)
RelativeCI99_l3=R99_l3/mean(load_3)
%%%%

% queuing ratio
MU_Q3=fitdist(queue_ratio_3,'Normal') 

%90 ci
ci90_Q3 = paramci(MU_Q3,'Alpha',.1)
R90_Q3=ci90_Q3(2)-ci90_Q3(1)
RelativeCI90_Q3=R90_Q3/mean(queue_ratio_3)

%95 ci 
ci95_Q3 = paramci(MU_Q3,'Alpha',.05)
R95_Q3=ci95_Q3(2)-ci95_Q3(1)
RelativeCI95_Q3=R95_Q3/mean(queue_ratio_3)

% 99 ci 
ci99_Q3 = paramci(MU_Q3,'Alpha',.01)
R99_Q3=ci99_Q3(2)-ci99_Q3(1)
RelativeCI99_Q3=R99_Q3/mean(queue_ratio_3)
%%%



%%%%%%%fourth mat file
load q10st80.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%

% Load

MU_l4=fitdist(load_4,'Normal')

%90 ci
ci90_l4 = paramci(MU_l4,'Alpha',.1)
R90_l4=ci90_l4(2)-ci90_l4(1)
RelativeCI90_l4=R90_l4/mean(load_4)

%95 ci
ci95_l4 = paramci(MU_l4,'Alpha',.05)
R95_l4=ci95_l4(2)-ci95_l4(1)
RelativeCI95_l4=R95_l4/mean(load_4)

% 99 ci 
ci99_l4 = paramci(MU_l4,'Alpha',.01)
R99_l4=ci99_l4(2)-ci99_l4(1)
RelativeCI99_l4=R99_l4/mean(load_4)
%%%%

%%%%

% queuing ratio

MU_Q4=fitdist(queue_ratio_4,'Normal')

%90 ci
ci90_Q4 = paramci(MU_Q4,'Alpha',.1)
R90_Q4=ci90_Q4(2)-ci90_Q4(1)
RelativeCI90_Q4=R90_Q4/mean(queue_ratio_4)

%95 ci 
ci95_Q4 = paramci(MU_Q4,'Alpha',.05)
R95_Q4=ci95_Q4(2)-ci95_Q4(1)
RelativeCI95_Q4=R95_Q4/mean(queue_ratio_4)

% 99 ci 
ci99_Q4 = paramci(MU_Q4,'Alpha',.01)
R99_Q4=ci99_Q4(2)-ci99_Q4(1)
RelativeCI99_Q4=R99_Q4/mean(queue_ratio_4)
%%%


x=[25 40 60 80]
x = categorical({'25' '40' '60' '80'});
x = reordercats(x,{'25' '40' '60' '80'});

L90=[RelativeCI90_l1 RelativeCI90_l2 RelativeCI90_l3 RelativeCI90_l4]
L95=[RelativeCI95_l1 RelativeCI95_l2 RelativeCI95_l3 RelativeCI95_l4]
L99=[RelativeCI99_l1 RelativeCI99_l2 RelativeCI99_l3 RelativeCI99_l4]
figure;
plot(x,L90/2,'*-g','LineWidth',2), hold on,
plot(x,L95/2,'*-b','LineWidth',2), hold on,
plot(x,L99/2,'*-r','LineWidth',2);
title('Effect of size(load) on the rel. sizes of the CI');legend('90% CI','95% CI','99% CI');
xlabel('service time');
ylabel('Relative size of Confidence interval');
grid on;

Q90=[RelativeCI90_Q1 RelativeCI90_Q2 RelativeCI90_Q3 RelativeCI90_Q4]
Q95=[RelativeCI95_Q1 RelativeCI95_Q2 RelativeCI95_Q3 RelativeCI95_Q4]
Q99=[RelativeCI99_Q1 RelativeCI99_Q2 RelativeCI99_Q3 RelativeCI99_Q4]

figure;
plot(x,Q90/2,'*-g','LineWidth',2), hold on,
plot(x,Q95/2,'*-b','LineWidth',2), hold on,
plot(x,Q99/2,'*-r','LineWidth',2);

title('Effect of Queuing Ratio on rel. sizes of CI');legend('90% CI','95% CI','99% CI');
xlabel('service time');
ylabel('Relative size of Confidence interval');
grid on;