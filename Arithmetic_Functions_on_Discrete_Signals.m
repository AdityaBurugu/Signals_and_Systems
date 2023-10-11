clear all
close all

%time range
t=-5:1:+5;

%Signal 1
Signal_1 = (t+2).*(t>=-2 & t<=-1) + (1).*(t>-1 & t<=0)+ (2).*(t>0 & t<=1)+ (2-t).*(t>1 & t<=2);

subplot(3,3,1);
stem(t,Signal_1);
xlabel("Time");
ylabel("Amplitude");
title("Signal 1");
axis([min(t),max(t),min(Signal_1)-0.5,max(Signal_1)+0.5]);

%Signal 1
Signal_2 = (1).*(t>=-2 & t<=-1)+ (2).*(t>-1 & t<=1) + (1).*(t>1 & t<=2) + (3-t).*(t>2 & t<=3);

subplot(3,3,2);
stem(t,Signal_2);
xlabel("Time");
ylabel("Amplitude");
title("Signal 2");
axis([min(t),max(t),min(Signal_2)-0.5,max(Signal_2)+0.5]);

%Signal Addition
Signal_Addition = Signal_1 + Signal_2;

subplot(3,3,3);
stem(t,Signal_Addition);
xlabel("Time");
ylabel("Amplitude");
title("Signal Addition(4D4)");
axis([min(t),max(t),min(Signal_Addition)-0.5,max(Signal_Addition)+0.5]);

%Signal Multiplication
Signal_Multiplication = Signal_1 .* Signal_2;

subplot(3,3,4);
stem(t,Signal_Multiplication);
xlabel("Time");
ylabel("Amplitude");
title("Signal Multiplication(4D4)");
axis([min(t),max(t),min(Signal_Multiplication)-0.5,max(Signal_Multiplication)+0.5]);

%Signal Subtraction
Signal_Subtraction = Signal_1 - Signal_2;

subplot(3,3,5);
stem(t,Signal_Subtraction);
xlabel("Time");
ylabel("Amplitude");
title("Signal Subtraction(4D4)");
axis([min(t),max(t),min(Signal_Subtraction)-0.5,max(Signal_Subtraction)+0.5]);

%Signal Division
Signal_Division = Signal_1 ./ Signal_2;

subplot(3,3,6);
stem(t,Signal_Division);
xlabel("Time");
ylabel("Amplitude");
title("Signal Division(4D4)");
axis([min(t),max(t),min(Signal_Division)-0.5,max(Signal_Division)+0.5]);

%Signal Exponential
Signal_Exponential = Signal_1 .^ Signal_2;

subplot(3,3,7);
stem(t,Signal_Exponential);
xlabel("Time");
ylabel("Amplitude");
title("Signal Exponential(4D4)");
axis([min(t),max(t),min(Signal_Exponential)-0.5,max(Signal_Exponential)+0.5]);