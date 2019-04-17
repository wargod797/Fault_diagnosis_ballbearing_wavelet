# Fault_diagnosis_ballbearing_wavelet
Bearing fault diagnosis is important in condition monitoring of any rotating machine. 
Early fault detection in machinery can save millions of dollars in emergency maintenance cost.
Different techniques are used for fault analysis such as short time Fourier transforms (STFT), 
Wavelet analysis (WA), cepstrum analysis, Model based analysis, etc. we have doing detecting bearing faults using FFT and by using Wavelet
analysis more specifically wavelet Analysis up to two levels of approximations and detail components.
The analysis is carried out offline in MATLAB. 
Diagnosing the faults before in hand can save the millions of dollars of industry and can save the time as well.
It has been found that Condition monitoring of rolling element bearings has enabled cost saving of over 50% 
as compared with the old traditional methods. 
The most common method of monitoring the condition of rolling element bearing is by using vibration signal analysis.
Measure the vibrations of machine recorded by velocity


The import files are essential for the project 

the Test Readings Files nomenclature 
  
  File_name          Fault_type            Loading_condition         RPM
  ===========================================================================
  TB NL 940          Healthy Bearing        NO   LOAD == 0kg         1940 RPM
  TB HL 877          Healthy Bearing        HALF LOAD == 1.5kg       1877 RPM
  TB FL 731          Healthy Bearing        FULL LOAD == 3kg         1731 RPM
  IRF NL 955         Inner Race Fault       NO   LOAD == 0kg         1955 RPM
  IRF HL 877         Inner Race Fault       HALF LOAD == 1.5kg       1877 RPM
  IRF FL 744         Inner Race Fault       FULL LOAD == 3kg         1744 RPM 
  BF NL 945          Ball Fault             NO   LOAD == 0kg         1945 RPM
  BF HL 830          Ball Fault             HALF LOAD == 1.5 kg      1730 RPM 
  BF FL 735          Ball Fault             FULL LOAD == 3kg         1735 RPM
  
  The RPM Varies from the Theortical values to the Experiemental values
  
  
  Components Used and Requirements====================
  Windows PC 
  MATLAB 2017 with signal processing toolkit installed
  LabView 2014
  0.5 HP Motor %U can use whatever the power you want
  Fault Bearnigs
  Belt Drives and pulley and shaft 
  National Instruments Data Aquestion DAQ CARD and system 
  Single Direction Aceelerometer
