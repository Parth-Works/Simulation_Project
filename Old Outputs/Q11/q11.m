clc
clear all;
close all;

% f2 rule-of-thumb.

%%%%%%%orginal mat file

load q11batch200.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%


% Loss ratio
%90 ci
MU11=fitdist(load_1,'Normal') 
ci11 = paramci(MU11,'Alpha',.1)
R90_1=ci11(2)-ci11(1)

%95 ci
 
ci12 = paramci(MU11,'Alpha',.05)
R95_1=ci12(2)-ci12(1)

% 99 ci

ci13 = paramci(MU11,'Alpha',.01)
R99_1=ci13(2)-ci13(1)

%%%%%%%new f2 mat file

load q11batch1800.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%

% Loss Ratio

%90 ci
MU21=fitdist(load_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
R90_2=ci21(2)-ci21(1)

%95 ci
 
ci22 = paramci(MU21,'Alpha',.05)
R95_2=ci22(2)-ci22(1)

% 99 ci

ci23 = paramci(MU21,'Alpha',.01)
R99_2=ci23(2)-ci23(1)

x=[200 1800];
x = categorical({'200','1800'});
x = reordercats(x,{'200','1800'});

y1=[R90_1 R90_2];
y2=[R95_1 R95_2];
y3=[R99_1 R99_2];

figure;
plot(x,y1,'*-g','LineWidth',2);hold on;
plot(x,y2,'*-r','LineWidth',2);hold on;
plot(x,y3,'*-b','LineWidth',2);

title('f^2 rule of Thumb');legend('90% CI','95% CI','99% CI');
xlabel('number of batches');
ylabel('Size of Confidence interval');
grid on;