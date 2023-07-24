%% first run the script "downlink_ProcessingChain_fourBWPs_5MHz.m"
%% Operation for the 1st BWP

% NCO Operation for 1st BWP
for ii = 1:length(ps_out)
    NCO_up_1stBWP(ii) = NCO_out(ii) * exp(-1i*2*pi*center_freq1/fs *ii);
end
figure
plot(linspace(-fs/2,fs/2,length(NCO_up_1stBWP)),20*log10(abs(fftshift(fft(NCO_up_1stBWP)))))

% Decimation Operation for 1st BWP

fs_up = 7.68;
waveform_decim_1stBWP = decimate(NCO_up_1stBWP,64);
figure
plot(linspace(-fs_up/2,fs_up/2,length(waveform_decim_1stBWP)),20*log10(abs(fftshift(fft(waveform_decim_1stBWP)))))

%% Operation for the 2nd BWP

% NCO Operation for 2nd BWP
for ii = 1:length(ps_out)
    NCO_up_2ndBWP(ii) = NCO_out(ii) * exp(-1i*2*pi*center_freq2/fs *ii);
end
figure
plot(linspace(-fs/2,fs/2,length(NCO_up_2ndBWP)),20*log10(abs(fftshift(fft(NCO_up_2ndBWP)))))

% Decimation Operation for 2nd BWP

fs_up = 7.68;
waveform_decim_2ndBWP = decimate(NCO_up_2ndBWP,64);
figure
plot(linspace(-fs_up/2,fs_up/2,length(waveform_decim_2ndBWP)),20*log10(abs(fftshift(fft(waveform_decim_2ndBWP)))))

%% Operation for the 3rd BWP

% NCO Operation for 3rd BWP
for ii = 1:length(ps_out)
    NCO_up_3rdBWP(ii) = NCO_out(ii) * exp(-1i*2*pi*center_freq3/fs *ii);
end
figure
plot(linspace(-fs/2,fs/2,length(NCO_up_3rdBWP)),20*log10(abs(fftshift(fft(NCO_up_3rdBWP)))))

% Decimation Operation for3rd BWP

fs_up = 7.68;
waveform_decim_3rdBWP = decimate(NCO_up_3rdBWP,64);
figure
plot(linspace(-fs_up/2,fs_up/2,length(waveform_decim_3rdBWP)),20*log10(abs(fftshift(fft(waveform_decim_3rdBWP)))))

%% Operation for the 4th BWP

% NCO Operation for 4th BWP
for ii = 1:length(ps_out)
    NCO_up_4thBWP(ii) = NCO_out(ii) * exp(-1i*2*pi*center_freq4/fs *ii);
end
figure
plot(linspace(-fs/2,fs/2,length(NCO_up_4thBWP)),20*log10(abs(fftshift(fft(NCO_up_4thBWP)))))

% Decimation Operation for 1st BWP

fs_up = 7.68;
waveform_decim_4thBWP = decimate(NCO_up_4thBWP,64);
figure
plot(linspace(-fs_up/2,fs_up/2,length(waveform_decim_4thBWP)),20*log10(abs(fftshift(fft(waveform_decim_4thBWP)))))
