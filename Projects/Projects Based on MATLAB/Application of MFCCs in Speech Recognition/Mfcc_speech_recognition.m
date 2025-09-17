% =========================================================
% Research on Application of MFCCs in Speech Recognition
% Author: Mehmood Ali
% Platform: MATLAB (R2018a or later)
%
% Features:
% - Records speech input or loads WAV file
% - Extracts MFCCs (Mel-Frequency Cepstral Coefficients)
% - Visualizes each processing stage (FFT, Mel Filter Bank, DCT, etc.)
% - Ready for extension with classifiers (SVM / DNN)
% =========================================================

clear; clc; close all;

%% PARAMETERS
fs = 16000;             % Sampling frequency
frameSize = 0.025;      % Frame size in seconds (25ms)
frameShift = 0.01;      % Frame shift in seconds (10ms)
numFilters = 26;        % Number of Mel filters
numCoeffs = 13;         % Number of MFCC coefficients to keep

%% STEP 1: Load or Record Speech
% Option 1: Load from file
% [signal, fs] = audioread('sample.wav');

% Option 2: Record from microphone (5 seconds)
recObj = audiorecorder(fs, 16, 1);
disp('Recording for 5 seconds...');
recordblocking(recObj, 5);
signal = getaudiodata(recObj);
disp('Recording complete.');

% Normalize
signal = signal / max(abs(signal));

figure; plot(signal); title('Input Speech Signal'); xlabel('Samples'); ylabel('Amplitude');

%% STEP 2: Pre-emphasis
preEmph = [1 -0.97];
signal = filter(preEmph, 1, signal);

%% STEP 3: Framing & Windowing
frameLen = round(frameSize * fs);
frameStep = round(frameShift * fs);
frames = buffer(signal, frameLen, frameLen - frameStep, 'nodelay');
win = hamming(frameLen);
frames = frames .* win;

%% STEP 4: FFT & Power Spectrum
NFFT = 512;
magFrames = abs(fft(frames, NFFT, 1));
powFrames = (1/NFFT) * (magFrames.^2);

%% STEP 5: Mel Filter Bank
% Convert Hz to Mel
hz2mel = @(hz) 2595 * log10(1 + hz/700);
mel2hz = @(mel) 700 * (10.^(mel/2595) - 1);

lowMel = hz2mel(0);
highMel = hz2mel(fs/2);
melPoints = linspace(lowMel, highMel, numFilters + 2);
hzPoints = mel2hz(melPoints);
bin = floor((NFFT + 1) * hzPoints / fs);

fbank = zeros(numFilters, NFFT/2+1);
for m = 2:numFilters+1
    for k = bin(m-1):bin(m)
        fbank(m-1, k+1) = (k - bin(m-1)) / (bin(m) - bin(m-1));
    end
    for k = bin(m):bin(m+1)
        fbank(m-1, k+1) = (bin(m+1) - k) / (bin(m+1) - bin(m));
    end
end

filterBanks = log(fbank * powFrames(1:NFFT/2+1, :));

figure; imagesc(filterBanks); axis xy;
title('Mel Filter Bank Energies'); xlabel('Frames'); ylabel('Filters');

%% STEP 6: DCT to Get MFCCs
mfccs = dct(filterBanks);
mfccs = mfccs(1:numCoeffs, :);

figure; imagesc(mfccs); axis xy;
title('MFCC Coefficients'); xlabel('Frames'); ylabel('MFCC Index');

%% STEP 7: Feature Vector Output
disp('MFCC Feature Vector (first 5 frames):');
disp(mfccs(:, 1:5));

%% NEXT STEPS: Classification
% - Train SVM/DNN with extracted MFCCs
% - Compare recognition accuracy with different models
% (Implementation left open for research extension)
