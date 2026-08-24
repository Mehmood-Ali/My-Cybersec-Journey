###### Copilot said:

This is another topic where many CISSP students get lost trying to memorize acronyms:

-   TCSEC
-   ITSEC
-   Common Criteria
-   EAL
-   TOE
-   PP
-   ST

The exam, however, is really teaching a much simpler business concept:

> "How do we know a security product is actually secure before we spend millions of dollars on it?"

Think like a CEO, CISO, or Procurement Manager.

* * *

# The Big Picture

Imagine you are the CISO of an Antivirus Company.

You need a firewall.

You invite three vendors:

**Vendor A**

> "Our firewall is amazing."

**Vendor B**

> "Our firewall is the most secure in the world."

**Vendor C**

> "Our firewall has military-grade protection."

How do you know who's telling the truth?

You don't.

Because vendors are salespeople.

They are selling products.

This is why Evaluation Criteria exists.

* * *

# Evaluation Criteria

Evaluation Criteria exists to answer one question:

> Can an independent third party verify the vendor's security claims?

Instead of trusting marketing, we trust independent testing.

Think of it like buying a car.

A car manufacturer says:

> "This car is very safe."

You don't trust the advertisement.

You trust:

-   Crash tests
-   Independent reviewers
-   Safety ratings

Evaluation Criteria is the cybersecurity equivalent of crash testing.

* * *

# Restaurant Example

Imagine you're buying commercial kitchen equipment.

Every vendor claims:

> "Our oven is the safest and most reliable."

Instead of believing them, you hire an independent inspection company.

The inspector evaluates:

-   Safety
-   Reliability
-   Standards compliance

Now you have objective evidence.

That is exactly what Evaluation Criteria does for security products.

* * *

# The Two Major Steps

Many students miss this.

There are actually **two stages**:

## Certification

Technical evaluation.

Independent lab tests the product.

* * *

## Accreditation

Management approval.

Management decides:

> "Based on the certification results, can we use this product?"

* * *

# Easy Memory Trick

Think:

Plain Text

1

Certification

2

\= Technical people test

3

4

Accreditation

5

\= Management approves

* * *

# Real ACT Government Example

Suppose ACT Government wants to buy:

-   New firewall
-   New SIEM
-   New cloud solution

Technical experts evaluate the solution.

That's Certification.

Senior management approves deployment.

That's Accreditation.

* * *

# Certification

Certification answers:

> Does this product actually do what it claims?

This involves:

-   Testing
-   Verification
-   Review
-   Technical assessment

Important:

Certification is performed by technical experts.

Not business executives.

* * *

# Accreditation

Accreditation answers:

> Are we willing to accept the risk of deploying this solution?

This is a management decision.

Notice the connection to Domain 1.

Who accepts risk?

The owner.

Management.

Not engineers.

Not analysts.

* * *

# Why CISSP Loves Accreditation

Because it reinforces a major CISSP principle:

> Technical teams provide information.
>
> Management makes risk decisions.

* * *

# Historical Progression

Think of Evaluation Criteria evolving through history.

Plain Text

1

TCSEC

2

↓

3

ITSEC

4

↓

5

Common Criteria

Every new system fixed weaknesses in the previous one.

* * *

# TCSEC (Orange Book)

The oldest major model.

Also called:

**Orange Book**

* * *

# What Problem Was TCSEC Solving?

Back then systems were mostly:

-   Standalone
-   Not heavily networked
-   Focused on classified information

TCSEC primarily cared about:

# Confidentiality

Only confidentiality.

Not integrity.

Not availability.

* * *

# Restaurant Example

Imagine a recipe safe.

The only concern is:

> Who can see the recipe?

TCSEC focuses on secrecy.

Not accuracy.

Not availability.

Just secrecy.

* * *

# Major Limitation #1

TCSEC only evaluates:

Plain Text

1

Confidentiality

* * *

# Major Limitation #2

TCSEC only evaluates:

Plain Text

1

Standalone systems

No networked environments.

Today that sounds ridiculous because almost everything is networked.

But historically it made sense.

* * *

# TCSEC Ratings

The ratings progress from worst to best.

## D1

Failed or not tested.

Basically:

> We know almost nothing.

* * *

## C1

Weak protection.

Basic security.

* * *

## C2

Stronger login controls.

Historically the most common level.

* * *

## B1

Very important exam fact:

**B1 introduces Security Labels**

Remember that.

### Exam Memory Trick

Plain Text

1

B1 = Begin Labeling

* * *

## B2

Labels plus covert channel analysis.

* * *

## B3

Secure during startup.

* * *

## A1

Highest level.

Verified design.

Extremely rigorous.

* * *

# Easy Memory

As you move:

Plain Text

1

D → C → B → A

Security increases.

* * *

# Why TCSEC Became Insufficient

Technology evolved.

Organizations needed:

-   Networks
-   Integrity protection
-   Better assurance

TCSEC couldn't handle these requirements.

* * *

# ITSEC

Information Technology Security Evaluation Criteria.

Think:

> TCSEC 2.0

* * *

# Major Improvement #1

Supports:

Plain Text

1

Confidentiality

2

+

3

Integrity

4

