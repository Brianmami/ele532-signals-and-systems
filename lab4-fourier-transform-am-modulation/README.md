# ELE 532 Lab 4 – Fourier Transform and AM Modulation

**Course:** ELE 532 – Signals and Systems I  
**Tools:** MATLAB

## Overview

**Part A – Fourier transform properties (`PartA.m`)**

- FFT magnitude and phase of a rectangular pulse
- Convolution in time equals multiplication in frequency: compares x(t) * x(t) with X(ω)·X(ω)
- Effect of pulse width on the spectrum (widths 5 and 25)
- Frequency shifting by multiplying the pulse by e^(±jω₀t) and by cos(ω₀t)

**Part B – AM speech transmission (`PartB.m`)**

1. Band-limit a speech signal to 2.5 kHz.
2. Modulate it onto a 5 kHz carrier.
3. Pass it through a channel filter.
4. Demodulate it and low-pass filter it to recover the speech.
5. Play the original and recovered audio so you can compare them.

`PartA.m` also has a copy of the Part B code in one of its sections.

## Files

| File | Purpose |
|---|---|
| `PartA.m`, `PartB.m` | Lab scripts |
| `MagSpect.m` | Course helper that plots a magnitude spectrum in dB |
| `osc.m` | Course helper that generates a cosine carrier |
| `Lab4_Data.mat` | Course data: the speech signal, two low-pass filters and the channel response |

## Build / run

Open this folder in MATLAB and run `PartA.m` one section at a time, or run `PartB.m` on its own. Part B plays audio.
