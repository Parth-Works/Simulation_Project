clc;
clear all;
close all;

% impact of the average service time on the size of the confidence intervals.

%%%%first mat file
load q6st25.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%

%90 ci
MU11=fitdist(load_1,'Normal') 
ci11 = paramci(MU11,'Alpha',.1)
R90_1=ci11(2)-ci11(1)
%95 ci
MU12=fitdist(load_1,'Normal') 
ci12 = paramci(MU12,'Alpha',.05)
R95_1=ci12(2)-ci12(1)

% 99 ci
MU13=fitdist(load_1,'Normal') 
ci13 = paramci(MU13,'Alpha',.01)
R99_1=ci13(2)-ci13(1)

%%%%%%% Second mat file
load q6st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

%90 ci
MU21=fitdist(load_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
R90_2=ci21(2)-ci21(1)

%95 ci
MU22=fitdist(load_2,'Normal') 
ci22 = paramci(MU22,'Alpha',.05)
R95_2=ci22(2)-ci22(1) 

% 99 ci
MU23=fitdist(load_2,'Normal') 
ci23 = paramci(MU23,'Alpha',.01)
R99_2=ci23(2)-ci23(1)

%%%%%%%third mat file
load q6st60.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%

%90 ci
MU31=fitdist(load_3,'Normal') 
ci31 = paramci(MU31,'Alpha',.1)
R90_3=ci31(2)-ci31(1)
%95 ci
MU32=fitdist(load_3,'Normal') 
ci32 = paramci(MU32,'Alpha',.05)
R95_3=ci32(2)-ci32(1) 
% 99 ci
MU33=fitdist(load_3,'Normal') 
ci33 = paramci(MU33,'Alpha',.01)
R99_3=ci33(2)-ci33(1)


%%%%%%%fourth mat file
load q6st80.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%

%90 ci
MU41=fitdist(load_4,'Normal') 
ci41 = paramci(MU41,'Alpha',.1)
R90_4=ci41(2)-ci41(1)
%95 ci
MU42=fitdist(load_4,'Normal') 
ci42 = paramci(MU42,'Alpha',.05)
R95_4=ci42(2)-ci42(1) 
% 99 ci
MU43=fitdist(load_4,'Normal') 
ci43 = paramci(MU43,'Alpha',.01)
R99_4=ci43(2)-ci43(1)
%%%

x=[25 40 60 80];
x = categorical({'25' '40' '60' '80'});
x = reordercats(x,{'25' '40' '60' '80'});

y1=[R90_1 R90_2 R90_3 R90_4 ]
y2=[R95_1 R95_2 R95_3 R95_4 ]
y3=[R99_1 R99_2 R99_3 R99_4 ]


figure;
plot(x,y1,'*-g','LineWidth',2), hold on,
plot(x,y2,'*-b','LineWidth',2), hold on,
plot(x,y3,'*-r','LineWidth',2);
title('Effect of avg service time on the size of the confidence intervals');legend('90% CI','95% CI','99% CI');
xlabel('Average Service Time');
ylabel('Size of Confidence interval');
grid on;