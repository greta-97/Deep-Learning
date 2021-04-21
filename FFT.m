Fs= 1000; % sampling frequency
Ts = 1/Fs; % sampling period or time stamp 
dt=0:Ts:2-Ts; %Zeitinterval von 0 bis 2s
f1 =10;
f2=30;
f3=70;
% y=Asin(2pift+theta))

y1=8*sin(2*pi*f1*dt);
y2=3*sin(2*pi*f2*dt);
y3=10*sin(2*pi*f3*dt);
y4= y1+y2+y3;
subplot(4,1,1);
plot(dt,y1,'r');
subplot(4,1,2);
plot(dt,y2,'r');
subplot(4,1,3);
plot(dt,y3,'r');
subplot(4,1,4);
plot(dt,y4,'g');

nfft= length(y4); %length of time domain signal 
nfft2=2^nextpow2(nfft); %length of signal in power of 2
ff=fft(y4,nfft2);
fff=ff(1:nfft2/2);
fff=fff/max(fff);   %Amplitude auf 1
xfft = Fs*(0:nfft2/2-1)/nfft2;

figure();
subplot(2,1,1);
plot(dt,y4);
xlabel('Time [s]');
ylabel('Amplitude (V)');
title('Time Domain Signal');


subplot(2,1,2);
plot(xfft,abs(fff));
xlabel('Frequency [Hz]');
ylabel('Normalized Amploitude');
title('Frequency Domain Signal');
