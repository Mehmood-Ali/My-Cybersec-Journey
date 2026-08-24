# CISSP Domain 3: Vulnerabilities

## The Big Picture

This chapter is fundamentally about one uncomfortable truth:

> Every system contains vulnerabilities.

Not because developers are careless.

Not because administrators are incompetent.

But because modern systems are incredibly complex.

Think about your ACT Government environment.

A single service might involve:

- User
- Laptop
- Entra ID
- Conditional Access
- Defender
- VPN
- Application
- Database
- Network
- Cloud services

Every component has:

- Configuration settings
- Software
- Dependencies
- Human interactions

The more complex a system becomes, the more opportunities for vulnerabilities.

This topic teaches us:

1. Where vulnerabilities commonly occur
2. Why they occur
3. How to reduce their likelihood and impact

For CISSP, always think:

> "How would management design systems to reduce risk?"

Not:

> "How do I technically exploit it?"

---

# Single Point of Failure (SPOF)

## Definition

A Single Point of Failure exists when one component can fail and cause the entire system to fail.

---

## Restaurant Example

Imagine a restaurant with:

- One chef
- One POS server
- One power supply

If any one of them fails:

Restaurant operations stop.

That's a Single Point of Failure.

---

## Antivirus Company Example

Suppose the entire customer portal relies on:

- One database server

Database crashes.

No customer login.

No licensing.

No updates.

Entire business impacted.

---

## Real ACT Government Example

Imagine:

- One internet connection
- One firewall
- One domain controller

Failure causes widespread outages.

---

## Mitigation

Redundancy.

Examples:

- Multiple firewalls
- Multiple ISPs
- Multiple domain controllers
- Load balancing
- High availability clusters

---

## CISSP Exam Thinking

When you see:

> "How do we reduce a single point of failure?"

Think:

**Redundancy**

Almost always the answer.

---

# Bypass Controls

## Definition

Intentional mechanisms that allow security controls to be bypassed.

Keyword:

**Intentional**

The bypass was designed into the system.

---

## Example

Router reset button.

Press and hold:

- Password removed
- Factory settings restored

The security control was intentionally bypassed.

---

## Restaurant Example

Restaurant safe has:

- Normal combination lock
- Emergency override key

Emergency key = bypass control.

---

## Why Do They Exist?

Because organizations need emergency recovery options.

Without bypass mechanisms:

Systems could become permanently inaccessible.

---

## CISSP Thinking

Bypass controls are not automatically bad.

They are:

> Necessary controls that introduce additional risk.

---

## Mitigation

Additional security controls.

Examples:

- Physical security
- Logging
- Monitoring
- Separation of duties
- Change control

---

## Memory Trick

```text
Bypass Control = Intentional Shortcut

Mitigation = Additional Protection
```

---

# TOCTOU (Race Conditions)

## Definition

Time Of Check Time Of Use

Occurs when:

1. System checks something
2. Time passes
3. System uses it

An attacker changes something during the gap.

---

## Restaurant Example

Bouncer checks ID at door.

Customer swaps places with another person before entering.

Check was valid.

Usage is now invalid.

---

## Banking Example

System verifies:

```text
Account Balance = $100
```

Before transaction completes:

Balance changes.

System proceeds anyway.

Race condition.

---

## CISSP Exam Answer

The answer you're usually looking for:

**Increase frequency of validation or reauthentication**

Reduce the gap between:

Check

and

Use

---

## Memory Trick

```text
TOCTOU

Check
↓
Gap
↓
Use

Attacker lives in the gap.
```

---

# Emanations

## Definition

Signals emitted by devices that may leak information.

Examples:

- Electromagnetic radiation
- Sound
- Light
- Vibrations

---

## Example

A monitor emits electromagnetic signals.

An attacker captures them.

Display content reconstructed.

This is an emanation attack.

---

# TEMPEST

## Definition

Military-grade shielding against electromagnetic leakage.

