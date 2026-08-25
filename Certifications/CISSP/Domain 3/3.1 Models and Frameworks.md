This section looks intimidating because it throws dozens of models and frameworks at you.

The mistake most CISSP students make is trying to memorize everything.

The CISSP isn't testing whether you can memorize acronyms.

It's testing whether you understand:

> How do security leaders break down a massive business into manageable pieces so security can be embedded everywhere?

Let's approach this from a CEO perspective, a Restaurant example, and an Antivirus Company example.

* * *

# The Big Picture

Imagine you're the CEO of a large Antivirus Company.

You have:

-   Employees
-   Offices
-   Cloud infrastructure
-   Source code
-   Customer data
-   Vendors
-   Networks
-   Security teams

Someone asks:

> "Is the company secure?"

That's an impossible question.

The company is too large and too complex.

So what do we do?

We create models.

A model is simply a way to simplify reality.

Think of a model as a map.

A map is not the real world.

A map simplifies the real world so you can understand it.

Security models do exactly the same thing.

* * *

# Why Models Matter

## Restaurant Example

Imagine inspecting a restaurant.

You could say:

> "Protect the restaurant."

But that's too vague.

Instead you break it into pieces:

-   Kitchen
-   Dining area
-   Cash registers
-   Staff
-   Suppliers
-   Customers

Now security becomes manageable.

Models help us break big problems into smaller problems.

This is why CISSP loves models.

* * *

# Enterprise Security Architecture

Let's start at the biggest level.

Enterprise Security Architecture means:

> How do we secure the entire organization?

Not just:

-   Firewalls
-   Servers
-   Databases

But:

-   People
-   Processes
-   Technology
-   Physical locations
-   Vendors

Everything.

* * *

# Zachman

Think:

> Enterprise Blueprint

Just like an architect creates a blueprint before building a skyscraper.

Zachman creates a blueprint of a business.

* * *

## Restaurant Example

Before protecting a restaurant chain you ask:

-   Who works here?
-   What systems exist?
-   Where are locations?
-   When are processes performed?
-   Why do processes exist?

That's exactly Zachman thinking.

* * *

### Exam Tip

You do NOT need to memorize the table.

Just remember:

> Zachman = Enterprise Architecture Framework

* * *

# SABSA

This is probably the most "security-focused" architecture.

Unlike Zachman:

SABSA starts with:

> Business requirements and risks.

Then builds security around them.

* * *

## Restaurant Example

CEO says:

> "Protect customer payment data."

SABSA asks:

-   What business risk exists?
-   What security controls reduce it?

Business first.

Security second.

* * *

### Memory Trick

Think:

> SABSA = Security Architecture Based on Security Analysis

Not technically what it stands for, but useful for remembering.

* * *

# TOGAF

TOGAF is another framework for designing enterprise architecture.

Think:

> TOGAF helps build and organize the enterprise.

Just like Zachman.

* * *

### Exam Tip

For CISSP:

Remember:

-   Zachman = Enterprise Architecture
-   SABSA = Security Architecture
-   TOGAF = Enterprise Architecture

Don't overcomplicate it.

* * *

# Security Models

Now we zoom in.

Architecture looks at the whole company.

Security Models look at specific security problems.

Most often:

-   Confidentiality
-   Integrity
-   Conflicts of Interest

* * *

# Lattice-Based Models

Lattice means:

> Layers

Think classification levels.

Example:

-   Public
-   Internal
-   Confidential
-   Secret

* * *

# Bell-LaPadula

This is probably the most famous CISSP model.

Its only concern is:

# Confidentiality

Nothing else.

* * *

## Government Example

Imagine classified documents.

Levels:

-   Unclassified
-   Confidential
-   Secret
-   Top Secret

Bell-LaPadula exists to prevent information leakage.

* * *

# Simple Security Rule

No Read Up

You cannot read above your classification.

* * *

## Example

You have a Secret clearance.

You cannot read Top Secret files.

Why?

Confidentiality.

* * *

# Star (\*) Property

No Write Down

You can only write up.

* * *

## Example

You have Top Secret information.

You cannot write it into a Public document.

That would leak information.

* * *

# Easy Memory Trick

Think:

Water leaks downward.

Bell-LaPadula prevents secrets flowing downward.

Therefore:

-   No Read Up
-   No Write Down

* * *

# Restaurant Example

Restaurant Owner knows the secret recipe.

Junior cashier does not.

Cashier cannot read the recipe.

Owner cannot write recipe details onto public advertising screens.

That's Bell-LaPadula.

* * *

# Biba

Biba is the mirror image.

Its focus is:

# Integrity

Think:

Accuracy

Trustworthiness

Quality

* * *

# Simple Integrity Rule

