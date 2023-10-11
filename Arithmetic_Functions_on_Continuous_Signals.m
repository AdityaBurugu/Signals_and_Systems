clear all
close all

t=-5:0.01:+5;

Signal_1 = (t+2).*(t>=-2 & t<=-1) + (1).*(t>-1 & t<=0)+ (2).*(t>0 & t<=1)+ (2-t).*(t>1 & t<=2);

subplot(3,2,1);
plot(t,Signal_1);
xlabel("Time");
ylabel("Amplitude");
title("Signal 1");
axis([min(t),max(t),min(Signal_1)-0.5,max(Signal_1)+0.5]);



Signal_2 = (1).*(t>=-2 & t<=-1)+ (2).*(t>-1 & t<=1) + (1).*(t>1 & t<=2) + (3-t).*(t>2 & t<=3);

subplot(3,2,2);
plot(t,Signal_2);
xlabel("Time");
ylabel("Amplitude");
title("Signal 2");
axis([min(t),max(t),min(Signal_2)-0.5,max(Signal_2)+0.5]);

Signal_Addition = Signal_1 + Signal_2;

subplot(3,2,3);
plot(t,Signal_Addition);
xlabel("Time");
ylabel("Amplitude");
title("Signal Addition(4D4)");
axis([min(t),max(t),min(Signal_Addition)-0.5,max(Signal_Addition)+0.5]);

Signal_Multiplication = Signal_1 .* Signal_2;

subplot(3,2,4);
plot(t,Signal_Multiplication);
xlabel("Time");
ylabel("Amplitude");
title("Signal Multiplication(4D4)");
axis([min(t),max(t),min(Signal_Multiplication)-0.5,max(Signal_Multiplication)+0.5]);

Signal_Subtraction = Signal_1 - Signal_2;

subplot(3,2,5);
plot(t,Signal_Subtraction);
xlabel("Time");
ylabel("Amplitude");
title("Signal Subtraction(4D4)");
axis([min(t),max(t),min(Signal_Subtraction)-0.5,max(Signal_Subtraction)+0.5]);

Signal_Division = Signal_1 ./ Signal_2;

subplot(3,2,6);
plot(t,Signal_Division);
xlabel("Time");
ylabel("Amplitude");
title("Signal Division(4D4)");
axis([min(t),max(t),min(Signal_Division)-0.5,max(Signal_Division)+0.5]);