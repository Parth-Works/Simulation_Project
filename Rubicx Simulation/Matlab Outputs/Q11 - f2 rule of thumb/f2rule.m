clc;
clear all;
close all;

% Validate the f2 rule-of-thumb.

%%       Initialisation     %%%

% CI 90 
R90_Load5=[]; R90_Load10=[];

% CI 95
R95_Load5=[]; R95_Load10=[];

% CI 99
R99_Load5=[]; R99_Load10=[];

%%    K = 5

%%   for k = 5 and No. of batches = 50    %%%

load k5n50.mat

load_k5n50=SM(:,2);

% Load
[R90_Load5(1), R95_Load5(1), R99_Load5(1)] = confidenceIntv(load_k5n50)

%%   for k = 5 and No. of batches = 200    %%%

load k5n200.mat

load_k5n200=SM(:,2);

% Load
[R90_Load5(2), R95_Load5(2), R99_Load5(2)] = confidenceIntv(load_k5n200)

%%%%%%%%%%

%%   for k = 5 and No. of batches = 800    %%%

load k5n800.mat

load_k5n800=SM(:,2);

% Load
[R90_Load5(3), R95_Load5(3), R99_Load5(3)] = confidenceIntv(load_k5n800)

%%%%%%%%%%

%%   for k = 5 and No. of batches = 1800    %%%

load k5n1800.mat

load_k5n1800=SM(:,2);

% Load
[R90_Load5(4), R95_Load5(4), R99_Load5(4)] = confidenceIntv(load_k5n1800)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%  K = 10

%%   for k = 10 and No. of batches = 50    %%%

load k10n50.mat

load_k10n50=SM(:,2);

% Load
[R90_Load10(1), R95_Load10(1), R99_Load10(1)] = confidenceIntv(load_k10n50)

%%%%%%%%%%

%%   for k = 10 and No. of batches = 200    %%%

load k10n200.mat

load_k10n200=SM(:,2);

% Load
[R90_Load10(2), R95_Load10(2), R99_Load10(2)] = confidenceIntv(load_k10n200)

%%%%%%%%%%

%%   for k = 10 and No. of batches = 800    %%%

load k10n800.mat

load_k10n800=SM(:,2);

% Load
[R90_Load10(3), R95_Load10(3), R99_Load10(3)] = confidenceIntv(load_k10n800)

%%%%%%%%%%

%%   for k = 10 and No. of batches = 1800    %%%

load k10n1800.mat

load_k10n1800=SM(:,2);

% Load
[R90_Load10(4), R95_Load10(4), R99_Load10(4)] = confidenceIntv(load_k10n1800)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%   Plotting    %%%

x=[50 200 800 1800];
x = categorical({'n/4=50','n=200','4n=800','9n=1800'});
x = reordercats(x,{'n/4=50','n=200','4n=800','9n=1800'});

y1=R95_Load5;
y2=R95_Load10;

figure;
plot(x,y1,'*-g','LineWidth',2);hold on;
plot(x,y2,'*-b','LineWidth',2);

xlabel('No. of Batches');
title('f^2 Thumb Rule (95% CI)')
legend('k=5','k=10')
grid on;
