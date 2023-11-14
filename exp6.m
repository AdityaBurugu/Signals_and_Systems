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

subplot(3,1,2);
plot(w1,mgx);
xlabel("Frequency");
ylabel("Magnitude");

subplot(3,1,3);
plot(w1,phx);
xlabel("Frequency");
ylabel("Phase");
