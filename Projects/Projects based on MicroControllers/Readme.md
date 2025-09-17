# Fire and Metal Detection Robot

## 📑 Index
- [Overview](#overview)
- [Project Description](#project-description)
- [Technical Background](#technical-background)
- [System Design](#system-design)
- [Hardware Requirements](#hardware-requirements)
- [Software Requirements](#software-requirements)
- [Working Principle](#working-principle)
- [Applications](#applications)
- [References](#references)

---

## Overview
This project demonstrates the design and development of a **Fire and Metal Detection Robot** using an **AT89C51 microcontroller**, flame sensors, and a metal detection circuit based on a 555 Timer IC.  

The robot is capable of:
- Detecting the presence of **fire** using flame sensors.
- Detecting **metal objects or landmines** using inductive metal detection circuitry.
- Producing alerts via **buzzer and LCD display**.
- Moving autonomously with **DC motors** driven by the **L293D motor driver IC**.

The project combines embedded systems design, circuit simulation (Proteus), and microcontroller programming (KEIL IDE) to achieve automation in hazard detection.

---

## Project Description
Fires and buried metallic mines pose significant risks to human life and property.  
The objective of this project is to design a **robotic vehicle** that can autonomously:
- Detect fire outbreaks,
- Detect hidden metallic objects,
- Stop its movement,
- Trigger an **alarm system** (buzzer + display notification).

This enhances safety in **disaster management, industrial monitoring, and mine detection**.

---

## Technical Background
- **Microcontroller**: AT89C51 (8051 family) – central controller for all inputs/outputs.
- **Fire Detection**: Flame sensor that detects IR radiation from fire sources.
- **Metal Detection**: A **555 Timer IC** configured in an RLC circuit to sense variations in inductance when a metal object is nearby.
- **Motor Control**: L293D motor driver IC to drive two DC motors for robot movement.
- **Alert System**: Buzzer + LCD display for real-time status updates.
- **Simulation Software**: Circuit design and validation carried out in **Proteus**.
- **Programming Environment**: Developed in **Embedded C** using **KEIL uVision IDE**, compiled into a HEX file, and flashed onto the AT89C51.

---

## System Design
The system consists of the following blocks:
1. **Power Supply** (regulated DC supply using voltage regulator IC).
2. **AT89C51 Microcontroller** (control logic).
3. **Flame Sensor Module** (detects fire).
4. **Metal Detector Circuit** (555 Timer-based RLC oscillator).
5. **Motor Driver + DC Motors** (robot movement).
6. **Buzzer & LCD Display** (alerts and status).
7. **Proteus Simulation** (for testing before hardware implementation).

---

## Hardware Requirements
- AT89C51 Microcontroller  
- Flame Sensor  
- 555 Timer IC with R=47KΩ, L=150mH, C=2.2µF (for metal detection)  
- L293D Motor Driver IC  
- DC Motors (x2)  
- Buzzer  
- 16x2 LCD Display  
- Resistors, Capacitors, Breadboard, Power Supply  

---

## Software Requirements
- **KEIL µVision IDE** – for Embedded C programming of AT89C51  
- **Proteus Design Suite** – for circuit simulation and testing  
- **Flash Programmer** – to upload HEX file into microcontroller  

---

## Working Principle
1. Robot moves forward under normal conditions.  
2. **Flame sensor** detects fire → Microcontroller stops motors, activates buzzer, displays message on LCD.  
3. **Metal detector circuit** senses metallic object → Signal sent to microcontroller → Robot halts, buzzer rings, LCD shows detection status.  
4. Robot can be reset to resume operation.  

This approach ensures **autonomous hazard detection**, reducing the need for human intervention in dangerous environments.

---

## Applications
- **Fire Hazard Prevention** – Early fire detection in industrial or household areas.  
- **Mine Detection** – Detecting buried metallic mines in defense and humanitarian demining operations.  
- **Industrial Safety** – Detecting hazardous environments in factories or storage areas.  
- **Research & Learning** – Educational project for embedded systems and robotics.  

---

## References
- Raj Kamal, *Embedded Systems Architecture, Programming and Design*, 2011.  
- Howie Choset et al., *Principles of Robot Motion: Theory, Algorithms, and Implementations*, 2005.  
- Rocco Vertechy & Giovanni Berselli, *Smart Actuation and Sensing Systems*, 2012.  
- John Baichtal et al., *Make: Lego and Arduino Projects*, 2012.  
- Project simulation and design performed using **Proteus Design Suite** and **KEIL IDE**.  

---
