close all
clear all

t = 0:0.1:8*pi;
s = sin(t);

n  = randn([1 252]);

f = s+n;

subplot(3,2,1);
plot(s);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal");

subplot(3,2,2);
plot(f);
xlabel("Time");
ylabel("Amplitude");
title("Combined Signal");

Rs = xcorr(s,s);
Rn = xcorr(n,n);
Rf = xcorr(f,f);

R = Rs+Rn;

subplot(3,2,3);
plot(Rs);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rsc");

subplot(3,2,4);
plot(Rn);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rnc");

subplot(3,2,5);
plot(Rf);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rfc");

subplot(3,2,6);
plot(R);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation R");