---

## Easy Memory

```text
TEMPEST = Shielding
```

Whenever you see TEMPEST:

Think:

**Block emanations**

---

# Three Defences Against Emanations

## 1. Shielding

Examples:

- Faraday cages
- TEMPEST shielding
- Soundproofing

---

## 2. White Noise

Mask real signals with noise.

---

## Restaurant Example

Important meeting.

Play background music.

Makes eavesdropping harder.

---

## 3. Control Zones

Keep attackers physically away.

Example:

Secure rooms.

Restricted areas.

SCIFs.

---

# Covert Channels

## Definition

Unintentional communication paths.

Keyword:

**Unintentional**

Nobody designed them.

Yet information still leaks.

---

# Difference Between Covert Channels and Bypass Controls

## Bypass Control

Intentional

## Covert Channel

Unintentional

This is frequently tested.

---

## Example

Employees notice:

Every time executives order pizza at midnight:

Layoffs happen next week.

The pizza deliveries became an information channel.

No one intended that.

---

## Memory Trick

```text
Bypass = Intentional

Covert = Unintentional
```

---

# Aggregation & Inference

## Definition

When large amounts of information are combined and sensitive conclusions can be inferred.

---

## Example

Individually:

- Age
- Gender
- City

Not sensitive.

Combined:

Specific person identified.

---

## Intelligence Example

One report seems harmless.

100 reports combined:

Reveal classified information.

---

# Polyinstantiation

## Purpose

Prevent unauthorized inference.

Allows multiple versions of information.

Different users see different versions.

---

## Government Example

Public user sees:

```text
Project Status: Active
```

Senior Executive sees:

```text
Project Status: Active
Budget Overrun: $4M
```

Same record.

Different views.

---

## Memory Trick

```text
Poly = Many

Polyinstantiation = Many Versions
```

---

# Mobile Device Risks

## Why Mobile Devices Are Risky

Because they are:

- Portable
- Easily lost
- Frequently stolen
- Used outside trusted networks

---

## ACT Government Example

Laptop left in:

- Taxi
- Airport
- Café

Potential privacy breach.

---

# Reducing Mobile Risk

## Policies

Rules for acceptable use.

---

## Training

Users understand responsibilities.

---

## Procedures

Consistent handling practices.

---

# Remote Access Security

Data travelling across the internet requires protection.

Primary control:

**Encryption**

Examples:

- VPN
- TLS

---

# Endpoint Security

Protect the device itself.

Examples:

- BitLocker
- MFA
- Defender
- Remote Wipe

---

# OWASP Mobile Top 10

Think of this as:

> The most common mobile application security mistakes.

You don't need deep technical knowledge.

Understand what each category generally means.

---

## M1 Improper Platform Usage

Using built-in security features incorrectly.

Examples:

- FaceID
- Keychain

Fix:

Secure development.

---

## M2 Insecure Data Storage

Sensitive data stored improperly.

Fix:

Avoid storing sensitive data locally.

---

## M3 Insecure Communication

Data exposed during transmission.

Fix:

TLS / Encryption.

---

## M4 Insecure Authentication

Authentication performed incorrectly.

Fix:

Server-side authentication.

---

## M5 Insufficient Cryptography

Weak encryption.

Fix:

Strong, proven encryption.

---

## M6 Insecure Authorization

Users gain access they shouldn't.

Fix:

Server-side authorization checks.

---

## M7 Client Code Quality

Bugs and coding flaws.

Fix:

Secure coding practices.

---

## M8 Code Tampering

Application modified by attacker.

Fix:

Integrity verification.

---

## M9 Reverse Engineering

Attackers analyze application internals.

Fix:

Code obfuscation.

---

## M10 Extraneous Functionality

Debug code left behind.

Fix:

Code review.

---

# Web Vulnerabilities

These appear frequently on CISSP.

Understand:

- Who is the target?
- What is being attacked?

