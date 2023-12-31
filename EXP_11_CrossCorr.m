close all
clear all

t = 0:0.1:8*pi;
s = sin(t);

n  = randn([1 252]);

f = s+n;

c = cos(t);

subplot(4,2,1);
plot(s);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal(20)");

subplot(4,2,2);
plot(f);
xlabel("Time");
ylabel("Amplitude");
title("Combined Signal(20)");

subplot(4,2,3);
plot(c);
xlabel("Time");
ylabel("Amplitude");
title("Constant Signal(20)");

Rsc = xcorr(s,c);
Rnc = xcorr(n,c);
Rfc = xcorr(f,c);

R = Rsc+Rnc;

subplot(4,2,4);
plot(Rsc);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rsc(20)");

subplot(4,2,5);
plot(Rnc);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rnc(20)");

subplot(4,2,6);
plot(Rfc);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation Rfc(20)");

subplot(4,2,7);
plot(R);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation R(20)");