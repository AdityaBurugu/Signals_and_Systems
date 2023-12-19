close all
clear all

b = [1];

a = [1 -1 0.9];

n = 0:3:100;

x1 = 1.*(n==0)+0.*(n~=0);
y1 = filter(b,a,x1);

subplot(3,2,1);
stem(n,x1);
xlabel("Time");
ylabel("Amplitude");
title("Unit Impulse");

subplot(3,2,2);
stem(n,y1);
xlabel("Time");
ylabel("Amplitude");
title("Response of Unit Impulse");

x2 = 1.*(n>=0)+0.*(n<0);
y2 = filter(b,a,x2);

subplot(3,2,3);
stem(n,x2);
xlabel("Time");
ylabel("Amplitude");
title("Unit Step");

subplot(3,2,4);
stem(n,y2);
xlabel("Time");
ylabel("Amplitude");
title("Response of Unit Step");

n = 0:1:8*pi;

x3 = sin(n);
y3 = filter(b,a,x3);

subplot(3,2,5);
stem(n,x3);
xlabel("Time");
ylabel("Amplitude");
title("Sinusoidal");

subplot(3,2,6);
stem(n,y3);
xlabel("Time");
ylabel("Amplitude");
title("Response of Sinusoidal");


figure;
zplane(b,a);