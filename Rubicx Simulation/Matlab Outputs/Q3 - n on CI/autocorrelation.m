function lag1val = autocorrelation(value)

[xcMU,lag1] = xcorr(value-mean(value),1,'coeff');
lag1val=xcMU(1);
end