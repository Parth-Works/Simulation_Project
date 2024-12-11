
clc;
clear all;
close all;

%  impact of the length of the batches on the size of the confidence intervals.

%%%%reference mat file
load q4al100.mat
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
load q4al500.mat
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
load q4al1000.mat
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
load q4al3000.mat
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

%%%%%%%fifth mat file
load q4al5000.mat
number_of_batches_5=SM(:,1);
load_5=SM(:,2);
loss_ratio_5=SM(:,3);
queue_ratio_5=SM(:,4);
dep_queued_5=SM(:,5);
Waiting_time_5=SM(:,6);
%%%
%90 ci
MU51=fitdist(load_5,'Normal') 
ci51 = paramci(MU51,'Alpha',.1)
R90_5=ci51(2)-ci51(1)
%95 ci
MU52=fitdist(load_5,'Normal') 
ci52 = paramci(MU52,'Alpha',.05)
R95_5=ci52(2)-ci52(1) 

% 99 ci
MU53=fitdist(load_5,'Normal') 
ci53 = paramci(MU53,'Alpha',.01)
R99_5=ci53(2)-ci53(1)
%%%%%%%sixth mat file
load q4al7000.mat
number_of_batches_6=SM(:,1);
load_6=SM(:,2);
loss_ratio_6=SM(:,3);
queue_ratio_6=SM(:,4);
dep_queued_6=SM(:,5);
Waiting_time_6=SM(:,6);
%%%
%90 ci
MU61=fitdist(load_6,'Normal') 
ci61 = paramci(MU61,'Alpha',.1)
R90_6=ci61(2)-ci61(1)
%95 ci
MU62=fitdist(load_6,'Normal') 
ci62 = paramci(MU62,'Alpha',.05)
R95_6 = ci62(2)-ci62(1) 
% 99 ci
MU63=fitdist(load_6,'Normal') 
ci63 = paramci(MU63,'Alpha',.01)
R99_6=ci63(2)-ci63(1)
%%%

%%%%%%%seventh mat file
load q4al10000.mat
number_of_batches_7=SM(:,1);
load_7=SM(:,2);
loss_ratio_7=SM(:,3);
queue_ratio_7=SM(:,4);
dep_queued_7=SM(:,5);
Waiting_time_7=SM(:,6);
%%%
%90 ci
MU71=fitdist(load_7,'Normal') 
ci71 = paramci(MU71,'Alpha',.1)
R90_7=ci71(2)-ci71(1)
%95 ci
MU72=fitdist(load_7,'Normal') 
ci72 = paramci(MU72,'Alpha',.05)
R95_7 = ci72(2)-ci72(1) 

% 99 ci
MU73=fitdist(load_7,'Normal') 
ci73 = paramci(MU73,'Alpha',.01)
R99_7=ci73(2)-ci73(1)
%%%
%%%%%%%eithth mat file
load q4al15000.mat
number_of_batches_8=SM(:,1);
load_8=SM(:,2);
loss_ratio_8=SM(:,3);
queue_ratio_8=SM(:,4);
dep_queued_8=SM(:,5);
Waiting_time_8=SM(:,6);
%%%
%90 ci
MU81=fitdist(load_8,'Normal') 
ci81 = paramci(MU81,'Alpha',.1)
R90_8=ci81(2)-ci81(1)
%95 ci
MU82=fitdist(load_8,'Normal') 
ci82 = paramci(MU82,'Alpha',.05)
R95_8 = ci82(2)-ci82(1) 
% 99 ci
MU83=fitdist(load_8,'Normal') 
ci83 = paramci(MU83,'Alpha',.01)
R99_8=ci83(2)-ci83(1)
%%%
%%%%%%%ninth mat file
load q4al20000.mat
number_of_batches_9=SM(:,1);
load_9=SM(:,2);
loss_ratio_9=SM(:,3);
queue_ratio_9=SM(:,4);
dep_queued_9=SM(:,5);
Waiting_time_9=SM(:,6);
%%%
%90 ci
MU91=fitdist(load_9,'Normal') 
ci91 = paramci(MU91,'Alpha',.1)
R90_9=ci91(2)-ci91(1)
%95 ci
MU92=fitdist(load_9,'Normal') 
ci92 = paramci(MU92,'Alpha',.05)
R95_9 = ci92(2)-ci92(1) 

% 99 ci
MU93=fitdist(load_9,'Normal') 
ci93 = paramci(MU93,'Alpha',.01)
R99_9=ci93(2)-ci93(1)
%%%

%%%
%%%
% figure;
% plot(lag1Corr_1,'*g'),hold on,
% plot(lag1Corr_2,'*r'), hold on,
% plot(lag1Corr_3,'*b'), hold on,
% plot(lag1Corr_4,'*m')%axis([-1 1 -1 1]);
%  x1=[50 100 200 500 700 1000 2500 5000 7500 10000 ]
%  y1=[ci21(1:1) ci51(1:1) ci11(1:1) ci31(1:1) ci61(1:1) ci41(1:1) ci71(1:1) ci81(1:1) ci91(1:1) ci101(1:1) ]
%  x2=[50 100 200 500 700 1000 2500 5000 7500 10000 ]
%  y2=[ci22(1:1) ci52(1:1) ci12(1:1) ci32(1:1) ci62(1:1) ci42(1:1) ci72(1:1) ci82(1:1) ci92(1:1) ci102(1:1) ]
%  x3=[50 100 200 500 700 1000 2500 5000 7500 10000 ]
%  y3=[ci23(1:1) ci53(1:1) ci13(1:1) ci33(1:1) ci63(1:1) ci43(1:1) ci73(1:1) ci83(1:1) ci93(1:1) ci103(1:1) ]
%  
%  
%  
%  figure;
%  plot(x1,y1,'*-g'), hold on
%  plot(x2,y2,'*-r'), hold on
%  plot(x3,y3,'*-b'), hold on

x=[100 500 1000 3000 5000 7000 10000 15000 20000];
x = categorical({'100','500','1000','3000','10000','20000'});
x = reordercats(x,{'100','500','1000','3000','10000','20000'});

y1=[R90_1 R90_2 R90_3 R90_4 R90_7 R90_9];
y2=[R95_1 R95_2 R95_3 R95_4 R95_7 R95_9 ];
y3=[R99_1 R99_2 R99_3 R99_4 R99_7 R99_9 ];

%ylim([-0.1 0.5]);

figure;
plot(x,y1,'o-g','LineWidth',2);hold on;
plot(x,y2,'o-r','LineWidth',2);hold on;
plot(x,y3,'o-b','LineWidth',2);

title('Effect(Length of Batches) on size(confidence interval)');legend('90% CI','95% CI','99% CI');
xlabel('Length of Batches');
ylabel('Size of Confidence interval');
grid on;