No Read Down

* * *

## Why?

Lower integrity data may be inaccurate.

* * *

## Example

Financial Director trusts audited reports.

Not random social media posts.

Reading untrusted data damages integrity.

* * *

# Star Integrity Rule

No Write Up

* * *

## Why?

You don't want lower-quality information contaminating higher-quality information.

* * *

## Example

Intern should not be updating official financial statements.

Lower integrity cannot corrupt higher integrity.

* * *

# Easy Memory Trick

Bell-LaPadula = Confidentiality

Biba = Integrity

They are opposites.

Bell:

-   Read Down
-   Write Up

Biba:

-   Read Up
-   Write Down

* * *

# CISSP Memory Trick

Biba contains the letter:

> I

Think:

> I = Integrity

* * *

# Lipner

One problem:

Bell-LaPadula protects confidentiality.

Biba protects integrity.

Organizations need BOTH.

Lipner combines them.

* * *

## Real World Example

ACT Government systems need:

-   Confidentiality
-   Integrity

Not just one.

Lipner solves this by combining concepts from Bell and Biba.

* * *

# Clark-Wilson

Many students find Clark-Wilson easier because it's closer to real business.

Focus:

# Integrity

But practical integrity.

* * *

## Example

Can an authorized person make bad changes?

Yes.

That's the real problem.

* * *

### Banking Example

A bank employee is authorized.

They still transfer $5 million to themselves.

Integrity problem.

* * *

# Clark-Wilson Goals

Prevent:

1.  Unauthorized changes
2.  Bad authorized changes
3.  Inconsistent systems

* * *

## Restaurant Example

Cashier is authorized to issue refunds.

Should they issue themselves a $20,000 refund?

No.

Clark-Wilson introduces controls to stop that.

* * *

# Separation of Duties

One of the most important CISSP concepts.

* * *

## Example

Person A creates a payment.

Person B approves it.

Fraud becomes harder.

* * *

## ACT Government Example

A staff member requests elevated access.

A different staff member approves it.

That's Separation of Duties.

* * *

# Brewer-Nash (Chinese Wall)

This model has one purpose:

# Prevent Conflicts of Interest

* * *

## Example

You work for a consulting company.

You advise:

-   Coca-Cola

then

-   Pepsi

Huge conflict.

Brewer-Nash prevents this.

* * *

## Easy Memory Trick

Chinese Wall

Think:

> Build a wall between competing interests.

* * *

# Secure Design Principles

This is where CISSP becomes extremely practical.

These principles appear everywhere.

* * *

# Least Privilege

Users should only have enough access to perform their job.

Not more.

* * *

## ACT Government Example

Service Desk staff need:

-   Password reset

They probably don't need:

-   Domain Admin

That's Least Privilege.

* * *

# Defense in Depth

Never rely on one control.

Use layers.

* * *

## House Example

Protection layers:

-   Fence
-   Locked Door
-   Alarm
-   Camera
-   Security Guard

An attacker must defeat multiple layers.

* * *

## Microsoft Example

-   MFA
-   Conditional Access
-   Defender
-   EDR
-   SIEM

Defense in Depth.

* * *

# Secure Defaults

Systems should arrive secure.

* * *

## Example

New firewall.

Better default:

All traffic blocked.

Not:

Everything allowed.

* * *

# Fail Securely

When systems fail:

They should fail into a secure state.

* * *

## Firewall Example

Good:

Firewall crashes.

Traffic blocked.

Bad:

Firewall crashes.

Everything allowed.

* * *

# Separation of Duties

Already discussed.

Requires multiple people.

Reduces:

-   Fraud
-   Mistakes
-   Abuse

* * *

# KISS Principle

Keep It Simple.

The more complexity:

The more vulnerabilities.

* * *

## Restaurant Example

Recipe:

20 ingredients.

Harder.

Recipe:

5 ingredients.

Easier.

Security works the same way.

* * *

# Zero Trust

One of the most important modern concepts.

Traditional mindset:

> User is inside network = trusted

Zero Trust says:

> Trust nothing.

Verify everything.

* * *

## Microsoft Entra Example

User is:

-   Inside office
-   Using government laptop

Still verify:

-   Identity
-   Device compliance
-   MFA

That's Zero Trust.

* * *

# Trust But Verify

Often confused with Zero Trust.

Difference:

Zero Trust: Trust nobody.

Trust But Verify: Assume controls will fail, therefore monitor.

* * *

## Example

Firewall exists.

Great.

Also:

-   Log activity
-   Monitor alerts
-   Investigate incidents

Verify control effectiveness.

* * *

# Privacy by Design

Don't bolt privacy on later.

Build it in from the beginning.

* * *

## Restaurant Example

Creating loyalty application.

