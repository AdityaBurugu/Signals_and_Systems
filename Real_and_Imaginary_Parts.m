clear all
close all

t = -5:0.001:5;

x1 = exp(1i*2*pi.*t);  %Exponential Signal
%x1 = cos(t);           Cosine Signal
%x1 = sin(t);           Sine Signal
subplot(3,2,1);
plot(t,x1);
xlabel("Time");
ylabel("Amplitude");
title("Signal 1(4D4)");
grid;

x2 = exp((-1i)*2*pi.*t);   %Exponential Signal
%x2 = cos(-t);           Cosine Signal
%x2  = sin(-t);          Sine Signal
subplot(3,2,2);
plot(t,x2);
xlabel("Time");
ylabel("Amplitude");
title("Signal 2(4D4)");
grid;

if(x1==x2)
    disp("The given Signal is Even");
    
else if(x1==-x2)
    disp("The given Signal is Odd");

else
    disp("The given Signal is Neither Even Nor Odd");

end
end
xe = (x1+x2)/2;

subplot(3,2,3);
plot(t,xe);
xlabel("Time");
ylabel("Amplitude");
title("Even Signal(4D4)");
grid;

xo = (x1-x2)/2;

subplot(3,2,4);
plot(t,xo);
xlabel("Time");
ylabel("Amplitude");
title("Odd Signal(4D4)");
grid;

Real = real(x1);

subplot(3,2,5);
plot(t,Real);
xlabel("Time");
ylabel("Amplitude");
title("Real Part of Signal(4D4)");
grid;

Imagimary = imag(x2);

subplot(3,2,6);
plot(t,Imagimary);
xlabel("Time");
ylabel("Amplitude");
title("Imagimary Part of Signal(4D4)");
grid;
