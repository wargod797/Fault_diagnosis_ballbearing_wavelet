clc;
clear all
cd('G:\matlab')
close all
filename = 'aero.xlsx';
sheet=2;
xlrange='A1:A684';
x=xlsread(filename,xlrange);
fs=2000;
t=1/fs;
L=length(x);
t=(0:L-1)/fs;
subplot(3,2,1)
plot(t,x)
grid on;
xlabel('Time (Sec)');
ylabel('Acceleration (m.sec^-2)');
title('Time Domain Signal')
Y(1)=0;
%x_mag=abs(Y);
%x_ang=angle(Y);
Y=fft(x);
freq = 0:fs/L:fs/2-fs/L;
freq = freq';
amplitude = abs(Y(1:floor(L/2)))/floor(L/2);
%subplot(3,2,4);
%amplitude=ang;
%plot(freq,ang);
subplot(3,2,2)
plot(freq,amplitude);
xlabel('Frequency [Hz]');
ylabel ('Amplitude');
title('Amplitude Spectrum')
grid on
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(Y,NFFT)/L;
f = fs/2*linspace(0,1,NFFT/2+1);
% Plot single-sided amplitude spectrum.
subplot(3,2,3)
plot(f,2*abs(Y(1:NFFT/2+1)))
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
grid on
subplot(3,2,4)
%pwelch(x,[],[],[],fs); 
x_norm=x-mean(x);
pwelch(x_norm,[],[],[],fs);%to determine a periodicity in data
%subplot(3,2,5)
figure;
for len = 10:2:L
    subplot(2,1,1);
 pwelch(x,len,[],len,fs);
title(sprintf('Hamming Window Size :: %d',len)); %to determine the maximum peak value
set(gca,'YLim',[-120,0]); 
set(gca,'XLim',[0,  1]);
%pause;
end
subplot(2,1,2);
findpeaks(pwelch(x,len,[],len,fs));
[peakVal, locVal]=findpeaks(pwelch(x,len,[],len,fs));
disp(peakVal);%displays the peak values
disp(locVal); %displays the interval between the peak values

figure;
spectrogram(x,[],[],[],fs,'yaxis');colorbar;
