clear all
close all

t = -5:1:5;

x1 = exp(1i*2*pi.*t);  %Exponential Signal
%x1 = cos(t);           Cosine Signal
%x1 = sin(t);           Sine Signal
subplot(2,2,1);
stem(t,x1);
xlabel("Time");
ylabel("Amplitude");
title("Signal 1(4D3)");
grid;

%x2 = exp((-1i)*2*pi.*t);   Exponential Signal
%x2 = cos(-t);           Cosine Signal
x2  = sin(-t);          %Sine Signal
subplot(2,2,2);
stem(t,x2);
xlabel("Time");
ylabel("Amplitude");
title("Signal 2(4D3)");
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

subplot(2,2,3);
stem(t,xe);
xlabel("Time");
ylabel("Amplitude");
title("Even Signal(4D3)");
grid;

xo = (x1-x2)/2;

subplot(2,2,4);
stem(t,xo);
xlabel("Time");
ylabel("Amplitude");
title("Odd Signal(4D3)");
grid;
