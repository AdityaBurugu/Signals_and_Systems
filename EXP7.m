close all
clear all4G4

b = [1];

a = [1 -1 0.9];

n = 0:3:100;

x1 = 1.*(n==0)+0.*(n~=0);
y1 = filter(b,a,x1);

subplot(3,2,1);
stem(n,x1);
xlabel("Time");
ylabel("Amplitude");
title("Unit Impulse(4D3)");

subplot(3,2,2);
stem(n,y1);
xlabel("Time");
ylabel("Amplitude");
title("Response of Unit Impulse(4D3)");

x2 = 1.*(n>=0)+0.*(n<0);
y2 = filter(b,a,x2);

subplot(3,2,3);
stem(n,x2);
xlabel("Time");
ylabel("Amplitude");
title("Unit Step(4D3)");

subplot(3,2,4);
stem(n,y2);
xlabel("Time");
ylabel("Amplitude");
title("Response of Unit Step(4D3)");

n = 0:1:8*pi;

x3 = sin(n);
y3 = filter(b,a,x3);

subplot(3,2,5);
stem(n,x3);
xlabel("Time");
ylabel("Amplitude");
title("Sinusoidal(4D3)");

subplot(3,2,6);
stem(n,y3);
xlabel("Time");
ylabel("Amplitude");
title("Response of Sinusoidal(4D3)");


figure;
zplane(b,a);