

This is one of the **highest-value topics in the entire CISSP**.

Why?

Because Risk Management is the foundation for almost every security decision.

A firewall? Risk Management.

MFA? Risk Management.

Backup systems? Risk Management.

Cyber insurance? Risk Management.

Cloud security? Risk Management.

The CISSP exam repeatedly asks:

> "Given limited resources, what is the BEST thing the organization should do?"

And the answer is almost always:

> "Use Risk Management to make a business decision."

Let's break this down using:

1.  Restaurant Chain Example
2.  Antivirus Company Example
3.  Real ACT Government Example

* * *

# The Big Picture

## The Problem Every Security Team Faces

Imagine you become the CISO.

You discover:

-   20,000 laptops
-   500 servers
-   300 applications
-   5,000 employees
-   50 vendors
-   Hundreds of vulnerabilities

Now management asks:

> "What should we fix first?"

You cannot fix everything.

You don't have:

-   Unlimited money
-   Unlimited staff
-   Unlimited time

So how do you decide?

That's Risk Management.

* * *

# CEO Thinking

Most engineers think:

> Fix everything.

CEO thinks:

> Protect what matters most first.

This is the CISSP mindset.

* * *

# Restaurant Example

You own a restaurant chain.

Potential Problems:

-   Kitchen fire
-   Customer credit card theft
-   Staff injuries
-   WiFi hacking
-   Website outage
-   Flooding

Can you spend $50 million solving every possible problem?

No.

Therefore:

You identify the biggest risks first.

* * *

# What is Risk Management?

Simple definition:

> Determining where to spend limited resources to reduce the most important risks.

Think:

Maximum Protection
Using
Limited Resources

* * *

# The Three Major Steps

At a high level:

1. Asset Valuation

2. Risk Analysis

3. Risk Treatment

Think of it like visiting a doctor.

What is important?
↓
What is wrong?
↓
What should we do?

* * *

# STEP 1: Asset Valuation

Before protecting something:

You need to know its value.

* * *

## Restaurant Example

Which is more important?

-   Decorative plant
-   Card payment system

Obviously:

Card Payment System

So it gets higher protection.

* * *

## Antivirus Company Example

Which is more important?

-   Visitor parking sign
-   Malware detection engine

Obviously:


Malware detection engine

That is the company's crown jewel.

* * *

# Quantitative Asset Valuation

Uses money.

Examples:



Asset A = $100,000

Asset B = $2 million

Asset C = $10 million

Easy to compare.

* * *

## Why CISSP Likes It

Management understands money.

If you tell executives:

> "This risk may cost $5 million."

They listen.

* * *

## Reality

Most assets are difficult to value.

Example:

How much is:

-   Reputation worth?
-   Customer trust worth?
-   Public confidence worth?

Almost impossible to calculate accurately.

* * *

# Qualitative Asset Valuation

Much more common.

Instead of money:



High

Medium

Low

Or:


Critical

Important

Normal

* * *

## ACT Government Example

Citizen data:

Critical

Office printer:

Low

Simple.

Practical.

Widely used.

* * *

# STEP 2: Risk Analysis

Now we understand what assets matter.

Next:

> What could happen to them?

Risk Analysis studies:

Threats

Vulnerabilities

Likelihood

Impact

* * *

# Threat

A threat is:

> Anything capable of causing harm.

* * *

## Restaurant Example

Threats include:

-   Fire
-   Theft
-   Flood
-   Power outage

* * *

## Antivirus Company Example

Threats include:

-   Ransomware
-   Nation-state attack
-   Insider threat
-   Data breach

* * *

# Important CISSP Formula


Threat = Potential Danger

Threats may exist.

They have not happened yet.

* * *

# Vulnerability

A vulnerability is:

> A weakness.

* * *

## Restaurant Example

Threat:

Fire

Vulnerability:

 
No fire extinguishers

* * *

## Antivirus Company Example

Threat:

 
Hackers

Vulnerability:

 
Unpatched servers

* * *

# Easy CISSP Memory Trick

 
Threat = Bad Guy

Vulnerability = Open Door

No open door?

Bad guy cannot get in.

* * *

# Risk

CISSP loves this relationship:

Threat + Vulnerability = Risk

Example:

Threat:

 
Attacker

