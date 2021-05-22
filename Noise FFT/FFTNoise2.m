clear all, close all, clc
% [f,Fs]=audioread('C:\Users\fabia\iCloudDrive\1. Semester\Mechatronische Systeme\Projekt\Programmierung\Matlab\Noise FFT\gtr-jaz-2.wav');
% % sound(y,Fs);
subplot(3,1,1);

% y = y(:,1);
% dt = 1/fs;
% t = 0:dt:(length(y)*dt)-dt;
% plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
% figure
% plot(psd(spectrum.periodogram,y,'Fs',fs,'NFFT',length(y)));

dt = .01;
t = 0:dt:1;
f = sin(2*pi*50*t) + sin(2*pi*120*t); % Sum of 2 frequencies
sound(f,4200);
% f= f + 0.1*randn(size(f));  %  Add some noise
% sound(f,Fs);


% n = length(t);
% fhat = fft(f,n);       % Compute the fast Fourier transform
% PSD = fhat.*conj(fhat)/n; % Power spectrum (power per freq)
% freq = 1/(dt*n)*(0:n); % Create x-axis of frequencies in Hz
% L = 1:floor(n/2);   % Only plot the first half of freqs
% 
% indices = PSD>100;  % Find all freqs with large power
% PSDclean = PSD.*indices;  % Zero out all others
% fhat = indices.*fhat;  % Zero out small Fourier coeffs. in Y
% ffilt = ifft(fhat); % Inverse FFT for filtered time signal

% %Plots
% subplot(3,1,1)
% plot(t,f,'r','LineWidth',1.2), hold on
% plot(t,f,'k','LineWidth',1.5)
% legend('Noisy','Clean')
% 
% subplot(3,1,2)
% plot(t,f,'k','LineWidth',1.5), hold on
% plot(t,ffilt,'b','LineWidth',1.2)
% legend('Clean','Filtered')
% 
% subplot(3,1,3)
% plot(freq(L),PSD(L),'r','LineWidth',1.5), hold on
% plot(freq(L),PSDclean(L),'-b','LineWidth',1.2)
% legend('Noisy','Filtered')