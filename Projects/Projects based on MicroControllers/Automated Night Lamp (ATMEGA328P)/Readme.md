# Automated Night Lamp

## 📑 Index
1. [Introduction](#introduction)  
2. [Features](#features)  
3. [System Components](#system-components)  
4. [Circuit Design](#circuit-design)  
5. [How It Works](#how-it-works)  
6. [Applications](#applications)  
7. [How to Run](#how-to-run)  
8. [References](#references)  

---

## Introduction
The **Automated Night Lamp** is a power-saving embedded system project designed using the **ATMEGA328P microcontroller**. The lamp automatically switches **ON at night** and **OFF at dawn** using a **Light Dependent Resistor (LDR)** as the light sensor. A **relay module** controls the lamp, while a **buzzer** provides an audible alert during transitions.  

This system reduces electricity wastage by removing human intervention in switching lights, making it suitable for **home automation, smart lighting, and energy-efficient buildings**.  

---

## Features
- Automatic **ON/OFF control** of a lamp using light intensity.  
- **Buzzer alarm** to indicate dawn detection.  
- **Relay-based switching** for handling higher power lamps.  
- **Battery backup** included for uninterrupted operation.  
- Implemented and tested in **Proteus simulator** and on **breadboard hardware prototype**.  

---

## System Components
- **ATMEGA328P Microcontroller**  
- **LDR (Light Dependent Resistor)**  
- **Relay Module**  
- **555 Timer IC** (monostable configuration for LDR signal conditioning)  
- **Buzzer**  
- **LEDs (acting as lamp in prototype)**  
- **Resistors, Capacitors, Diodes, Transistors**  
- **Battery backup circuit**  
- **Arduino IDE (Embedded C programming)**  
- **Proteus Simulator**  

---

## Circuit Design
The system uses an **LDR** to sense ambient light levels.  
- In **dark conditions**, the resistance of the LDR is high, which triggers the microcontroller to switch the lamp **ON**.  
- In **bright conditions**, the resistance of the LDR is low, and the lamp is switched **OFF**, while the **buzzer** is triggered for a short duration.  

The microcontroller code is developed in **Arduino IDE**, and the design was first validated in **Proteus simulation**, then assembled on a **breadboard prototype**.  

---

## How It Works
1. **Daytime** → LDR detects high light intensity → Lamp **OFF**, buzzer **ON** for a short alert.  
2. **Nighttime** → LDR detects darkness → Lamp **ON**, buzzer **OFF**.  
3. The relay is used to control the lamp safely, while LEDs are used for demonstration in the prototype.  

---

## Applications
- **Smart homes** – automatic indoor/outdoor lighting.  
- **Street lighting systems** – reduce electricity usage.  
- **Energy-efficient buildings** – minimizes wastage of power.  
- **Security lighting** – reliable automatic switching during night.  

---

## How to Run
1. Assemble the circuit using the components listed above.  
2. Upload the Arduino code (`automated_night_lamp.ino`) to the ATMEGA328P using Arduino IDE.  
3. Provide power via regulated DC or battery backup.  
4. Place the LDR in an area exposed to natural light for correct operation.  
5. Observe automatic ON/OFF of the lamp and buzzer indication.  

---

## References
- Project Report: Automated Night Lamp (B.Tech ECE)  
- Arduino IDE Documentation: [https://www.arduino.cc/en/software](https://www.arduino.cc/en/software)  
- Background on Smart Lighting Systems:  
  - [Energy-efficient lighting in buildings – ScienceDirect](https://www.sciencedirect.com/topics/engineering/energy-efficient-lighting)  
  - [Home Automation with Arduino](https://circuitdigest.com/microcontroller-projects/home-automation-project-using-arduino)

---
