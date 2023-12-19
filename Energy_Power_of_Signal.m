%TimeStamp
T = 10;

%Time Range
t=-T:0.01:T;

Signal_1=T.*sin(2*pi.*t);
Signal_2 = Signal_1.^2;

Energy = trapz(t,Signal_2);
Power = Energy/(2*T);

disp(['Energy:',num2str(Energy),'Joule']);
disp(['Power:',num2str(Power),'Watts']);