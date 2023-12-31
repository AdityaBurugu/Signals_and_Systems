close all
clear all

n1 = -3:1:3;
x = [1,2,3,4,5,6,7];

n2 = -n1;

a = min(n1)+min(n2);
b = max(n1)+max(n2);

n = a:1:b;
RXX = xcorr(x,x);

subplot(2,3,1);
stem(n1,x);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal(20)");

subplot(2,3,2);
stem(n2,x);
xlabel("Time");
ylabel("Amplitude");
title("Received Signal");

subplot(2,3,3);
stem(n,RXX);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation(20)");

%Cross Correlation
n1 = -3:1:3;
x = [1,2,3,4,5,6,7];

n2 = -3:1:3;
y = [2,5,8,7,9,3,6];
n3 = -n2;

a = min(n1)+min(n3);
b = max(n1)+max(n3);

n = a:1:b;
RXY = xcorr(x,y);

subplot(2,3,4);
stem(n1,x);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal(20)");

subplot(2,3,5);
stem(n3,y);
xlabel("Time");
ylabel("Amplitude");
title("Received Signal(20)");

subplot(2,3,6);
stem(n,RXY);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation(20)");