clc;
clear all;
close all;

%%%%first mat file
load q7st25.mat
number_of_batches_1=SM(:,1);
load_1=SM(:,2);
loss_ratio_1=SM(:,3);
queue_ratio_1=SM(:,4);
dep_queued_1=SM(:,5);
Waiting_time_1=SM(:,6);
%%%
%90 ci
MU11=fitdist(loss_ratio_1,'Normal') 
ci11 = paramci(MU11,'Alpha',.1)
%95 ci
MU12=fitdist(loss_ratio_1,'Normal') 
ci12 = paramci(MU12,'Alpha',.05)
R95_1=ci12(2)-ci12(1)

% 99 ci
MU13=fitdist(loss_ratio_1,'Normal') 
ci13 = paramci(MU13,'Alpha',.01)
%%%%%%% Second mat file
load q7st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%
%90 ci
MU21=fitdist(loss_ratio_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
%95 ci
MU22=fitdist(loss_ratio_2,'Normal') 
ci22 = paramci(MU22,'Alpha',.05)
R95_2=ci22(2)-ci22(1)

% 99 ci
MU23=fitdist(loss_ratio_2,'Normal') 
ci23 = paramci(MU23,'Alpha',.01)

%%%%%%%third mat file
load q7st60.mat
number_of_batches_3=SM(:,1);
load_3=SM(:,2);
loss_ratio_3=SM(:,3);
queue_ratio_3=SM(:,4);
dep_queued_3=SM(:,5);
Waiting_time_3=SM(:,6);
%%%
%90 ci
MU31=fitdist(loss_ratio_3,'Normal') 
ci31 = paramci(MU31,'Alpha',.1)
%95 ci
MU32=fitdist(loss_ratio_3,'Normal') 
ci32 = paramci(MU32,'Alpha',.05)
R95_3=ci32(2)-ci32(1)

% 99 ci
MU33=fitdist(loss_ratio_3,'Normal') 
ci33 = paramci(MU33,'Alpha',.01)
%%%%%%%fourth mat file
load q7st80.mat
number_of_batches_4=SM(:,1);
load_4=SM(:,2);
loss_ratio_4=SM(:,3);
queue_ratio_4=SM(:,4);
dep_queued_4=SM(:,5);
Waiting_time_4=SM(:,6);
%%%
%90 ci
MU41=fitdist(loss_ratio_4,'Normal') 
ci41 = paramci(MU41,'Alpha',.1)
%95 ci
MU42=fitdist(loss_ratio_4,'Normal') 
ci42 = paramci(MU42,'Alpha',.05)
R95_4=ci42(2)-ci42(1)

% 99 ci
MU43=fitdist(loss_ratio_4,'Normal') 
ci43 = paramci(MU43,'Alpha',.01)
%%%

x=[25 40 60 80]
y=[R95_1 R95_2 R95_3 R95_4]
figure;
plot(x,y);