\`\`

Now we're protecting both.

This aligns with Bell-LaPadula and Biba concepts.

* * *

# Major Improvement #2

Supports:

Plain Text

1

Networked Systems

A huge advancement.

Now we can evaluate real-world enterprise products.

* * *

# Major Improvement #3

Introduces Assurance Levels

Remember from Risk Management:

Functional = What it does

Assurance = How confident we are it works

* * *

# Antivirus Company Example

Firewall functionality:

-   Block traffic

IDS functionality:

-   Detect attacks

Assurance asks:

> How do we know it actually works?

That's a much deeper question.

* * *

# Functional vs Assurance

This distinction appears throughout CISSP.

## Functional

What a control does.

Example:

Firewall blocks traffic.

* * *

## Assurance

Confidence it works correctly.

Example:

Testing.

Auditing.

Verification.

Monitoring.

* * *

# Why Assurance Matters

Imagine two firewalls.

Firewall A:

-   Blocks traffic

Firewall B:

-   Blocks traffic
-   Thoroughly tested
-   Independently verified

Which one would you trust more?

Firewall B.

That's Assurance.

* * *

# Common Criteria

This is the modern answer.

This is the framework CISSP cares about most.

* * *

# Remember This

Plain Text

1

Common Criteria

2

\=

3

ISO 15408

This is the current international standard.

* * *

# Why Common Criteria Exists

Different countries originally used different evaluation methods.

Common Criteria became:

> A global standard.

Allowing everyone to speak the same language.

* * *

# Common Criteria Process

Think of it as three questions.

* * *

# 1\. Protection Profile (PP)

What should this category of products do?

Category-level requirements.

Example:

Firewalls.

Smart cards.

HSMs.

VPNs.

* * *

## Restaurant Example

Think:

> What should a commercial oven be capable of doing?

That's the Protection Profile.

* * *

# 2\. Target of Evaluation (TOE)

The actual item being tested.

Specific product.

Example:

Cisco Firewall Model XYZ

Microsoft Product ABC

Palo Alto Firewall DEF

* * *

# Memory Trick

Plain Text

1

TOE = The actual Thing being Evaluated

* * *

# 3\. Security Target (ST)

Created by the vendor.

Explains:

> What security capabilities does the vendor claim exist?

Essentially:

"Here's what our product should do."

* * *

# Common Criteria Flow

Think:

Plain Text

1

PP

2

↓

3

Requirements

4

5

TOE

6

↓

7

Product

8

9

ST

10

↓

11

Vendor Claims

12

13

Lab Testing

14

↓

15

Result

16

17

EAL

* * *

# Evaluation Assurance Levels (EAL)

This is what students should remember.

EAL measures:

> How thoroughly was the product evaluated?

Not necessarily:

> How secure is the product?

This distinction matters.

* * *

# Important CISSP Insight

Higher EAL does not automatically mean:

Plain Text

1

Better Security

It means:

Plain Text

1

More Thorough Evaluation

* * *

# EAL Levels

## EAL1

Functionally Tested

Basic evaluation.

* * *

## EAL2

Structurally Tested

Slightly deeper.

* * *

## EAL3

Methodically Tested and Checked

More rigorous.

* * *

## EAL4

Methodically Designed, Tested and Reviewed

Very common commercial target.

* * *

## EAL5

Semi-Formally Designed and Tested

* * *

## EAL6

Semi-Formally Verified

* * *

## EAL7

Formally Verified

Highest level.

Extremely rigorous.

Very expensive.

Very rare.

* * *

# Easy Way to Remember EAL Progression

Watch the wording become stronger.




Tested

2

↓

3

Structured

4

↓

5

Methodical

6

↓

7

Designed

8

↓

9

Semi-Formal

10

↓

11

Verified

12

↓

13

Formal Verification

14

The higher you go, the more evidence exists.

* * *

# Accreditation

Now we return to the second major step.

Technical people finished testing.

Management receives the report.

Management must decide:

> Do we approve this product for use?

That's accreditation.

* * *

# Restaurant Example

Inspector says:

> The oven passed safety tests.

Restaurant owner decides:

> We will purchase the oven.

That's accreditation.

* * *

# Real CISSP Mindset

Notice how everything comes back to governance.

Technical teams:

-   Test
-   Assess
-   Verify
-   Recommend

Management:

-   Owns risk
-   Accepts risk
-   Approves deployment

This separation is a recurring CISSP theme.

* * *

# How This Appears on the Exam

Common CISSP questions include:

### Which evaluation criteria is currently the international standard?

Answer:

**Common Criteria (ISO 15408)**

* * *

### What is being evaluated?

Answer:

**TOE (Target of Evaluation)**

* * *

### What defines requirements for a class of products?

Answer:

**Protection Profile (PP)**

* * *

### What is created by the vendor describing security capabilities?

Answer:

**Security Target (ST)**

* * *

### Who performs accreditation?

Answer:

**Management**

* * *

### What is the difference between Certification and Accreditation?

Answer:

-   Certification = Technical Evaluation
-   Accreditation = Management Approval

* * *

# Deep CISSP Takeaway

This chapter is not really about memorizing evaluation standards.

It's teaching a governance lesson:

> Organizations should never trust vendor claims blindly.

Security decisions should be based on independent evaluation, measurable assurance, and formal management approval.

That is exactly how a mature security program operates.

# Ultimate Memory Sheet