Vulnerability:

 
Weak Password

Risk:

 
Account Compromise

* * *

# Threat Modeling

Threat Modeling helps systematically identify threats.

Think:

> "What could go wrong?"

* * *

# STRIDE

Fast.

Easy.

Popular.

Used to identify threats.

* * *

## Restaurant Memory Analogy

Think:

Quick Kitchen Inspection

Manager quickly walks around and asks:

 
What could go wrong?

That's STRIDE.

* * *

# STRIDE Breakdown

 
S = Spoofing

 
T = Tampering

 

R = Repudiation

 

I = Information Disclosure

 

D = Denial of Service

 
E = Elevation of Privilege

* * *

## Restaurant Example

Spoofing

Someone pretends to be a supplier.

Tampering

Someone changes inventory records.

Repudiation

Employee denies placing an order.

Information Disclosure

Customer database leaks.

Denial of Service

Online ordering unavailable.

Elevation of Privilege

Cashier gains manager privileges.

* * *

# PASTA

This is the heavyweight approach.

Think:

 
STRIDE = Quick Check

 
PASTA = Full Investigation

* * *

## Restaurant Example

Instead of a 30-minute inspection:

Management spends weeks analyzing:

-   Business risks
-   Legal obligations
-   Financial impacts
-   Attack paths

More effort.

Better insights.

* * *

# DREAD

DREAD does NOT identify threats.

DREAD prioritizes threats.

* * *

## Easy Memory Trick

 
STRIDE Finds

 
DREAD Decides

First:

Find threats.

Then:

Rank threats.

* * *

# Likelihood

Likelihood asks:

> How likely is this to happen?

* * *

## Example

Restaurant

Meteor strike:

 
Very Low

Kitchen fire:

 
Moderate

Employee mistake:

 
High


* * *

# Impact

Impact asks:

> If it happens, how bad is it?

* * *

## Examples

Printer Offline:

 
Low Impact

Citizen Data Breach:

 
High Impact

* * *

# CISSP Thinking

Risk increases when:

 
Likelihood increases

 
OR

 

Impact increases

* * *

# Quantitative Risk Analysis

This is where CISSP math appears.

Fortunately it is very simple.

* * *

# SLE

Single Loss Expectancy

How much will one incident cost?

Formula:

 
SLE = Asset Value × Exposure Factor

* * *

## Example

Database value:

 
$100,000

Exposure Factor:

 
40%

SLE:

 
$40,000

* * *

# ARO

Annual Rate of Occurrence

How many times yearly?

Example:

 
2 times per year

ARO = 2

* * *

# ALE

Annualized Loss Expectancy

The famous CISSP formula.

 
ALE = SLE × ARO

* * *

Example:

 
SLE = $40,000

 
ARO = 2

Result:

 
ALE = $80,000

Meaning:

This risk costs approximately:

 
$80,000 per year

* * *

# Memory Trick

 
One Loss = SLE

 
Yearly Loss = ALE

* * *

# Why ALE Matters

Suppose a security control costs:

 
$10,000

But prevents:

 
$80,000

in annual losses.

Easy business decision.

* * *

# STEP 3: Risk Treatment

After understanding the risk:

> What do we do about it?

There are four options.

* * *

# Avoid

Avoid the activity completely.

* * *

## Restaurant Example

Risk:

Skydiving restaurant promotion.

Solution:

Don't do it.

Risk avoided.

* * *

## Easy Memory

 
Avoid = Don't Play

* * *

# Transfer

Move financial impact elsewhere.

Usually insurance.

* * *

## Restaurant Example

Fire insurance.

If fire occurs:

Insurance helps cover cost.

* * *

## Important CISSP Rule

You transfer:

 
Financial Burden

You DO NOT transfer:

 
Accountability

* * *

# Mitigate

Most common answer in CISSP.

Reduce risk using controls.

* * *

## Examples

-   Firewalls
-   MFA
-   Encryption
-   Backups
-   Security Awareness

* * *

# Residual Risk

Very important.

No control eliminates all risk.

Something always remains.

That's Residual Risk.

* * *

## Example

MFA reduces phishing.

It doesn't eliminate phishing.

Residual risk remains.

* * *

# Three Types of Controls

# Administrative

People and paperwork.

Examples:

-   Policies
-   Procedures
-   Training

