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
title("Input Signal(4D3)");

subplot(3,2,2);
plot(f);
xlabel("Time");
ylabel("Amplitude");
title("Combined Signal(4D3)");

Rs = xcorr(s,s);
Rn = xcorr(n,n);
Rf = xcorr(f,f);

R = Rs+Rn;

subplot(3,2,3);
plot(Rs);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation Rsc(4D3)");

subplot(3,2,4);
plot(Rn);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation Rnc(4D3)");

subplot(3,2,5);
plot(Rf);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation Rfc(4D3)");

subplot(3,2,6);
plot(R);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation R(4D3)");