close all;
clear all;

%time range
t=-5:1:5;

%Unit Impulse Signal
impulse=1.*(t==0)+0.*(t~=0);
subplot(4,3,1);
stem(t,impulse)
xlabel("Time");
ylabel("Amplitude");
title("Unit Impulse(4D3)");
axis([min(t),max(t), min(impulse)-0.5,max(impulse)+0.5]);

%Unit Step Signal
step=1.*(t>=0)+0.*(t<0);
subplot(4,3,2);
stem(t,step)
xlabel("Time");
ylabel("Amplitude");
title("Unit Step(4D3)");
axis([min(t),max(t), min(step)-0.5,max(step)+0.5]);

%Unit Ramp Signal
ramp=t.*(t>=0)+0.*(t<0);
subplot(4,3,3);
stem(t,ramp)
xlabel("Time");
ylabel("Amplitude");
title("Unit Ramp(4D3)");
axis([min(t),max(t), min(ramp)-0.5,max(ramp)+0.5]);

%Unit Parabolic Signal
parabolic=t.^2/2.*(t>=0)+0.*(t<0);
subplot(4,3,4);
stem(t,parabolic)
xlabel("Time");
ylabel("amplitude");
title("Unit Parabolic(4D3)");
axis([min(t),max(t), min(parabolic)-0.5,max(parabolic)+0.5]);


%Unit Square Signal
square=1.*(abs(t)<=0.5)+0.*(abs(t)>0.5);
subplot(4,3,5);
stem(t,square)
xlabel("Time");
ylabel("Amplitude");
title("Unit Square(4D3)");
axis([min(t),max(t), min(square)-0.5,max(square)+0.5]);

%Unit Triangular Signal
triangular=(1-(abs(t)/2)).*(abs(t)<=2)+0.*(abs(t)>2);
subplot(4,3,6);
stem(t,triangular)
xlabel("Time");
ylabel("Amplitude");
title("Unit Triangular(4D3)");
axis([min(t),max(t), min(triangular)-0.5,max(triangular)+0.5]);

%Unit Signum Signal
signum=1.*(t>=0)-1.*(t<0);
subplot(4,3,7);
stem(t,signum)
xlabel("Time");
ylabel("Amplitude");
title("Unit Signum(4D3)");
axis([min(t),max(t), min(signum)-0.5,max(signum)+0.5]);

%Unit Sinc Signal
u_sinc=sinc(t);
subplot(4,3,8);
stem(t,u_sinc)
xlabel("Time");
ylabel("Amplitude");
title("Unit Sinc(4D3)");
axis([min(t),max(t), min(u_sinc)-0.5,max(u_sinc)+0.5]);


%Unit Real Exponential Signal
real_exponential=exp(5.*t).*(t>=0)+0.*(t<0);
subplot(4,3,9);
stem(t,real_exponential)
xlabel("Time");
ylabel("Amplitude");
title("Unit Real Exponential(4D3)");
axis([min(t),max(t), min(real_exponential)-0.5,max(real_exponential)+0.5]);

%time interval for sin and cos Signals
t1=0:pi/12:2*pi;

%Unit Sin Signal
u_sin=sin(t1);
subplot(4,3,10);
stem(t1,u_sin)
xlabel("Time");
ylabel("Amplitude");
title("Unit Sinusoidal(4D3)");
axis([min(t1),max(t1), min(u_sin)-0.5,max(u_sin)+0.5]);

%Unit Cosine Signal
u_cos=cos(t1);
subplot(4,3,11);
stem(t1,u_cos)
xlabel("Time");
ylabel("Amplitude");
title("Unit Cosinusoidal(4D3)");
axis([min(t1),max(t1), min(u_cos)-0.5,max(u_cos)+0.5]);

%time interval for saw tooth Signal
F=input('enter the frequency:');
T=1/F;
t=0:5*T/100:5*T;

%Umit Sawtooth Signal
u_saw_tooth=sawtooth(2*pi*F*t,1/2);
subplot(4,3,12);
stem(t,u_saw_tooth)
xlabel("Time");
ylabel("Amplitude");
title("Unit Saw Tooth(4D3)");
axis([min(t),max(t), min(u_saw_tooth)-0.5,max(u_saw_tooth)+0.5]);

