close all
clear all

t1 = -3:0.01:3;
x = 1.*((t1>=0)&(t1<=2))+0.*((t1<0)&(t1>2));

t2 = -t1;

a = min(t1)+min(t2);
b = max(t1)+max(t2);

t = a:0.01:b;
RXX = xcorr(x,x);

subplot(2,3,1);
plot(t1,x);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal(4D4)");

subplot(2,3,2);
plot(t2,x);
xlabel("Time");
ylabel("Amplitude");
title("Received Signal(4D4)");

subplot(2,3,3);
plot(t,RXX);
xlabel("Time");
ylabel("Amplitude");
title("Auto Correlation(4D4)");

%Cross Correlation
t1 = -3:0.01:3;
x = 1.*((t1>=0)&(t1<=2))+0.*((t1<0)&(t1>2));

t2 = -3:0.01:3;
y = 1.*((t2>=0)&(t2<=3))+0.*((t2<0)&(t2>3));
t3 = -t2;

a = min(t1)+min(t3);
b = max(t1)+max(t3);

t = a:0.01:b;
RXY = xcorr(x,y);

subplot(2,3,4);
plot(t1,x);
xlabel("Time");
ylabel("Amplitude");
title("Input Signal(4D4)");

subplot(2,3,5);
plot(t3,y);
xlabel("Time");
ylabel("Amplitude");
title("Received Signal(4D4)");

subplot(2,3,6);
plot(t,RXY);
xlabel("Time");
ylabel("Amplitude");
title("Cross Correlation(4D4)");