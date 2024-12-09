clc;
clear all;
close all;

%%%%first mat file
load q8st25.mat
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
%95 ci
MU12=fitdist(load_1,'Normal') 
ci12 = paramci(MU12,'Alpha',.05)
R95_11=ci12(2)-ci12(1)
% 99 ci
MU13=fitdist(load_1,'Normal') 
ci13 = paramci(MU13,'Alpha',.01)
%%%%

%90 ci
MU14=fitdist(queue_ratio_1,'Normal') 
ci14 = paramci(MU14,'Alpha',.1)
%95 ci
MU15=fitdist(queue_ratio_1,'Normal') 
ci15 = paramci(MU15,'Alpha',.05)
R95_12=ci15(2)-ci15(1)
% 99 ci
MU16=fitdist(queue_ratio_1,'Normal') 
ci16 = paramci(MU16,'Alpha',.01)


%%%%%%% Second mat file
load q8st40.mat
number_of_batches_2=SM(:,1);
load_2=SM(:,2);
loss_ratio_2=SM(:,3);
queue_ratio_2=SM(:,4);
dep_queued_2=SM(:,5);
Waiting_time_2=SM(:,6);
%%%
%90 ci
MU21=fitdist(load_2,'Normal') 
ci21 = paramci(MU21,'Alpha',.1)
%95 ci
MU22=fitdist(load_2,'Normal') 
ci22 = paramci(MU22,'Alpha',.05)
R95_21=ci22(2)-ci22(1)
% 99 ci
MU23=fitdist(load_2,'Normal') 
ci23 = paramci(MU23,'Alpha',.01)
%%%%
%90 ci
MU24=fitdist(queue_ratio_2,'Normal') 
ci24 = paramci(MU24,'Alpha',.1)
%95 ci
MU25=fitdist(queue_ratio_2,'Normal') 
ci25 = paramci(MU25,'Alpha',.05)
R95_22=ci25(2)-ci25(1)
% 99 ci
MU26=fitdist(queue_ratio_2,'Normal') 
ci26 = paramci(MU26,'Alpha',.01)


%%%%%%%third mat file
load q8st60.mat
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
%95 ci
MU32=fitdist(load_3,'Normal') 
ci32 = paramci(MU32,'Alpha',.05)
R95_31=ci32(2)-ci32(1)
% 99 ci
MU33=fitdist(load_3,'Normal') 
ci33 = paramci(MU33,'Alpha',.01)
%%%%
%90 ci
MU34=fitdist(queue_ratio_3,'Normal') 
ci34 = paramci(MU34,'Alpha',.1)
%95 ci
MU35=fitdist(queue_ratio_3,'Normal') 
ci35 = paramci(MU35,'Alpha',.05)
R95_32=ci35(2)-ci35(1)
% 99 ci
MU36=fitdist(queue_ratio_3,'Normal') 
ci36 = paramci(MU36,'Alpha',.01)



%%%%%%%fourth mat file
load q8st80.mat
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
%95 ci
MU42=fitdist(load_4,'Normal') 
ci42 = paramci(MU42,'Alpha',.05)
R95_41=ci42(2)-ci42(1)
% 99 ci
MU43=fitdist(load_4,'Normal') 
ci43 = paramci(MU43,'Alpha',.01)
%%%%
%90 ci
MU44=fitdist(queue_ratio_4,'Normal') 
ci44 = paramci(MU44,'Alpha',.1)
%95 ci
MU45=fitdist(queue_ratio_1,'Normal') 
ci45 = paramci(MU45,'Alpha',.05)
R95_42=ci45(2)-ci45(1)
% 99 ci
MU46=fitdist(queue_ratio_4,'Normal') 
ci46 = paramci(MU46,'Alpha',.01)



x=[25 40 60 80]
y1=[R95_11 R95_21 R95_31 R95_41]
y2=[R95_12 R95_22 R95_32 R95_42]
figure;
plot(x,y1,'*-r'), hold on, plot(x,y2,'*-b');