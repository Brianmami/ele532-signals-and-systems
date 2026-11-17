# ELE 532 Lab 3 – Fourier Series Analysis

**Course:** ELE 532 – Signals and Systems I  
**Tools:** MATLAB

## Overview

Fourier series of three periodic signals: x1(t), a sum of cosines, and x2(t) and x3(t), rectangular pulse trains with different duty cycles.

- **A.3:** plot the magnitude and phase of each signal's Fourier coefficients D_n (`A3_X1.m`, `A3_X2.m`, `A3_X3.m`)
- **A.4:** repeat the coefficient plots for n = ±5, ±20, ±50 and ±500 to see how the spectrum fills out (in `ACode.m`)
- **A.5:** rebuild each signal from its first N harmonics (`A5AX1.m`–`A5AX3.m`)
- **A.6:** the same reconstruction, plotted so you can watch the signal converge as N grows (`A6AX1.m`–`A6AX3.m`)

`ACode.m` is the main script, split into sections for A.3 and A.4. The `A3_X*.m` files are the standalone A.3 versions.

## Build / run

- Run `ACode.m` one section at a time in MATLAB.
- The A.5 and A.6 files are functions, so call them with a number of harmonics, e.g. `A6AX2(20)`.
