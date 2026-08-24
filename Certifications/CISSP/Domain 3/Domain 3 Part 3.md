# CISSP Domain 3 - Trusted Computing Base (TCB) & Protection Mechanisms

## The Big Picture

This topic is not really about CPUs, RAM, kernels, or memory.

This topic is answering a much bigger CISSP question:

> "How do we build a computer system that can be trusted to enforce security?"

Think back to Domain 1.

We learned:

- Governance
- Policies
- Risk Management
- Asset Protection

But none of those matter if the underlying computer system itself cannot be trusted.

The TCB exists because every security decision ultimately relies on something enforcing security correctly.

---

# Restaurant Example

Imagine you own a restaurant.

You create security rules:

- Only managers can access the safe.
- Only chefs can enter the kitchen.
- Payroll records are restricted.
- The recipe vault is highly confidential.

Who actually enforces those rules?

Not the policy document.

Not the CEO.

The locks, access cards, cameras, and alarm systems.

Those mechanisms collectively form the restaurant's "trusted system."

The computer equivalent of this is the:

# Trusted Computing Base (TCB)

---

# What is the Trusted Computing Base?

## CISSP Definition

The Trusted Computing Base (TCB) is:

> The totality of protection mechanisms that enforce a security policy.

The keyword is:

**Totality**

Meaning:

**Everything involved in enforcing security.**

---

## Easy Memory Trick

Think:

> TCB = Trusted Security Team

Not literally, but it helps you remember.

The TCB includes everything helping enforce security:

- Hardware
- Software
- Firmware
- Security mechanisms
- Processes

---

# Antivirus Company Example

Your antivirus company has:

- Active Directory
- Firewalls
- Endpoint protection
- Operating systems
- Authentication systems
- Access controls

All of these work together to enforce security.

Collectively:

They form part of the TCB.

---

# Why CISSP Cares About TCB

Imagine an attacker compromises:

- The operating system kernel

or

- Authentication system

or

- Access control mechanism

Security collapses.

A weak TCB means the entire security architecture becomes unreliable.

---

# Reference Monitor Concept (RMC)

The Reference Monitor Concept is one of the most important concepts hidden inside the TCB.

It answers one question:

> Who is allowed to access what?

---

## Simple Version

Every access attempt should pass through a trusted security checkpoint.

Think airport security.

Nobody gets through without inspection.

---

# Restaurant Example

Customer wants:

- Dining area access

Allowed.

Customer wants:

- Kitchen access

Denied.

Customer wants:

- Payroll records

Denied.

Someone must check every access request.

That checking function is the Reference Monitor Concept.

---

# Components of RMC

The RMC contains five parts:

1. Subject
2. Object
3. Mediation
4. Rules
5. Logging & Monitoring

---

# Subject

A subject is:

> The active entity requesting access.

Subjects initiate actions.

Examples:

- User
- Application
- Process
- Service account

---

## Restaurant Example

Chef opens recipe system.

The Chef is the Subject.

---

# Object

An object is:

> What the subject wants to access.

Objects are passive.

Examples:

- File
- Database
- Application
- Building
- Printer

---

## Restaurant Example

Recipe database.

The database is the Object.

---

# Mediation

Mediation means:

> Controlling access between subjects and objects.

Every request must be checked.

---

## Examples

- Login prompts
- MFA
- Door locks
- File permissions
- ACLs

---

## Restaurant Example

Access card reader.

Employee scans card.

System decides:

Allow or deny.

That is mediation.

---

# Rules

How does mediation decide?

It follows rules.

Examples:

- RBAC
- ACLs
- Security policy
- Group membership

---

## Example

Rule:

Only payroll staff can open payroll records.

The rule drives the decision.

---

# Logging & Monitoring

How do we know the control is working?

We verify it.

Through:

- Logs
- SIEM
- Monitoring
- Audits

Remember from Risk Management:

Functional = What it does

Assurance = How we know it works

Logging provides assurance.

---

# Security Kernel

This is one of the most tested concepts.

