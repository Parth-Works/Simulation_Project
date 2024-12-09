function [R90, R95, R99] = AbsconfidenceIntv(value)

%confidence-Interval
MU=fitdist(value,'Normal') ;

%90 ci
ci90 = paramci(MU,'Alpha',.1);
R90=((ci90(2)-ci90(1))/2);

%95 ci 
ci95 = paramci(MU,'Alpha',.05);
R95=((ci95(2)-ci95(1))/2);

% 99 ci
ci99 = paramci(MU,'Alpha',.01);
R99=((ci99(2)-ci99(1))/2);