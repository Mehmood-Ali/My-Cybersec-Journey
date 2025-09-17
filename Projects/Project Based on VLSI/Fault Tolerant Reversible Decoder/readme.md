# Low Power Fault Tolerant Reversible Decoder Using MOS Transistors

## 📑 Index
1. [Introduction](#introduction)  
2. [Background](#background)  
3. [Features](#features)  
4. [System Components](#system-components)  
5. [Design Methodology](#design-methodology)  
6. [Simulation Tools](#simulation-tools)  
7. [Applications](#applications)  
8. [Advantages & Limitations](#advantages--limitations)  
9. [References](#references)  

---

## Introduction
The project **Low Power Fault Tolerant Reversible Decoder** explores reversible computing as a solution for **low-power VLSI design**.  
Traditional logic gates are irreversible, causing energy loss due to information destruction. Reversible logic circuits overcome this limitation by ensuring a **one-to-one mapping of inputs to outputs**, thereby minimizing heat dissipation and power consumption.

This project presents a novel **reversible decoder design** based on **Fredkin gates** and **Feynman double gates (F2G)**, simulated using MOS technology, Microwind, and DSCH tools.

---

## Background
- **VLSI (Very Large-Scale Integration):** Integrates millions of transistors on a single chip, enabling compact and high-speed digital circuits.  
- **Reversible Logic:** Preserves information, reduces energy loss, and is fundamental to **quantum computing**.  
- **Fault Tolerance:** Parity-preserving reversible gates detect faults without compromising performance.  

Key reversible gates studied:  
- **Fredkin Gate** – controlled swap logic.  
- **Toffoli Gate** – universal reversible gate.  
- **Peres Gate** – efficient in terms of quantum cost.  
- **Feynman Double Gate (F2G)** – supports fan-out with minimal overhead.  

---

## Features
- Optimized **n-to-2ⁿ Reversible Decoder** architecture.  
- **Parity-preserving** (fault tolerant) operation.  
- Reduced **garbage outputs**, **quantum cost**, and **hardware complexity**.  
- Implemented and verified using **Microwind** and **DSCH** software.  

---

## System Components
- **MOSFET devices** (CMOS technology).  
- **Reversible gates**: Fredkin, Feynman Double, Peres.  
- **VLSI design flow** (Front-end & Back-end).  
- **Microwind** for physical layout simulation.  
- **DSCH** for schematic and logic simulation.  

---

## Design Methodology
1. Study of reversible fault tolerant gates (Fredkin, Feynman Double).  
2. Design of **1-to-2, 2-to-4 reversible fault tolerant decoders**.  
3. Optimization in terms of:
   - Garbage outputs  
   - Quantum cost  
   - Hardware complexity  
4. Simulation in **Microwind & DSCH** for timing, layout, and functional verification.  

---

## Simulation Tools
- **Microwind3** – IC design at the physical level with SPICE extraction, Verilog conversion, and on-chip simulation.  
- **DSCH** – Logic editor and simulator with fault analysis, Verilog generation, and microcontroller interfacing (8051/PIC).  

---

## Applications
- **Low-power CMOS circuits**  
- **Quantum computing**  
- **Nanotechnology & Optical computing**  
- **Digital Signal Processing (DSP)** data paths  
- **Low-power Arithmetic & ALUs**  
- **Reversible FPGAs** for fault tolerance and self-repair  

---

## Advantages & Limitations
### ✅ Advantages
- Low garbage outputs  
- Low quantum cost  
- Optimized power and area usage  
- Fault tolerance (parity-preserving)  

### ⚠️ Limitations
- Feedback is restricted  
- Limited fan-out (always one)  
- Higher delays compared to conventional CMOS  

---

## References
- B. Parhami, “Fault tolerant reversible circuits,” *Asilomar Conf. on Signals, Systems, and Computers*, 2006.  
- M. Nielsen, I. Chuang, *Quantum Computation and Quantum Information*, Cambridge University Press, 2000.  
- R. Landauer, “Irreversibility and Heat Generation in the Computational Process,” *IBM Journal of Research and Development*, 1961.  
- C.H. Bennett, “Notes on the History of Reversible Computation,” *IBM Journal of Research and Development*, 1998.  
- P.R. Yelekar, S.S. Chiwande, “Introduction to Reversible Logic Gates & Applications,” *IJCA/NCICT*, 2011.  

---
