clc; 
clearall
closeall
%Replace File name Plot Diffrent Analysis
filename = 'BF trial 02 FL 735 rpm.xlsx';
sheet=1;
xlrange='B1:B153600';
x=xlsread(filename,xlrange);
fs=10000;

t=1/fs;
L=length(x);
t=(0:L-1)/fs;
subplot(3,1,1)
plot(t,x)
gridon; 
xlabel('Time (Sec)'); 
ylabel('Acceleration (m.sec^-2)');
title('Time Domain Signal') 

Y(1)=0;
Y=fft(x);
freq = 0:fs/L:fs/2-fs/L;
freq = freq';
amplitude = abs(Y(1:floor(L/2)))/floor(L/2);
subplot(3,1,2)
plot(freq,amplitude);
xlabel('Frequency [Hz]');
ylabel ('Amplitude');
title('Amplitude Spectrum')
grid on;

NFFT = 2^nextpow2(L);
Y = fft(x) ;
freq = frq';
amplitude = abs(Y(1:floor(L/2)))/floor(L/2);
subplot(3,1,2)
plot(freq, amplitude);
xlabel('Frequency (Hz)');
ylabel('Amplitude Specturm');
title('Amplitude Specturm');
grid on;


%Sin wave rms value will be gievn by 1/square root of 2,refers to line 21%

peaktd =((max(x)-min(x))/2);       % Peak to peak value of a sin wave considered

peak2peaktd=2*peaktd;              % To get the total peak value it is multiplied by 2times%

rms707peak=(0.707)*(peaktd);

y=mean(x);   % all the values gets added and divide by total number of readings that is 19 here%

%Variance term in Standard deviation - for simplification%

%standard devation formula and (rms formula same)%

%crest factor is defined as the ratio of peak value to the rms value%

x1=x';
     peakvalue=max(x1)
     rm_value=((sum((x1).^2))/L)^0.5

     crestfactor=peakvalue/rm_value
     X=mean(x);
     r=1;
     for i=1:175000
         s_ubtractred(r)=[x1(i)-X];
         s_ub_skeeew(r)=(x1(i)-(X/rm_value));

         r=r+1;
     end
     standard_deviation=sqrt((sum(s_ubtractred))/L)
     Standard_Deviation=std(x1)

     s_kewness=sqrt(sum(s_ub_skeeew)/L);
shape_b=(sum(x1)/L);

      shape_factor=sqrt(rm_value/(shape_b));
