close all;
clear all;

t=-5:0.1:5;

x1=1.*(t==0)+0.*(t~=0);
subplot(4,3,1);
plot(t,x1)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Impulse(4D4)");
axis([min(t),max(t), min(x1)-0.5,max(x1)+0.5]);

x2=1.*(t>=0)+0.*(t<0);
subplot(4,3,2);
plot(t,x2)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Step(4D4)");
axis([min(t),max(t), min(x2)-0.5,max(x2)+0.5]);


x3=t.*(t>=0)+0.*(t<0);
subplot(4,3,3);
plot(t,x3)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Ramp(4D4)");
axis([min(t),max(t), min(x3)-0.5,max(x3)+0.5]);

x4=t.^2/2.*(t>=0)+0.*(t<0);
subplot(4,3,4);
plot(t,x4)
xlabel("Iime");
ylabel("amplitude");
title("Unit Parabolic(4D4)");
axis([min(t),max(t), min(x4)-0.5,max(x4)+0.5]);



x5=1.*(abs(t)<=0.5)+0.*(abs(t)>0.5);
subplot(4,3,5);
plot(t,x5)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Square(4D4)");
axis([min(t),max(t), min(x5)-0.5,max(x5)+0.5]);


x6=(1-(abs(t)/2)).*(abs(t)<=2)+0.*(abs(t)>2);
subplot(4,3,6);
plot(t,x6)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Triangular(4D4)");
axis([min(t),max(t), min(x6)-0.5,max(x6)+0.5]);


x7=1.*(t>=0)-1.*(t<0);
subplot(4,3,7);
plot(t,x7)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Signum(4D4)");
axis([min(t),max(t), min(x7)-0.5,max(x7)+0.5]);

x8=sinc(t);
subplot(4,3,8);
plot(t,x8)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Sinc(4D4)");


x9=exp(5.*t).*(t>=0)+0.*(t<0);
subplot(4,3,9);
plot(t,x9)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Real Exponential(4D4)");
axis([min(t),max(t), min(x9)-0.5,max(x9)+0.5]);


t1=0:pi/12:2*pi;

x10=sin(t);
subplot(4,3,10);
plot(t,x10)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Sinusoidal(4D4)");
axis([min(t),max(t), min(x10)-0.5,max(x10)+0.5]);

x11=cos(t);
subplot(4,3,11);
plot(t,x11)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Cosinusoidal(4D4)");
axis([min(t),max(t), min(x11)-0.5,max(x11)+0.5]);

T = 10*(1/50);
fs = 1000;
t = 0:1/fs:T-1/fs;


F=input('enter the frequency:');
T=1/F;
t=0:5*T/100:5*T;

x12=sawtooth(2*pi*F*t,1/2);
subplot(4,3,12);
plot(t,x12)
xlabel("Iime");
ylabel("Amplitude");
title("Unit Saw Tooth(4D4)");
axis([min(t),max(t), min(x12)-0.5,max(x12)+0.5]);