---

# Cross-Site Scripting (XSS)

## Definition

Attacker injects malicious script into web content.

Victim browser executes it.

---

## Target

The Client

The user's browser.

---

## Easy Memory

```text
XSS attacks the browser.
```

---

# Stored XSS

Malicious code stored on server.

Every visitor receives it.

---

## Example

Forum comment contains JavaScript.

Everyone viewing comment executes code.

---

## Keyword

Persistent.

Stored forever until removed.

---

# Reflected XSS

Most common form.

Malicious input immediately reflected back to victim.

Usually:

- Email
- Link
- Phishing

---

## Memory Trick

```text
Reflected = Bounce Back
```

Attack is reflected back.

---

# DOM XSS

Uses client-side Document Object Model.

More technical.

Rare for CISSP.

Don't focus heavily on it.

---

# Cross-Site Request Forgery (CSRF)

## Definition

Attacker tricks an already-authenticated user into performing actions.

---

## Example

User already logged into bank.

Attacker tricks user into clicking malicious link.

Browser submits valid authorized request.

---

## Target

The Server

Not the browser.

---

# XSS vs CSRF

Critical CISSP distinction.

## XSS

Target = Client

Browser executes malicious code.

---

## CSRF

Target = Server

User's authentication is abused.

---

## Memory Trick

```text
XSS = Client

CSRF = Server
```

---

# SQL Injection

One of the most important CISSP vulnerabilities.

---

## Definition

Attacker injects SQL commands into application input fields.

Application passes them to the database.

Attacker gains database control.

---

## Restaurant Example

Waiter asks:

> "What's your table number?"

Customer responds with:

SQL code.

Waiter blindly passes response to manager.

Chaos follows.

---

# Root Cause

Failure to validate input.

This is the key CISSP lesson.

---

# Prevention

## Input Validation

Validate.

Sanitize.

Escape.

Filter.

Never trust user input.

---

## Exam Shortcut

Many technical answers exist.

Most CISSP questions ultimately reduce to:

**Input validation was not performed.**

or

**Input validation should be performed.**

---

# Client-Side vs Server-Side Validation

Very important.

---

## Client-Side Validation

Browser validates.

Easy to bypass.

Not trustworthy.

---

## Server-Side Validation

Server validates.

Trusted.

Required.

---

## Exam Answer

Always choose:

**Server-Side Validation**

---

# Allow Lists vs Deny Lists

## Allow List

Only approved inputs permitted.

Everything else blocked.

---

## Deny List

Only known bad inputs blocked.

Everything else permitted.

---

## Which Is Better?

Allow List

Always more secure.

---

## Restaurant Example

Allow List:

Only registered guests can enter.

---

Deny List:

Only known troublemakers denied.

Everyone else allowed.

Which sounds safer?

Allow List.

---

# High Value CISSP Exam Notes

```text
Single Point of Failure
= Prevent with Redundancy

Bypass Control
= Intentional

Covert Channel
= Unintentional

TOCTOU
= Race Condition

TEMPEST
= Shielding

Polyinstantiation
= Multiple versions of data

Mobile Device Risk
= Policy + Encryption + Endpoint Security

XSS
= Client Target

Stored XSS
= Persistent

Reflected XSS
= Most Common

CSRF
= Server Target

SQL Injection
= Database Attack

Best Defense
= Input Validation

Validation Location
= Server Side

Allow List
= Better than Deny List
```

# The Deep CISSP Takeaway

Most vulnerabilities discussed in this chapter are not technology problems.

They are design problems.

The recurring CISSP lesson is:

- Build systems with redundancy
- Assume inputs are malicious
- Validate everything
- Limit trust
- Separate duties
- Apply defense in depth
- Design security into the system from the beginning

A CISSP does not wait for vulnerabilities to appear.

A CISSP asks:

> "How can we design the system so these vulnerabilities are less likely to occur in the first place?"