Many students confuse:

- Security Kernel
- System Kernel

They are different.

---

# Security Kernel

The Security Kernel is:

> The implementation of the Reference Monitor Concept.

The concept itself is theoretical.

When implemented:

It becomes a Security Kernel.

---

## Memory Trick

Think:

Reference Monitor = Idea

Security Kernel = Reality

---

# Three Requirements of a Security Kernel

For security to work properly:

The kernel must satisfy three principles.

These are heavily tested.

---

# 1. Completeness

Every access request must be checked.

Nothing bypasses security.

---

## Restaurant Example

Imagine one side door bypasses the security guard.

Problem.

The guard is not controlling all access.

Completeness is broken.

---

## Easy Memory

Completeness = No Bypass

---

# 2. Isolation

Security rules must be tamperproof.

Unauthorized users must not change them.

---

## Restaurant Example

Employees cannot rewrite access card permissions.

Only authorized administrators can.

---

## Easy Memory

Isolation = Tamperproof

---

# 3. Verifiability

We must prove the controls work.

Through:

- Auditing
- Logging
- Monitoring
- Testing

---

## Easy Memory

Verifiability = Evidence

---

# Memory Trick for Security Kernel

Remember:

COMPLETENESS
ISOLATION
VERIFIABILITY

Think:

> Can't Bypass, Can't Change, Can Prove

---

# Hardware Components

Now CISSP shifts into how computer systems actually work.

Not because you'll be designing CPUs.

But because security depends on understanding the underlying architecture.

---

# CPU

Central Processing Unit

Think:

> The brain of the computer.

Responsibilities:

- Fetch instructions
- Decode instructions
- Execute instructions
- Store results

Millions or billions of times per second.

---

# Memory Types

CISSP mainly wants you to know:

- Primary Storage
- Secondary Storage

---

# Primary Storage

Characteristics:

- Fast
- Expensive
- Small
- Volatile

Examples:

- Registers
- Cache
- RAM

---

# Restaurant Example

Think of a chef's workbench.

Ingredients immediately being used.

Fast access.

Limited space.

---

# Volatile Memory

Volatile means:

> Loses contents when power is removed.

Examples:

- RAM
- Cache
- CPU Registers

Power off.

Data disappears.

---

# Secondary Storage

Characteristics:

- Slower
- Larger
- Cheaper
- Non-volatile

Examples:

- SSD
- HDD
- DVD
- Tape

---

# Restaurant Example

Think of a storage room.

Much larger.

Much slower to access.

---

# Virtual Memory

One of the easiest concepts.

RAM is limited.

Operating systems simulate additional memory using disk space.

This is Virtual Memory.

---

## Example

You have:

- 16 GB RAM

Applications need:

- 20 GB

OS temporarily moves some RAM contents to disk.

This process is:

Paging.

---

# System Kernel vs Security Kernel

Important distinction.

---

# System Kernel

The core component of the operating system.

Examples:

- Windows Kernel
- Linux Kernel

Controls:

- Memory
- Processes
- Hardware

---

# Security Kernel

Implements:

Reference Monitor Concept

Controls:

- Security decisions

---

# Exam Tip

System Kernel ≠ Security Kernel

This appears often.

---

# Firmware

Firmware is software stored directly on hardware.

Examples:

- BIOS
- UEFI
- Router firmware

It provides low-level hardware control.

---

# Middleware

Think:

> Software Translator

Middleware helps different systems communicate.

---

# Restaurant Example

Chef only speaks French.

Supplier only speaks English.

Translator sits between them.

Middleware does the same for applications.

---

# Process Isolation

Multiple applications run simultaneously.

We must stop them interfering with each other.

---

# Memory Segmentation

Each process gets its own memory area.

Process A cannot access Process B memory.

---

## Apartment Example

Each tenant gets their own apartment.

They cannot enter neighbours' apartments.

---

# Time Division Multiplexing

Processes take turns using resources.

CPU time is shared.

One process at a time.

Very rapidly.

---

## Restaurant Example