* * *

## Restaurant Example

Food safety policy.

* * *

# Technical

Technology controls.

Examples:

-   Firewalls
-   IDS
-   MFA
-   Encryption

* * *

## Your Environment

Microsoft Defender

Conditional Access

BitLocker

These are technical controls.

* * *

# Physical

Physical protection.

Examples:

-   Cameras
-   Locks
-   Security guards
-   Fences

* * *

# Safeguards vs Countermeasures

Think:

 
Before Incident

 
vs

 

After Incident

* * *

# Safeguards

Try to stop incidents.

### Directive

Tells people what to do.

Example:

Policy.

* * *

### Deterrent

Discourages bad behaviour.

Example:

Warning signs.

CCTV signs.

* * *

### Preventive

Actually blocks attacks.

Example:

Firewall.

MFA.

Locked door.

* * *

# Countermeasures

Respond after something happens.

* * *

### Detective

Finds the problem.

Examples:

-   SIEM
-   IDS
-   Smoke detector

* * *

### Corrective

Fixes damage.

Example:

Fire suppression system.

* * *

### Recovery

Returns to normal.

Example:

Disaster Recovery Plan.

Backups.

* * *

# Compensating Controls

Used when ideal controls aren't possible.

* * *

## Example

System does not support MFA.

Implement:

-   Additional logging
-   Restricted access
-   Enhanced monitoring

Not perfect.

Better than nothing.

* * *

## Easy Memory

 
Compensating = Backup Plan

* * *

# Functional vs Assurance

A control must provide:

## Functional

Does something useful.

Firewall blocks traffic.

* * *

## Assurance

Proves it works.

Monitoring.

Logs.

Audits.

Testing.

* * *

## Restaurant Example

Fire extinguisher installed.

Functional.

Inspect it monthly.

Assurance.

* * *

# Accept

Sometimes fixing a risk costs more than the risk itself.

Management accepts it.

* * *

## Example

$200 risk.

$50,000 solution.

Not worth it.

Accept the risk.

* * *

# Critical CISSP Rule

Who accepts risk?

 
Asset Owner

Not:

-   Technician
-   Engineer
-   Security analyst

The owner.

Because:

 
Owner = Accountable

* * *

# Risk Management Framework (RMF)

Think of RMF as a recipe for managing risk.

NIST RMF has 7 steps:

 
Prepare

Categorize

Select

Implement

Assess

Authorize

Monitor

* * *

# Restaurant Example

Prepare = Plan inspection

Categorize = Identify risks

Select = Choose controls

Implement = Deploy controls

Assess = Test controls

Authorize = Owner approves opening

Monitor = Ongoing reviews

* * *

# Memory Trick

 
Prepare

Categorize

Select

Implement

Assess

Authorize

Monitor

Say it as:

 
PCSIAAM

Or:

> Prepare Cats So I Always Approve Monitoring

Silly, but memorable.

* * *

# What CISSP Really Wants You To Learn

Most people think Risk Management is:

 
Math

Spreadsheets

Reports

CISSP says Risk Management is actually:

> Making intelligent business decisions with limited resources.

The best CISSP answer is often NOT:

> "Implement the strongest security control."

The best CISSP answer is:

> "Implement the most appropriate control based on risk, business objectives, and cost."

# Ultimate Memory Sheet

Risk Management =
Protect the most important assets first

Three Steps:
1 Asset Valuation
2 Risk Analysis
3 Risk Treatment

Threat = Potential danger

Vulnerability = Weakness

Threat + Vulnerability = Risk

Likelihood = Chance

Impact = Damage

SLE = Asset Value × Exposure Factor

ALE = SLE × ARO

Avoid = Don't do it

Transfer = Insurance

Mitigate = Reduce risk

Accept = Live with risk

Residual Risk = Risk remaining

Administrative = Policies

Technical = Technology

Physical = Physical security

Directive = Tell

Deterrent = Discourage

Preventive = Stop

Detective = Find

Corrective = Fix

Recovery = Restore

Compensating = Alternative control

Asset Owner = Accepts risk

RMF:
Prepare
Categorize
Select
Implement
Assess
Authorize
Monitor

CISSP Mindset:
Not "How do I secure everything?"
But
"What is the best business decision based on risk?"
