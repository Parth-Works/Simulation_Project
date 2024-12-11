%q3sol
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lambda=8;
mu=10;

%  [N1,T1]=Q3(lambda,mu);
%  [N2,T2]=Q3mod(lambda,mu);
 
for kk=1:200
    [QRmm5]=Q19mm5(lambda, mu);       
    [QRmu5]=Q19mu5(lambda, mu); 
    [QRum5]=Q19um5(lambda, mu); 
    [QRuu5]=Q19uu5(lambda, mu); 
%     Tmean(kk)=mean(T)
%     Nmean(kk)=mean(N)
      mQRmm5(kk)=mean(QRmm5);
      mQRmu5(kk)=mean(QRmu5);
      mQRum5(kk)=mean(QRum5);
      mQRuu5(kk)=mean(QRuu5);
      
end
% figure,plot(Tmean)
% figure,plot(Nmean)
figure,plot(mQRmu5)



[xQr1,lags11] = xcorr(mQRmm5-mean(mQRmm5),1,'coeff');
lag1Corr_mm5=xQr1(1)
[xQr2,lags21] = xcorr(mQRmu5-mean(mQRmu5),1,'coeff');
lag1Corr_mu5=xQr1(1)
[xQr3,lags31] = xcorr(mQRum5-mean(mQRum5),1,'coeff');
lag1Corr_um5=xQr1(1)
[xQr4,lags41] = xcorr(mQRuu5-mean(mQRuu5),1,'coeff');
lag1Corr_uu5=xQr1(1)