One chef uses the oven.

Then another.

Then another.

Nobody owns it forever.

---

# CPU Privilege States

There are two major CPU states.

---

# Problem State

Low privilege.

Normal applications run here.

Limited access.

---

# Supervisor State

High privilege.

Operating system functions run here.

Full access.

---

## Easy Memory

Supervisor = Super Powers

More privilege.

---

# Operating System Modes

Very similar concept.

---

# User Mode

Restricted.

Applications run here.

---

# Kernel Mode

Highly privileged.

System kernel runs here.

---

# Easy Memory

User Mode = Limited

Kernel Mode = Full Control

---

# Ring Protection Model

Think of rings around a castle.

Closer to the center = More trust

Further away = Less trust

---

# Ring 0

Highest privilege.

Contains:

- System Kernel
- Firmware

Most protected area.

---

# Ring 3

Lowest privilege.

Contains:

- User applications

Least privilege.

---

# Easy Memory

Ring 0 = King

Ring 3 = Commoner

---

# Secure Memory Management

Memory access must be controlled.

Security Kernel mediates access.

Goals:

- Prevent unauthorized access
- Stop buffer overflows
- Prevent memory exhaustion

---

## CISSP Thinking

Memory management is really another example of:

Subject → Object → Mediation

Everything comes back to the Reference Monitor.

---

# Data Hiding

Data at higher levels remains invisible to lower levels.

If I don't know it exists:

I can't attempt to access it.

---

# Bell-LaPadula Connection

This is essentially implementing confidentiality.

Higher classified information remains hidden.

---

## Government Example

Secret user cannot see Top Secret files.

Data is hidden.

Confidentiality preserved.

---

# Defense in Depth

This brings everything together.

One control should never be trusted alone.

Layers are required.

---

# Restaurant Example

Protecting the safe:

Layer 1:
Locked Office

Layer 2:
Alarm System

Layer 3:
Camera

Layer 4:
Safe Combination

Layer 5:
Security Guard

An attacker must defeat multiple layers.

---

# Real ACT Government Example

For a laptop:

Layer 1:
Windows Login

Layer 2:
MFA

Layer 3:
BitLocker

Layer 4:
Defender

Layer 5:
Conditional Access

Layer 6:
SIEM Monitoring

This is Defense in Depth.

---

# What CISSP Really Wants You to Learn

This entire chapter is really teaching one central idea:

Security is not one thing.

Security is the combination of trusted mechanisms working together to enforce policy.

The TCB is that trusted foundation.

The Reference Monitor controls access.

The Security Kernel implements those controls.

Hardware, software, memory management, privilege levels, and defense in depth all work together to ensure that security decisions are consistently enforced.

# Ultimate Memory Sheet

```text
TCB
= Totality of protection mechanisms

Reference Monitor Concept
= Control subject access to objects

Subject
= Active entity

Object
= Passive entity

Mediation
= Access control

Rules
= Decision logic

Logging
= Assurance

Security Kernel
= Implementation of Reference Monitor

Security Kernel Requirements:
Completeness = No bypass
Isolation = Tamperproof
Verifiability = Prove it works

Primary Storage:
Cache
Registers
RAM

Primary Storage:
Fast
Small
Volatile

Secondary Storage:
SSD
HDD
Tape

Secondary Storage:
Slower
Large
Non-volatile

Virtual Memory
= Disk used to simulate additional RAM

System Kernel
= Core of OS

Security Kernel
= Security enforcement

Firmware
= Software embedded in hardware

Middleware
= Software translator

Process Isolation:
Memory Segmentation
Time Division Multiplexing

CPU:
Problem State = Low privilege
Supervisor State = High privilege

OS:
User Mode = Restricted
Kernel Mode = Full access

Ring 0 = System Kernel
Ring 3 = User Applications

Data Hiding
= Hide higher-level data

Defense in Depth
= Multiple security layers

Most Important Exam Idea:
Every access should be mediated by trusted controls that cannot be bypassed, cannot be tampered with, and can be verified.
```