Bad:

Build application first.

Add privacy later.

Good:

Design privacy controls from day one.

* * *

# Shared Responsibility

Extremely important for cloud.

* * *

## Azure Example

Microsoft secures:

-   Datacenter

-   Physical hosts

Customer secures:

-   Users
-   Data
-   Permissions

Responsibility is shared.

Accountability remains with the owner.

* * *

# Security Frameworks

Frameworks provide structured guidance.

Think:

> Best practice playbooks.

* * *

# ISO 27001

The most important framework to know.

Focus:

Information Security Management System (ISMS)

* * *

### Executive View

ISO 27001 tells leadership:

> "These are the processes and controls needed for a mature security program."

* * *

### CISSP Exam Tip

Remember:

ISO 27001 = Certifiable

Organizations get certified.

* * *

# ISO 27002

Provides guidance for implementing controls.

* * *

### CISSP Exam Tip

ISO 27002 = Guidance

Not certification.

Easy distinction.

* * *

# NIST 800-53

Security and privacy controls.

Strongly associated with US Federal Government.

Think:

> Huge catalog of controls.

* * *

# COBIT

Created by ISACA auditors.

Focus:

Governance and Audit.

* * *

### Memory Trick

COBIT = Controls + Auditing

* * *

# ITIL

You've already studied ITIL.

Focus:

IT Service Management.

* * *

## Examples

-   Incident Management
-   Change Management
-   Problem Management
-   Availability Management

* * *

### Memory Trick

ITIL = Running IT Services Well

* * *

# HIPAA

Focus:

Medical Information Protection.

Think:

Healthcare privacy.

* * *

# SOX

Created following accounting scandals.

Focus:

Financial Integrity.

* * *

## Security View

Financial systems must have:

-   Integrity
-   Availability

* * *

# FedRAMP

Cloud authorization for US Government.

Think:

> Government-approved cloud.

* * *

# FISMA

Requires federal agencies to maintain information security programs.

Think:

> US Government security requirements.

* * *

# Cyber Kill Chain

This framework explains:

> How attackers operate.

The goal:

Break the attack before success.

* * *

# Restaurant Robbery Example

Robber:

1.  Watches restaurant
2.  Plans robbery
3.  Arrives
4.  Breaks in
5.  Installs tools
6.  Coordinates
7.  Steals money

If security stops step 2:

Attack ends.

* * *

# Cyber Kill Chain Stages

1.  Reconnaissance
2.  Weaponization
3.  Delivery
4.  Exploitation
5.  Installation
6.  Command & Control
7.  Actions on Objectives

* * *

## Easy Memory Story

Attacker:

Recon → Builds weapon → Delivers weapon → Exploits target → Installs malware → Creates command channel → Achieves objective

* * *

# The Deep CISSP Lesson

This entire chapter is really teaching one thing:

> Complex organizations cannot be secured through technology alone.

First you need:

-   Models
-   Architecture
-   Principles
-   Frameworks

These help leadership understand:

-   What exists
-   What matters
-   What risks exist
-   What controls are required

Only then do technologies like firewalls, SIEMs, MFA and encryption become useful.

# Ultimate Memory Sheet

Models
= Simplify complex syst*ms

Enterprise Security Architectu*e
= Protect the whole enterprise

*achman
= Enterprise Architecture

*ABSA
= Risk-driven Security Archit*cture

TOGAF
= Enterprise Architec*ure

Bell-LaPadula
= Confidentiali*y

Bell Rules:
No Read Up
No Write*Down

Biba
= Integrity

Biba Rules*
No Read Down
No Write Up

Lipner
* Bell + Biba

Clark-Wilson
= Integ*ity + Separation of Duties

Brewer*Nash
= Prevent Conflicts of Intere*t

Least Privilege
= Only required*access

Defense in Depth
= Layers *f security

Secure Defaults
= Secu*e by default

Fail Securely
= Fail*to secure state

SoD
= Multiple pe*ple required

KISS
= Simplicity re*uces vulnerabilities

Zero Trust
=*Trust Nothing Verify Everything

T*ust But Verify
= Prevent Detect Co*rect

Privacy By Design
= Build pr*vacy in early

Shared Responsibili*y
= Security responsibilities divi*ed

ISO 27001
= ISMS, Certifiable
*ISO 27002
= Implementation Guidanc*

NIST 800-53
= Security Controls
*COBIT
= Audit & Governance

ITIL
=*IT Service Management

HIPAA
= Hea*thcare Privacy

SOX
= Financial Integrity

FedRAMP
= Government Cloud Approval

FISMA
= Federal Security Program

Cyber Kill Chain:
Recon
Weaponize
Deliver
Exploit
Install
Command & Control
Actions
