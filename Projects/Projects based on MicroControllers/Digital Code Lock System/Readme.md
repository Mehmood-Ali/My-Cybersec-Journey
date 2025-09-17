# Digital Code Lock System

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
The **Digital Code Lock System** is a security-based embedded project designed using the **8051 family microcontroller (AT89C51)**. The lock is operated by entering a numeric password via a **keypad**. If the entered password matches the stored code, the lock mechanism is triggered, and access is granted. If an incorrect password is entered, the system remains locked and may trigger an alarm.

This project demonstrates the use of **embedded C programming, keypad interfacing, and output control** for secure access systems.

---

## Features
- Password-based locking and unlocking system.  
- **Keypad interface** for entering numeric codes.  
- **LCD Display** for user interaction (showing status).  
- **Relay/Door lock driver** controlled by microcontroller.  
- Option to **reset/change password** in code.  
- Security enhancement over traditional mechanical locks.  

---

## System Components
- **AT89C51 Microcontroller (8051 family)**  
- **4x3 Keypad** (for password entry)  
- **16x2 LCD Display** (status messages)  
- **Relay module** (for controlling lock)  
- **Buzzer** (for incorrect attempt alerts)  
- **Resistors, Capacitors, Diodes, Crystal oscillator**  
- **Power supply unit (regulated DC)**  
- **Embedded C code (Keil uVision / Arduino IDE equivalent)**  
- **Proteus Simulator** (for circuit testing)  

---

## Circuit Design
The **keypad** is connected to the microcontroller as input.  
- When a key is pressed, the microcontroller scans the keypad matrix to detect the number.  
- Entered digits are displayed on the **LCD** for feedback.  
- If the full password matches the stored value, the microcontroller energizes the **relay**, unlocking the lock.  
- Otherwise, the system remains locked, and a buzzer may sound to indicate an invalid attempt.  

---

## How It Works
1. **Idle State** → System waits for input via keypad.  
2. **Password Entry** → User enters numeric password.  
3. **Verification** → Microcontroller compares entered password with stored value.  
4. **Access Granted** → If correct, relay activates, and lock opens.  
5. **Access Denied** → If incorrect, buzzer sounds, and system remains locked.  

---

## Applications
- **Electronic door locks** for homes and offices.  
- **Locker security systems** in banks, schools, and gyms.  
- **Industrial safety systems** where restricted access is required.  
- **Safe deposit systems** in financial institutions.  

---

## How to Run
1. Assemble the circuit as per the schematic using AT89C51, keypad, LCD, and relay.  
2. Burn the compiled hex file into the AT89C51 microcontroller using a programmer.  
3. Power the circuit using regulated +5V DC.  
4. Enter the default password (as defined in source code).  
5. Observe the system unlocking with the correct code or triggering the buzzer on wrong entry.  

---

## References
- Project Report: Digital Code Lock System (B.Tech ECE)  
- Keil uVision IDE: [https://www.keil.com](https://www.keil.com)  
- Background on Digital Locks:  
  - [How Digital Locks Work – Electronics Tutorials](https://www.electronicsforu.com/electronics-projects/digital-lock-using-8051)  
  - [8051 Microcontroller Applications](https://www.electronicsforu.com/8051-tutorial)
