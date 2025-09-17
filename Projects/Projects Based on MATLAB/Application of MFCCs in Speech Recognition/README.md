# Research on Application of MFCCs in Speech Recognition

## 📑 Index
- [Overview](#overview)
- [Project Description](#project-description)
- [Technical Background](#technical-background)
- [System Design](#system-design)
- [Software Requirements](#software-requirements)
- [Working Principle](#working-principle)
- [Applications](#applications)
- [References](#references)

---

## Overview
This project investigates the **use of Mel-Frequency Cepstral Coefficients (MFCCs)** in **automatic speech recognition (ASR)**.  
MFCC is a widely used feature extraction technique that converts audio signals into features suitable for recognition systems.  

The project was implemented in **MATLAB Simulink**, where:
- Speech signals were acquired and pre-processed.
- MFCC-based feature extraction was performed.
- Performance was analyzed using **spectrum analyzers** at various stages (FFT, MFCC, DCT, etc.).  

---

## Project Description
Speech recognition enables machines to convert spoken words into text.  
The focus of this project was to:
- Understand the **speech recognition pipeline**.  
- Implement **MFCCs** for feature extraction.  
- Simulate and analyze the **performance of speech recognition** in MATLAB.  

Key project outcomes:
- Designed a Simulink-based speech recognition model.  
- Successfully extracted MFCCs from recorded audio.  
- Compared classification techniques (Support Vector Machines and Neural Networks).  

---

## Technical Background
- **MFCC (Mel-Frequency Cepstral Coefficients)**: A feature extraction technique based on human auditory perception.
- **Steps in MFCC computation**:
  1. **Pre-emphasis**: Amplify high-frequency signals.
  2. **Framing**: Split speech into short overlapping frames.
  3. **Windowing**: Apply Hamming window to minimize spectral leakage.
  4. **FFT (Fast Fourier Transform)**: Convert frames into frequency domain.
  5. **Mel Filter Bank**: Apply triangular filters to simulate human ear perception.
  6. **Logarithm**: Convert to log scale.
  7. **DCT (Discrete Cosine Transform)**: Compress information into compact feature vectors.
- **Comparison with LPC (Linear Predictive Coding)**: MFCC provides better accuracy for modern ASR systems.  

---

## System Design
The system model was implemented in **MATLAB Simulink**, consisting of:
1. **Audio Input Device** – captures speech samples.  
2. **Spectrum Analyzer** – visualizes audio signals.  
3. **Framing & Windowing Blocks** – prepare signals for FFT.  
4. **FFT Block** – computes frequency spectrum.  
5. **Filter Bank Block** – applies Mel filter bank.  
6. **Logarithm + DCT Blocks** – generate MFCCs.  
7. **Classifier (SVM/DNN)** – evaluates recognition accuracy.  

---

## Software Requirements
- MATLAB (with **Simulink Toolbox**)  
- Signal Processing Toolbox  
- Audio Device Interface  

---

## Working Principle
1. A speech signal is recorded from the audio device.  
2. Signal undergoes **framing, windowing, FFT, and filtering**.  
3. **MFCCs are extracted** as feature vectors representing speech characteristics.  
4. Extracted features are classified using **Support Vector Machine (SVM)** and compared against **Deep Neural Networks (DNNs)**.  
5. Performance is evaluated using **spectrum analyzer plots** (input audio spectrum, FFT spectrum, Mel filter spectrum, DCT analysis, and audio weighting filter output).  

---

## Applications
- **Automatic Speech Recognition (ASR)** – voice assistants, transcription software.  
- **Speaker Recognition** – biometric authentication systems.  
- **Forensic Analysis** – voice matching in security.  
- **Healthcare** – assistive technologies for speech-impaired individuals.  
- **Human-Computer Interaction** – command-based interfaces.  
- **Music Information Retrieval** – audio similarity, genre classification.  

---

## References
- Raghunath S. Holambe & Mangesh S. Deshpande, *Advances in Non-Linear Modeling for Speech Processing*, 2012.  
- Manas A. Pathak, *Privacy-Preserving Machine Learning for Speech Processing*, 2012.  
- Modern Speech Recognition Approaches with Case Studies, 2012.  
- MATLAB Simulink Documentation (Signal Processing & Audio Toolbox).  

---
