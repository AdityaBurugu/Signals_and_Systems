%Time Range
t=-5:0.01:+5;

%Signal 1
Signal_1=Signal(t);
subplot(4,2,1);
plot(t,Signal_1);
xlabel("Time");
ylabel("Amplitude");
title("Signal 1");
axis([min(t),max(t),min(Signal_1)-0.5,max(Signal_1)+0.5]);

%Signal Left Shifting
Signal_Left_Shifting=Signal(t+3);
subplot(4,2,2);
plot(t,Signal_Left_Shifting);
xlabel("Time");
ylabel("Amplitude");
title("Signal Left Shifting(4D4)");
axis([min(t),max(t),min(Signal_Left_Shifting)-0.5,max(Signal_Left_Shifting)+0.5]);

%Signal Right Shifting
Signal_Right_Shifting=Signal(t-3);
subplot(4,2,3);
plot(t,Signal_Right_Shifting);
xlabel("Time");
ylabel("Amplitude");
title("Signal Right Shifting(4D4)");
axis([min(t),max(t),min(Signal_Right_Shifting)-0.5,max(Signal_Right_Shifting)+0.5]);

%Signal Amplitude Expansion
Signal_Amplitude_Expansion=2.*Signal(t);
subplot(4,2,4);
plot(t,Signal_Amplitude_Expansion);
xlabel("Time");
ylabel("Amplitude");
title("Signal Amplitude Expansion Scaling(4D4)");
axis([min(t),max(t),min(Signal_Amplitude_Expansion)-0.5,max(Signal_Amplitude_Expansion)+0.5]);

%Signal Amplitude Compression
Signal_Amplitude_Compression=0.5.*Signal(t);
subplot(4,2,5);
plot(t,Signal_Amplitude_Compression);
xlabel("Time");
ylabel("Amplitude");
title("Signal Amplitude Compression Scaling(4D4)");
axis([min(t),max(t),min(Signal_Amplitude_Compression)-0.5,max(Signal_Amplitude_Compression)+0.5]);

%Signal Time Compression
Signal_Time_Compression=Signal(2.*t);
subplot(4,2,6);
plot(t,Signal_Time_Compression);
xlabel("Time");
ylabel("Amplitude");
title("Signal Time Compression Scaling(4D4)");
axis([min(t),max(t),min(Signal_Time_Compression)-0.5,max(Signal_Time_Compression)+0.5]);

%Signal Time Expansion
Signal_Time_Expansion=Signal(0.5.*t);
subplot(4,2,7);
plot(t,Signal_Time_Expansion);
xlabel("Time");
ylabel("Amplitude");
title("Signal Time Expansion Scaling(4D4)");
axis([min(t),max(t),min(Signal_Time_Expansion)-0.5,max(Signal_Time_Expansion)+0.5]);

%Signal Folding
Signal_Reverse=Signal(-t);
subplot(4,2,8);
plot(t,Signal_Reverse);
xlabel("Time");
ylabel("Amplitude");
title("Signal Folding(4D4)");
axis([min(t),max(t),min(Signal_Reverse)-0.5,max(Signal_Reverse)+0.5]);