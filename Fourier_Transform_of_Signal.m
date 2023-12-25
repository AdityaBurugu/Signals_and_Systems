t = -10:0.1:10;
syms t w;

x = int(t*exp(-1i*w*t),t,[0,8]);
w1 = -10:0.07:10;
x1 = subs(x,w,w1);
mgx = abs(x1);
phx = angle(x1);

subplot(3,1,1);
plot(w1,x1);
xlabel("Frequency");
ylabel("Amplitude");
title("Given Signal(4D3)");

subplot(3,1,2);
plot(w1,mgx);
xlabel("Frequency");
ylabel("Magnitude");
title("Magnitude Spectrum(4D3)");

subplot(3,1,3);
plot(w1,phx);
xlabel("Frequency");
ylabel("Phase");
title("Phase Spectrum(4D3)");