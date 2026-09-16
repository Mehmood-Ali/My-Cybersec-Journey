
# CISSP Domain 1: Security and Risk Management

## Batch 1: Security Foundations

> **Exam outline:** These notes follow the ISC2 CISSP Certification Exam Outline effective April 15, 2024. Domain 1, Security and Risk Management, represents 16% of the CISSP exam.

---

## Domain 1 Study Plan

### Batch 1: Foundations

1. Security concepts and principles
2. Professional ethics
3. Security governance
4. Policies, standards, procedures, guidelines, and baselines

### Batch 2: Law, Compliance, and Investigations

1. Legal, regulatory, and contractual requirements
2. Cybercrime and data breaches
3. Types of investigations
4. Evidence and intellectual property

### Batch 3: Risk Management

1. Risk terminology and assessment
2. Qualitative and quantitative risk analysis
3. Risk treatment and control selection
4. Threat modelling and frameworks

### Batch 4: Organisational Security

1. Business continuity requirements
2. Personnel security
3. Supply-chain risk management
4. Security awareness, education, and training

---

# 1. Security Concepts and Principles

## 1.1 CIA Triad

The **CIA triad** describes the three main objectives of information security:

- **Confidentiality**
- **Integrity**
- **Availability**

A security control may protect one, two, or all three.

### Confidentiality

**Meaning:** Information is seen only by authorised people, systems, or processes.

**Examples:**

- Encryption
- File permissions
- Access control
- Data classification
- Multi-factor authentication
- Need-to-know access

**Workplace example:** A caller asks the Service Desk to reset another employee's password. You verify the caller's identity and authority before taking action. This protects confidentiality by preventing unauthorised account access.

**Common threats:**

- Data breaches
- Shoulder surfing
- Social engineering
- Stolen credentials
- Incorrect permissions
- Sending information to the wrong recipient

**Exam clues:** Unauthorised disclosure, secrecy, privacy, data exposure, or encryption.

### Integrity

**Meaning:** Information remains accurate, complete, and protected from unauthorised changes.

**Examples:**

- Hashing
- Digital signatures
- Checksums
- File integrity monitoring
- Change control
- Database constraints
- Version control

**Workplace example:** A PowerShell script is stored in a controlled repository. Changes must be reviewed and approved before the script is used in production.

**Common threats:**

- Malware modifying files
- Unauthorised database changes
- Human error
- Incorrect configuration
- Man-in-the-middle attacks
- Uncontrolled changes

**Exam clues:** Accuracy, tampering, unauthorised modification, trustworthiness, or hashing.

> **Remember:** Hashing mainly supports integrity. Encryption mainly supports confidentiality.

### Availability

**Meaning:** Information and services are accessible when authorised users need them.

**Examples:**

- Backups
- Redundant servers
- Failover systems
- Disaster recovery
- Uninterruptible power supplies
- Load balancing
- Denial-of-service protection
- Business continuity planning

**Workplace example:** If one authentication server fails, another server continues processing sign-in requests.

**Common threats:**

- Hardware failure
- Ransomware
- Denial-of-service attacks
- Power failure
- Natural disasters
- Poor capacity planning
- Accidental deletion

**Exam clues:** Downtime, interruption, resilience, redundancy, recovery, or inability to access a service.

### CIA Memory Aid

- **C:** Keep information **secret**
- **I:** Keep information **correct**
- **A:** Keep information **accessible**

---

## 1.2 Other Important Security Principles

### Authenticity

**Meaning:** Something or someone is genuine.

Examples include verifying a user's identity, confirming an email sender, and validating a software digital signature. **Authentication** is the process used to verify authenticity.

### Accountability

**Meaning:** An action can be traced to a specific person or system.

Accountability normally requires:

1. Unique identification
2. Authentication
3. Logging
4. Monitoring

Shared administrator accounts weaken accountability because it becomes difficult to establish who performed an action.

### Non-repudiation

**Meaning:** A person cannot credibly deny performing an action.

Digital signatures can support non-repudiation by helping prove who signed something and whether it was changed after signing.

- **Accountability:** We can trace the action to you.
- **Non-repudiation:** You cannot reasonably deny the action.

### Privacy

**Meaning:** Personal information is collected, used, shared, stored, retained, and deleted appropriately.

Privacy asks questions such as:

- Why are we collecting this information?
- Do we have authority or consent?
- Who can access it?
- How long should it be retained?
- Can the individual request correction?

- **Confidentiality:** Prevents unauthorised disclosure.
- **Privacy:** Ensures personal information is handled appropriately.

### Safety

Security decisions must consider protection from physical or psychological harm. For example, when a vulnerability affects a hospital system, patient safety and continuity of medical services may be more urgent than applying a technically perfect control that interrupts treatment.

---

## 1.3 Identification, Authentication, Authorisation, and Accountability

### Identification

The user states who they are, such as entering a username.

### Authentication

The user proves the claimed identity using a password, passkey, smart card, authenticator application, or biometric factor.

### Authorisation

The system determines what the authenticated user is allowed to do, such as read a file, reset a password, or access an administrative portal.

### Accountability

The organisation records what the user did through logs and audit records.

### Memory Aid

> **Identify -> Authenticate -> Authorise -> Audit**

---

## 1.4 Least Privilege and Need to Know

### Least Privilege

A person or system receives only the minimum permissions required to perform its duties.

**Example:** A Service Desk officer can reset standard user passwords but cannot reset privileged administrator accounts.

### Need to Know

A person receives access only to the information required for their job, even if they hold an appropriate clearance or senior position.

- **Least privilege:** Focuses on permissions and capabilities.
- **Need to know:** Focuses on access to particular information.

---

## 1.5 Separation of Duties

Sensitive tasks are divided among multiple people so that one person cannot complete the full process alone.

**Example:** One administrator requests a firewall rule, another approves it, and another implements or verifies it.

This reduces fraud, abuse, mistakes, and unauthorised changes. It is mainly a **preventive administrative control**.

---

## 1.6 Job Rotation

Employees periodically move between roles or responsibilities.

**Benefits:**

- Helps uncover fraud
- Reduces dependency on one employee
- Improves staff knowledge
- Supports succession planning
- Prevents one person from controlling a process indefinitely

- **Separation of duties:** Multiple people are required for a task.
- **Job rotation:** People periodically change roles.

---

## 1.7 Mandatory Vacations

Employees in sensitive roles must take uninterrupted leave while another employee performs their duties. Long-running fraud may be discovered when the original employee is absent and unable to conceal it.

---

## 1.8 Defence in Depth

Defence in depth uses multiple layers of security so that one failed control does not cause a complete compromise.

Example layers:

1. Security awareness
2. Email filtering
3. Endpoint protection
4. Application control
5. Network segmentation
6. MFA
7. Logging and monitoring
8. Backups

No single control is perfect. Defence in depth combines **people, processes, and technology**.

---

## 1.9 Zero Trust

A simple way to understand Zero Trust is:

> Do not automatically trust a request merely because it comes from inside the network.

Access decisions may consider:

- Identity
- Device health
- Location
- Resource sensitivity
- User behaviour
- Authentication strength
- Current risk

Zero Trust does not mean nobody is trusted. It means trust is not automatically granted based only on network location.

---

# 2. Professional Ethics

The ISC2 Code of Ethics contains four mandatory canons.

## Canon 1: Protect Society, the Common Good, Public Trust, and Infrastructure

This is the highest priority. Protect people, society, public confidence, and critical systems.

**Example:** A serious vulnerability could affect emergency services. Protecting public safety is more important than avoiding organisational embarrassment.

## Canon 2: Act Honourably, Honestly, Justly, Responsibly, and Legally

- Tell the truth.
- Follow the law.
- Treat people fairly.
- Accept responsibility.
- Do not use security skills dishonestly.

**Example:** Do not hide a security incident to protect performance figures.

## Canon 3: Provide Diligent and Competent Service to Principals

A **principal** is the person or organisation you serve, such as your employer, client, or authorised manager.

- Work carefully.
- Stay within your competence.
- Protect entrusted systems and information.
- Avoid conflicts of interest.
- Give accurate professional advice.

**Example:** Seek qualified help for a specialised forensic investigation rather than pretending to have expertise you do not possess.

## Canon 4: Advance and Protect the Profession

- Maintain your skills.
- Help other professionals develop.
- Support ethical behaviour.
- Protect the reputation of cybersecurity.
- Avoid conduct that harms the profession.

## Ethics Priority Order

1. Society and the common good
2. Honourable, responsible, and legal behaviour
3. The principal or employer
4. The profession

### Memory Aid

> **Society -> Integrity -> Principal -> Profession**

---

# 3. Security Governance

## What Is Governance?

Security governance is how senior management directs, controls, and oversees the security program.

It answers questions such as:

- Who is accountable for security?
- What security outcomes does the organisation want?
- How much risk is acceptable?
- How does security support organisational objectives?
- How is performance measured?
- Who has authority to make decisions?

> **Key CISSP idea:** Security must support the organisation's mission and business objectives.

## Governance Versus Management

### Governance

Usually performed by the board and senior leadership. Governance sets direction, establishes accountability, defines risk appetite, approves strategy, provides oversight, and ensures business alignment.

### Management

Usually performed by managers and operational teams. Management implements strategy, allocates resources, develops procedures, operates controls, monitors performance, and reports results.

- **Governance decides what and why.**
- **Management decides how and when.**

## Management Accountability

Security responsibilities can be delegated, but senior management remains ultimately accountable for organisational risk.

A security professional normally:

- Advises management
- Assesses risk
- Recommends controls
- Monitors security
- Communicates findings

Management normally:

- Owns organisational risk
- Provides resources
- Approves policies
- Accepts or rejects risk

A security manager should not personally accept a major business risk unless formally authorised.

---

## 3.1 Important Roles

### Board and Senior Management

- Establish direction
- Set risk appetite
- Approve major policies
- Provide resources
- Ensure accountability

### Chief Information Security Officer

- Leads the security program
- Advises senior management
- Develops security strategy
- Coordinates security functions
- Reports security risks and performance

### Data or Information Owner

Usually a senior business representative who:

- Determines classification
- Decides who should have access
- Approves access requirements
- Defines protection requirements
- Accepts responsibility for the information

### Data Custodian

Handles information according to the owner's instructions. Custodians may implement permissions, perform backups, apply technical controls, maintain systems, and restore data.

### User

- Follows security requirements
- Handles information appropriately
- Protects authentication credentials
- Reports incidents

### Auditor

Independently checks whether controls exist, are appropriately designed, work effectively, and meet applicable requirements.

### Privacy Officer

Oversees personal-information handling and privacy obligations.

### Owner Versus Custodian

> **Owner decides. Custodian implements.**

---

# 4. Security Documentation Hierarchy

The common hierarchy is:

1. **Policy**
2. **Standard**
3. **Procedure**
4. **Guideline**

A **baseline** specifies a minimum approved security or configuration level.

## 4.1 Policy

A high-level, mandatory statement of management's intent. It explains what must be protected, why, who is responsible, and the organisation's expectations.

**Example:** All organisational accounts must be protected using approved authentication controls.

## 4.2 Standard

A specific, mandatory, and measurable requirement that supports a policy.

**Example:** Privileged accounts must use an organisation-approved phishing-resistant MFA method.

## 4.3 Procedure

Mandatory step-by-step instructions for completing a task.

**Example:** Verify identity, open the approved administration portal, locate the account, perform the reset, and record the action in the service-management system.

## 4.4 Guideline

Recommended, flexible advice that may not apply in every situation.

**Example:** Users should consider an approved password manager for unique passwords.

## 4.5 Baseline

The minimum approved level of security or configuration.

Examples include a standard Windows security build, minimum logging settings, an approved Microsoft Defender configuration, and minimum password requirements.

## Quick Comparison

| Document | Purpose | Mandatory? | Simple example |
|---|---|---:|---|
| Policy | Management direction | Yes | Accounts must be protected |
| Standard | Specific requirement | Yes | MFA is required |
| Procedure | Steps to follow | Yes, when applicable | How to enable MFA |
| Guideline | Recommended advice | Usually no | Suggested authenticator practices |
| Baseline | Minimum approved configuration | Yes | Standard endpoint settings |

### Memory Aid

> **Policy says why and what. Standard says exactly what. Procedure says how. Guideline suggests. Baseline sets the minimum.**

---

# CISSP Exam Mindset for Batch 1

1. Protect human life and society first.
2. Think like a risk adviser or security manager, not only a technician.
3. Understand the business requirement before selecting technology.
4. Follow policy and proper processes.
5. Escalate significant risk to the authorised decision-maker.
6. Prefer prevention when practical, while using layered controls.
7. Choose the answer that addresses the root cause.
8. Do not exceed your authority.
9. Owners decide protection requirements; custodians implement them.
10. Appropriately authorised management accepts business risk.

---

# Practice Questions

## Question 1

A company wants to prevent unauthorised employees from viewing payroll records. Which security objective is the primary concern?

A. Integrity  
B. Availability  
C. Confidentiality  
D. Non-repudiation

**Answer: C. Confidentiality**

Unauthorised viewing is an unauthorised disclosure of information.

## Question 2

Two administrators must approve a major firewall change before it is implemented. Which principle is being used?

A. Job rotation  
B. Separation of duties  
C. Least functionality  
D. Mandatory vacation

**Answer: B. Separation of duties**

No single person can independently approve and complete the sensitive action.

## Question 3

Who should normally determine the security classification of business information?

A. Data custodian  
B. System administrator  
C. Data owner  
D. Help desk analyst

**Answer: C. Data owner**

The owner decides the information's value, classification, and protection requirements. The custodian implements those requirements.

## Question 4

Which document provides mandatory step-by-step instructions for resetting a privileged account?

A. Policy  
B. Guideline  
C. Procedure  
D. Standard

**Answer: C. Procedure**

A procedure explains exactly how to perform a task.

## Question 5

An employee discovers that a system failure could place members of the public in immediate danger. What should be the employee's primary consideration?

A. Protecting the organisation's reputation  
B. Protecting the security profession  
C. Protecting society and the common good  
D. Protecting the employee's manager

**Answer: C. Protecting society and the common good**

Protection of society is the first ISC2 ethical canon.

## Question 6

Who is normally responsible for accepting the organisation's major residual risk?

A. Security analyst  
B. System administrator  
C. Senior management  
D. External auditor

**Answer: C. Senior management**

Security professionals assess and communicate risk, but appropriately authorised management makes the business decision to accept it.

## Question 7

Which control is most directly associated with data integrity?

A. Encryption  
B. Hashing  
C. Redundancy  
D. Load balancing

**Answer: B. Hashing**

Hashing can help identify whether information has been modified.

---

# Batch 1 Revision Sheet

- **CIA:** Confidentiality, Integrity, Availability
- **Confidentiality:** Prevent unauthorised disclosure
- **Integrity:** Prevent unauthorised modification
- **Availability:** Ensure timely and reliable access
- **Least privilege:** Minimum permissions required
- **Need to know:** Access only to required information
- **Separation of duties:** Divide sensitive responsibilities
- **Job rotation:** Periodically change responsibilities
- **Defence in depth:** Use multiple security layers
- **Governance:** Direction and oversight
- **Management:** Implementation and operation
- **Data owner:** Decides classification and access
- **Data custodian:** Implements protection
- **Risk acceptance:** An authorised management decision
- **Document order:** Policy -> Standard -> Procedure -> Guideline
- **Ethics order:** Society -> Integrity -> Principal -> Profession

---

# References

1. ISC2. [CISSP Certification Exam Outline](https://www.isc2.org/certifications/cissp/cissp-certification-exam-outline), effective April 15, 2024.
2. ISC2. [CISSP Certification Exam Outline PDF](https://assets.ctfassets.net/82ripq7fjls2/2D57uYE9A4MhPVAV3SBJLk/8389a0d0386c5c2814b52df9ab1603a8/CISSP-Exam-Outline-April-2024-English.pdf).
3. ISC2. [Code of Ethics](https://www.isc2.org/ethics).
4. NIST Computer Security Resource Center. [Risk Management Framework Glossary](https://csrc.nist.gov/glossary/term/risk_management_framework).

---

## Study Tip

Do not memorise definitions alone. Practise identifying:

- Who owns the decision
- Which security principle applies
- Whether the question is asking for a managerial or technical response
- Which answer protects people and supports the organisation's objectives

# CISSP Domain 1: Security and Risk Management

## Batch 2: Law, Compliance, Privacy, Investigations, and Intellectual Property

> **Purpose:** This batch explains the legal and investigation topics at the level expected for CISSP. It is a study guide, not legal advice. Exact legal requirements and standards of proof vary by jurisdiction, so organisations should involve qualified legal counsel.

---

## Learning Objectives

By the end of this batch, you should be able to:

1. Distinguish criminal, civil, administrative, regulatory, and contractual requirements.
2. Explain jurisdiction and transborder data-flow concerns.
3. Recognise major privacy principles and privacy roles.
4. Distinguish administrative, criminal, civil, regulatory, and industry investigations.
5. Explain evidence integrity, chain of custody, and order of volatility.
6. Distinguish copyright, patent, trademark, and trade-secret protection.
7. Apply the CISSP management mindset to legal and compliance scenarios.

---

# 1. Legal, Regulatory, and Contractual Requirements

## 1.1 Why CISSP Tests Legal Topics

Security professionals do not normally act as lawyers. Their role is to:

- Recognise that a legal or regulatory issue may exist.
- Protect people, systems, information, and evidence.
- Follow approved organisational processes.
- Escalate to management, legal counsel, privacy staff, HR, or law enforcement when appropriate.
- Avoid taking actions that exceed their authority.

> **Exam mindset:** When a scenario has possible legal consequences, preserve the situation and involve the appropriate authorised specialists. Do not personally make legal conclusions unless that is your assigned role.

---

## 1.2 Main Categories of Law and Obligations

### Criminal Law

Criminal law deals with conduct considered an offence against society or the state.

**Possible outcomes:**

- Prosecution
- Fines
- Imprisonment
- Other criminal penalties

**Cybersecurity examples:**

- Unauthorised system access
- Theft of information
- Malware distribution
- Fraud
- Extortion
- Deliberate system damage

In many common-law jurisdictions, criminal cases use a high standard of proof commonly described as **beyond reasonable doubt**. Exact wording and rules depend on the jurisdiction.

### Civil Law

Civil law commonly deals with disputes between individuals or organisations.

**Possible outcomes:**

- Financial compensation
- Injunctions
- Contract enforcement
- Orders to stop an activity

**Cybersecurity examples:**

- Negligence
- Breach of contract
- Privacy-related claims
- Intellectual-property disputes
- Failure to provide an agreed service

In many jurisdictions, civil matters use a lower standard of proof than criminal cases, commonly described as the **balance of probabilities** or **preponderance of evidence**.

### Administrative and Regulatory Law

Government departments and regulators create or enforce rules within their authority.

**Possible outcomes:**

- Regulatory fines
- Licence restrictions
- Mandatory remediation
- Audits
- Reporting obligations
- Consent orders or similar enforcement action

**Examples:**

- Privacy requirements
- Financial-sector requirements
- Health-information requirements
- Critical-infrastructure obligations
- Government security requirements

### Contract Law

Contracts create obligations between parties.

**Security-related examples:**

- Service-level agreements (SLAs)
- Non-disclosure agreements (NDAs)
- Software licences
- Cloud-service agreements
- Data-processing agreements
- Right-to-audit clauses
- Incident-notification requirements
- Security control requirements

> **CISSP point:** A requirement can be mandatory even when it does not come directly from legislation. A signed contract can create enforceable security duties.

---

## 1.3 Law, Regulation, Standard, and Policy

These terms are related but not interchangeable.

| Item | Created or imposed by | General effect | Example |
|---|---|---|---|
| Law | Legislature or authorised government body | Legally binding | Privacy legislation |
| Regulation | Regulator or government authority | Legally binding within its scope | Sector reporting requirement |
| Contract | Parties to an agreement | Binding on those parties | Cloud security agreement |
| Industry standard | Standards or industry body | May be voluntary, contractual, or adopted into law | Payment-card security standard |
| Organisational policy | Senior management | Mandatory inside the organisation | Acceptable-use policy |

A policy cannot lawfully override applicable legislation. An organisation may set stronger internal requirements, provided they do not conflict with applicable law.

---

# 2. Due Care, Due Diligence, Negligence, and Liability

## 2.1 Due Care

**Due care** means taking the reasonable actions expected to protect people and assets.

**Examples:**

- Applying appropriate security controls
- Training employees
- Responding to known vulnerabilities
- Restricting privileged access
- Maintaining backups

### Easy Memory Aid

> **Due care = doing the right things.**

## 2.2 Due Diligence

**Due diligence** means investigating, monitoring, and verifying that risks are understood and controls continue to work.

**Examples:**

- Reviewing security reports
- Conducting supplier assessments
- Testing backups
- Monitoring control effectiveness
- Reviewing audit results
- Tracking remediation

### Easy Memory Aid

> **Due diligence = checking that the right things are being done.**

## 2.3 Negligence

Negligence may occur when a person or organisation fails to exercise the level of care reasonably expected in the circumstances.

A simple CISSP way to think about it is:

1. A duty existed.
2. The duty was breached.
3. Harm occurred.
4. The breach contributed to the harm.

The exact legal test varies by jurisdiction.

## 2.4 Prudent Person Principle

A prudent person acts carefully and reasonably under similar circumstances.

**Exam idea:** Management should act as a reasonable and competent organisation would act, based on known risks, legal obligations, industry practice, and available resources.

## 2.5 Liability

Liability means legal responsibility for an action, failure, loss, or harm.

Possible sources include:

- Negligence
- Breach of contract
- Regulatory non-compliance
- Privacy violations
- Intellectual-property infringement
- Failure to supervise

> **Exam trap:** Documenting that management knew about a risk does not automatically remove liability. The organisation must make and implement a reasonable, authorised decision.

---

# 3. Jurisdiction and Transborder Data Flow

## 3.1 Jurisdiction

**Jurisdiction** is the authority of a court, regulator, or government to make and enforce decisions.

Jurisdiction may depend on:

- Where the organisation operates
- Where the person lives
- Where the data subject is located
- Where data is collected or processed
- Where systems or cloud services are hosted
- Where an incident occurred
- Contract terms
- The type of information involved

### Example

An Australian organisation uses a cloud provider with systems in several countries and serves individuals in the European Union. Multiple legal and contractual requirements may apply.

### CISSP Response

1. Identify the data and processing locations.
2. Determine which jurisdictions and contracts may apply.
3. Consult legal and privacy specialists.
4. Apply approved transfer and protection mechanisms.
5. Document the decision.

Do not assume the physical location of company headquarters is the only relevant jurisdiction.

---

## 3.2 Transborder Data Flow

**Transborder data flow** means information moves across national borders.

Important concerns include:

- Privacy restrictions
- Government access laws
- Data residency requirements
- Data sovereignty
- Contractual transfer restrictions
- Approved transfer mechanisms
- Encryption and key control
- Supplier and subcontractor locations
- Incident-notification requirements

### Data Residency Versus Data Sovereignty

- **Data residency:** The physical or geographic location where data is stored or processed.
- **Data sovereignty:** Data is subject to the laws and governance of the jurisdiction connected to it.

These ideas are related, but they are not identical.

---

## 3.3 Import and Export Controls

Some countries restrict the import or export of:

- Cryptographic products
- Dual-use technologies
- Security tools
- Technical information
- Products sent to sanctioned destinations or parties

### Exam Mindset

Before moving security technology, encryption, or controlled technical information across borders:

1. Identify the destination and recipient.
2. Check applicable laws and sanctions.
3. Review licence requirements.
4. Obtain legal or export-control advice.
5. Document approval.

---

# 4. Privacy Principles

Privacy is broader than confidentiality. Confidentiality prevents unauthorised disclosure, while privacy governs whether personal information is collected, processed, shared, retained, and deleted appropriately.

## 4.1 Common Privacy Principles

### Lawfulness, Fairness, and Transparency

Process personal information using a valid basis, treat people fairly, and clearly explain the processing.

### Purpose Limitation

Collect and use information only for clearly defined purposes.

### Data Minimisation

Collect only the information necessary for the stated purpose.

### Accuracy

Keep personal information accurate and permit correction where required.

### Storage Limitation

Do not retain personal information longer than necessary or legally required.

### Integrity and Confidentiality

Use appropriate administrative, technical, and physical safeguards.

### Accountability

The organisation must comply and be able to demonstrate its compliance.

### Memory Aid

> **Legal purpose, minimum data, accurate data, limited time, protected data, proven compliance.**

---

## 4.2 Privacy Roles

### Data Subject

The person to whom the personal information relates.

### Data Controller

The party that determines the purpose and means of processing personal information.

### Data Processor

The party that processes personal information on behalf of the controller.

### Data Protection or Privacy Officer

A specialist who advises on privacy obligations, monitors compliance, and performs other responsibilities assigned by applicable law or organisational governance.

### Controller Versus Processor

> **Controller decides why and how. Processor performs processing for the controller.**

---

## 4.3 Privacy by Design and by Default

### Privacy by Design

Privacy is considered throughout the lifecycle of a system, product, or process rather than added at the end.

### Privacy by Default

The default settings collect, use, expose, and retain only what is necessary.

**Example:** A new self-service portal does not display personal details to all staff by default. Access is restricted based on role and business need.

---

## 4.4 Privacy Impact Assessment

A Privacy Impact Assessment, or PIA, helps identify and manage privacy risks before or during a new or changed initiative.

A PIA may examine:

- What personal information is collected
- Why it is needed
- Legal authority or processing basis
- Data flows
- Access and sharing
- Retention and deletion
- Security controls
- Individual rights
- Supplier involvement
- Residual privacy risk

> **Exam point:** Conduct the assessment early enough to influence the design, not after the system is fully deployed.

---

# 5. Cybercrime and Data Breaches

## 5.1 Cybercrime

Cybercrime may involve a computer or system as:

- **The target:** A system is attacked or damaged.
- **The tool:** A system is used to commit fraud or another offence.
- **A source of evidence:** A device contains records relevant to an offence.
- **Incidental to the offence:** Technology supports or records other activity.

## 5.2 Data Breach

A data breach is an event in which information is accessed, disclosed, altered, lost, or destroyed in an unauthorised manner. The precise legal definition varies.

### Initial Organisational Response

1. Activate the incident-response process.
2. Protect people and critical services.
3. Contain the incident without unnecessarily destroying evidence.
4. Preserve relevant logs and systems.
5. Notify authorised management, legal counsel, privacy personnel, and other required teams.
6. Assess notification obligations.
7. Record decisions and actions.

> **Exam trap:** Do not immediately contact affected people, regulators, or the media unless you are authorised and the approved process requires it. Involve legal, privacy, communications, and management teams.

---

# 6. Investigation Types

The investigation type affects authority, procedures, evidence handling, reporting, and possible outcomes.

## 6.1 Administrative Investigation

An internal investigation into possible violations of organisational policy or employment requirements.

**Examples:**

- Misuse of organisational systems
- Unauthorised software installation
- Inappropriate access
- Violation of acceptable-use policy

**Typically involves:**

- Management
- HR
- Security
- Internal legal counsel

**Possible outcomes:** Training, access changes, disciplinary action, dismissal, or policy improvement.

## 6.2 Criminal Investigation

An investigation into a suspected criminal offence.

**Typically involves:**

- Law-enforcement authorities
- Prosecutors
- Legal counsel
- Digital-forensics specialists

Because criminal evidence may be presented in court, evidence integrity and chain of custody are critical.

> **CISSP point:** The security team should preserve evidence and cooperate with authorised investigators. It should not exceed its authority or interfere with law enforcement.

## 6.3 Civil Investigation

An investigation supporting a legal dispute between private parties.

**Examples:**

- Breach of contract
- Negligence
- Employment dispute
- Intellectual-property dispute

**Possible outcomes:** Damages, injunctions, settlements, or contractual remedies.

## 6.4 Regulatory Investigation

An investigation conducted or required by a government regulator.

**Examples:**

- Privacy compliance
- Financial-sector compliance
- Safety requirements
- Mandatory breach reporting

The organisation should coordinate through approved legal, compliance, and executive channels.

## 6.5 Industry-Standards Investigation or Review

An assessment performed against contractual or industry requirements.

**Examples:**

- Payment-card compliance review
- Certification audit
- Supplier security assessment
- Contractual control assessment

**Possible outcomes:** Remediation, loss of certification, contractual consequences, additional monitoring, or loss of processing privileges.

---

## 6.6 Investigation Comparison

| Investigation | Main concern | Common lead or authority | Possible outcome |
|---|---|---|---|
| Administrative | Internal policy or employee conduct | Management, HR, security | Discipline or remediation |
| Criminal | Suspected offence against criminal law | Law enforcement and prosecutors | Prosecution and criminal penalty |
| Civil | Dispute between parties | Legal counsel and courts | Damages, injunction, or settlement |
| Regulatory | Compliance with regulated obligations | Regulator and organisational counsel | Fine, order, or remediation |
| Industry | Contractual or industry requirements | Auditor, assessor, or industry body | Certification or contractual impact |

> Exact processes and standards depend on the jurisdiction and the organisation's legal advice.

---

# 7. Digital Evidence

## 7.1 Evidence Goals

Evidence should be handled so that it remains:

- Identifiable
- Authentic
- Complete
- Reliable
- Relevant
- Protected from alteration
- Traceable through its lifecycle

## 7.2 Chain of Custody

**Chain of custody** is the documented history of evidence from collection through transfer, analysis, storage, presentation, and final disposition.

A chain-of-custody record commonly includes:

- Unique evidence identifier
- Description of the item
- Who collected it
- Date, time, and location of collection
- How it was collected
- Hash value where appropriate
- Storage location
- Every transfer of possession
- Date, time, parties, and purpose of each transfer
- Final disposition

### Memory Aid

> **Who had what, when, where, why, and how?**

A broken chain of custody does not automatically mean evidence is useless in every jurisdiction, but it can seriously damage confidence in its integrity and admissibility.

---

## 7.3 Evidence Integrity and Hashing

Investigators normally avoid analysing the original evidence directly when a verified forensic copy can be used.

A common approach is:

1. Acquire the evidence using approved tools and procedures.
2. Calculate a cryptographic hash.
3. Secure the original.
4. Analyse a working copy.
5. Recalculate or compare hashes to demonstrate integrity.
6. Document every action.

A hash helps show whether data changed. It does not by itself prove who created the data or whether every investigative step was lawful.

---

## 7.4 Order of Volatility

**Order of volatility** means collecting the most short-lived information before more persistent information, where safe and authorised.

A simplified order is:

1. CPU registers and cache
2. Active network connections and running processes
3. Memory contents
4. Temporary file systems
5. Local disks
6. Remote logs and monitoring data
7. Backups and archival media

The exact order depends on the system and situation.

> **Exam point:** Volatile data can disappear when a device is powered off. However, do not blindly preserve volatile data if doing so creates danger, exceeds authority, or causes greater harm.

---

## 7.5 Common Digital-Forensics Process

NIST presents a practical four-part process:

1. **Collection:** Identify, acquire, and protect relevant data.
2. **Examination:** Process the collected data and extract relevant information.
3. **Analysis:** Interpret information and develop supported conclusions.
4. **Reporting:** Document methods, findings, limitations, and recommendations.

Documentation should continue throughout the process.

---

## 7.6 Legal Hold

A **legal hold** instructs an organisation to preserve information that may be relevant to litigation, investigation, or another legal matter.

When a legal hold applies:

- Normal deletion or destruction may need to stop.
- Relevant backups, email, logs, documents, devices, and cloud data may need preservation.
- Custodians of relevant information may receive instructions.
- Legal counsel should define scope and release the hold when appropriate.

> **Exam trap:** Do not follow the normal retention schedule if authorised legal counsel has placed relevant information under legal hold.

---

# 8. Intellectual Property

Intellectual property, or IP, protects creations and commercially valuable knowledge. The exact protection and duration vary by jurisdiction.

## 8.1 Copyright

Copyright protects original expressive works.

**Examples:**

- Software source code
- Documentation
- Books
- Images
- Videos
- Training material
- Website content

Copyright generally protects the **expression**, not the underlying idea itself.

**Security concern:** Copying unlicensed software, code, images, or documentation can create legal and contractual risk.

## 8.2 Patent

A patent grants rights relating to an invention for a limited period, subject to applicable legal requirements and disclosure.

**Examples:**

- A new technical process
- A novel device
- A qualifying technical invention

Patent protection generally requires an application and approval. Requirements vary significantly by jurisdiction.

## 8.3 Trademark

A trademark identifies and distinguishes the source of goods or services.

**Examples:**

- Brand name
- Logo
- Product name
- Distinctive commercial sign

The main concern is avoiding customer confusion and protecting brand identity.

## 8.4 Trade Secret

A trade secret is confidential business information that has commercial value because it is secret and is subject to reasonable protection efforts.

**Examples:**

- Source code
- Algorithms
- Formulas
- Business strategies
- Customer lists
- Internal processes

Trade-secret protection depends heavily on maintaining secrecy. Controls may include:

- NDAs
- Need-to-know access
- Encryption
- Monitoring
- Information classification
- Exit procedures
- Supplier restrictions

## 8.5 IP Comparison

| IP type | Protects | Common example | Key CISSP idea |
|---|---|---|---|
| Copyright | Original expression | Software code or documentation | Often arises when a qualifying work is created, subject to local law |
| Patent | Invention | New technical process | Usually requires formal application and disclosure |
| Trademark | Brand identifier | Name or logo | Distinguishes goods or services |
| Trade secret | Valuable confidential information | Formula or source code | Must be kept secret using reasonable measures |

### Memory Aid

- **Copyright:** Content
- **Patent:** Invention
- **Trademark:** Brand
- **Trade secret:** Valuable secret

---

# 9. Software Licensing

Software use is governed by licence terms and applicable law.

Common licence concerns include:

- Number of authorised users or devices
- Installation and copying limits
- Virtual or cloud use
- Geographic restrictions
- Transfer and resale
- Reverse engineering
- Open-source obligations
- Support and maintenance terms
- Audit rights

## 9.1 Open-Source Software

Open source does not mean there are no legal obligations. Licences may require:

- Attribution
- Preservation of licence notices
- Disclosure of modified source code
- Distribution under compatible terms
- Provision of source code to recipients

Organisations should maintain:

- An approved software inventory
- Licence records
- Software-composition analysis where appropriate
- Legal review for higher-risk use
- Processes for patching and vulnerability management

---

# 10. CISSP Exam Traps

## Trap 1: Acting as the Lawyer

**Wrong approach:** Personally decide whether a crime occurred or what legal notification is required.

**Better approach:** Preserve evidence, follow policy, and involve legal counsel or the authorised authority.

## Trap 2: Investigating Beyond Authority

**Wrong approach:** Search an employee's private device without authorisation.

**Better approach:** Follow legal, HR, privacy, and organisational procedures.

## Trap 3: Destroying Evidence During Containment

**Wrong approach:** Immediately wipe a compromised system without considering evidence needs.

**Better approach:** Balance containment, safety, operational needs, and evidence preservation through the incident-response process.

## Trap 4: Assuming One Law Applies Everywhere

**Wrong approach:** Apply only the law of the organisation's headquarters.

**Better approach:** Review the affected people, data, processing, contracts, and jurisdictions.

## Trap 5: Treating Compliance as Security

Passing an audit does not prove that every important risk is controlled.

- **Compliance:** Meeting specified requirements.
- **Security:** Managing risk to an acceptable level.

Compliance is an input to security, not a complete substitute for risk management.

## Trap 6: Analysing the Original Evidence

Where practical, create and verify a forensic copy, preserve the original, and analyse the copy.

---

# 11. Practice Questions

## Question 1

An organisation discovers that a compromised server may contain evidence of a criminal offence. What should the security manager do first?

A. Publicly identify the suspected employee  
B. Rebuild the server immediately  
C. Follow the incident and evidence-preservation process and involve authorised legal or investigative personnel  
D. Personally interview all possible suspects

**Answer: C**

The manager should protect the evidence, follow approved procedures, and involve the appropriate authority. Immediate rebuilding could destroy evidence.

---

## Question 2

Which concept records every transfer and handler of an item of evidence?

A. Data minimisation  
B. Chain of custody  
C. Separation of duties  
D. Risk acceptance

**Answer: B**

Chain of custody documents possession, transfer, handling, and disposition of evidence.

---

## Question 3

Which form of intellectual property most directly protects a company's valuable confidential formula?

A. Trademark  
B. Copyright  
C. Trade secret  
D. Service-level agreement

**Answer: C**

A commercially valuable formula kept confidential using reasonable controls is commonly protected as a trade secret.

---

## Question 4

A company wishes to collect every available data field because it may be useful later. Which privacy principle is most directly affected?

A. Data minimisation  
B. Availability  
C. Non-repudiation  
D. Separation of duties

**Answer: A**

Data minimisation requires collection of only the personal information necessary for the defined purpose.

---

## Question 5

Who determines the purpose and means of processing personal information?

A. Data subject  
B. Data processor  
C. Data controller  
D. Data custodian

**Answer: C**

The controller decides why and how personal information is processed. A processor performs processing on the controller's behalf.

---

## Question 6

What is the best description of due diligence?

A. Ignoring low-probability risks  
B. Verifying that risks are assessed and controls remain effective  
C. Purchasing cyber insurance  
D. Transferring all accountability to a supplier

**Answer: B**

Due diligence includes investigation, monitoring, review, and verification.

---

## Question 7

A legal hold is issued for email relevant to a lawsuit. What should happen?

A. Delete the email according to the normal retention schedule  
B. Preserve relevant email and suspend conflicting deletion processes  
C. Print only the most important messages  
D. Let individual users decide what to retain

**Answer: B**

A legal hold overrides conflicting routine destruction for information within its authorised scope.

---

## Question 8

Which information should normally be collected first during authorised digital evidence collection?

A. Archived tape backups  
B. Printed policies  
C. The most volatile relevant information  
D. Old asset inventories

**Answer: C**

Highly volatile information may disappear quickly and should generally be collected first when safe, relevant, and authorised.

---

## Question 9

A cloud service stores customer data in another country. What is the best first management action?

A. Assume the provider manages every legal requirement  
B. Immediately terminate the contract  
C. Identify applicable jurisdictions, data flows, contracts, and privacy requirements  
D. Encrypt the data and ignore the legal concerns

**Answer: C**

The organisation must first understand the processing, locations, parties, and applicable obligations before selecting controls or making a business decision.

---

## Question 10

Which statement is most accurate?

A. Passing a compliance audit proves that the organisation is secure.  
B. Internal policy always takes priority over legislation.  
C. Compliance requirements are one input to the organisation's risk-management program.  
D. Security personnel should independently interpret all legal requirements.

**Answer: C**

Compliance does not cover every risk. It should be integrated with broader security and risk management.

---

# 12. Quick Revision Sheet

## Legal and Compliance

- **Criminal:** Offence against society or the state
- **Civil:** Dispute between parties
- **Regulatory:** Government or regulator requirements
- **Contractual:** Agreed obligations between parties
- **Due care:** Do the reasonable protective actions
- **Due diligence:** Check and prove that risks and controls are managed
- **Jurisdiction:** Authority to make and enforce legal decisions
- **Transborder flow:** Data crosses national borders

## Privacy

- Process personal information lawfully, fairly, and transparently.
- Use it for a defined purpose.
- Collect the minimum necessary.
- Keep it accurate.
- Retain it only as long as necessary.
- Protect it.
- Demonstrate accountability.
- **Controller decides; processor processes.**

## Investigations and Evidence

- Determine the investigation type and authority.
- Involve legal, HR, privacy, management, or law enforcement as required.
- Preserve evidence integrity.
- Maintain chain of custody.
- Collect volatile evidence first when safe and authorised.
- Analyse a verified forensic copy where practical.
- Stop routine deletion when an authorised legal hold applies.

## Intellectual Property

- **Copyright:** Original expression
- **Patent:** Invention
- **Trademark:** Brand identifier
- **Trade secret:** Valuable information kept secret

---

# 13. Final Exam Mindset

When a CISSP question involves law, privacy, or investigations:

1. Protect people and critical services.
2. Do not exceed your authority.
3. Follow approved policy and response procedures.
4. Preserve evidence before making unnecessary changes.
5. Involve qualified legal, privacy, HR, or law-enforcement personnel.
6. Identify the applicable jurisdiction, contract, and regulatory requirements.
7. Document decisions and actions.
8. Think like a security manager, not a lone investigator.

---

# References

1. ISC2, [CISSP Certification Exam Outline](https://www.isc2.org/certifications/cissp/cissp-certification-exam-outline), effective April 15, 2024.
2. NIST, [SP 800-86: Guide to Integrating Forensic Techniques into Incident Response](https://csrc.nist.gov/pubs/sp/800/86/final).
3. European Commission, [Principles of personal data processing under the GDPR](https://commission.europa.eu/law/law-topic/data-protection/information-business-and-organisations/principles-gdpr_en).
4. EUR-Lex, [Regulation (EU) 2016/679, General Data Protection Regulation](https://eur-lex.europa.eu/eli/reg/2016/679/oj/eng).
5. World Intellectual Property Organization, [What is Intellectual Property?](https://www.wipo.int/en/web/about-ip/).
6. World Intellectual Property Organization, [Trade Secrets](https://www.wipo.int/en/web/trade-secrets).

---

# CISSP Domain 1: Security and Risk Management

## Batch 3: Risk Management, Risk Analysis, Controls, and Threat Modelling

> **Purpose:** This batch explains how CISSP expects you to identify, assess, communicate, and treat security risk. It includes formulas, worked examples, exam traps, and practice questions.

---

## Learning Objectives

By the end of this batch, you should be able to:

1. Explain the relationship between assets, threats, vulnerabilities, likelihood, and impact.
2. Distinguish inherent, residual, and secondary risk.
3. Compare qualitative, quantitative, and hybrid risk analysis.
4. Calculate Exposure Factor, Single Loss Expectancy, Annualised Rate of Occurrence, and Annualised Loss Expectancy.
5. Distinguish risk appetite, tolerance, capacity, and threshold.
6. Select an appropriate risk response.
7. Understand control categories, control functions, and cost-benefit analysis.
8. Explain risk registers, key risk indicators, and continuous monitoring.
9. Apply common threat-modelling methods.
10. Use the CISSP management mindset when answering risk questions.

---

# 1. Risk Management Fundamentals

## 1.1 What Is Risk?

Risk is the possibility that a threat will exploit a vulnerability and cause harm to an asset or organisational objective.

A simple conceptual model is:

```text
Risk = Likelihood x Impact
```

This is a useful way to think about risk, but organisations may use more detailed models.

### Key Terms

- **Asset:** Something of value to the organisation.
- **Threat:** Something capable of causing harm.
- **Threat actor:** A person, group, organisation, or entity that may cause harm.
- **Threat event:** The event or action through which harm may occur.
- **Vulnerability:** A weakness that could be exploited.
- **Likelihood:** The chance that the risk event will occur.
- **Impact:** The harm or consequence if it occurs.
- **Control:** A safeguard or countermeasure used to modify risk.
- **Risk:** Uncertainty that may affect objectives.

### Example

- **Asset:** Microsoft 365 administrator account
- **Threat actor:** Cybercriminal
- **Threat:** Credential theft
- **Vulnerability:** Legacy authentication is enabled
- **Event:** The attacker uses stolen credentials to sign in
- **Impact:** Unauthorised access, data loss, and service disruption
- **Controls:** Disable legacy authentication, require MFA, use Conditional Access, monitor risky sign-ins

> A vulnerability alone is not the complete risk. Risk depends on the relevant threat, likelihood, impact, and existing controls.

---

## 1.2 Asset Value

Asset value is not limited to purchase price. It may include:

- Replacement cost
- Information value
- Revenue contribution
- Recovery cost
- Legal and regulatory exposure
- Contractual obligations
- Operational dependency
- Reputation
- Safety consequences
- Intellectual property

### Example

A server may cost $20,000 to replace, but an outage could interrupt a critical public service and cost much more. The business impact may therefore be greater than the hardware value.

> **Exam point:** Business owners are normally best placed to determine asset value and business impact. Security professionals support the analysis.

---

## 1.3 Threats and Vulnerabilities

A threat needs a relevant vulnerability or exposure to create a realistic risk scenario.

### Threat Sources

- Malicious outsiders
- Insiders
- Human error
- Hardware or software failure
- Supplier failure
- Fire, flood, and other environmental events
- Power or communications failure
- Process failure
- Regulatory or market change

### Vulnerability Examples

- Missing patches
- Weak access control
- Excessive privileges
- Poor physical security
- Single points of failure
- Inadequate training
- Unsupported software
- Weak supplier oversight
- Incomplete backups
- Poor change control

### Important Distinction

- **Threat:** What could cause harm?
- **Vulnerability:** What weakness could allow it?
- **Impact:** What happens to the organisation?

---

# 2. Risk Types

## 2.1 Inherent Risk

**Inherent risk** is the risk that exists before considering controls.

### Example

Internet-facing remote access naturally creates a risk of unauthorised access before MFA, Conditional Access, monitoring, and other controls are considered.

## 2.2 Residual Risk

**Residual risk** is the risk remaining after controls are applied.

```text
Inherent risk - control effect = residual risk
```

This formula is conceptual. Real risk models may not use simple subtraction.

### Example

MFA greatly reduces account-compromise risk, but phishing, token theft, device compromise, and configuration errors may leave some residual risk.

> **Exam point:** Controls usually reduce risk. They rarely remove all risk.

## 2.3 Secondary Risk

**Secondary risk** is new risk introduced by the selected risk response or control.

### Example

Blocking all access from unmanaged devices reduces data-loss risk but may disrupt emergency work or business operations. That operational disruption is a secondary risk.

## 2.4 Total Risk

A traditional conceptual expression is:

```text
Total risk - safeguards = residual risk
```

The key idea is that management must understand and authorise the remaining risk.

---

# 3. Risk Appetite, Capacity, Tolerance, and Threshold

These terms are easily confused.

## 3.1 Risk Appetite

**Risk appetite** is the broad amount and type of risk an organisation is willing to pursue or retain to achieve its objectives.

Example:

> The organisation has a low appetite for risks that could expose sensitive citizen information.

Risk appetite is normally established by senior leadership or the board.

## 3.2 Risk Capacity

**Risk capacity** is the maximum risk the organisation can absorb without threatening its survival or essential objectives.

An organisation might be willing to accept a loss, but it cannot accept a loss beyond its financial or operational capacity.

## 3.3 Risk Tolerance

**Risk tolerance** is the acceptable variation around objectives or appetite. It is usually more specific and measurable.

Example:

> Critical identity services must not experience more than 30 minutes of unplanned outage per quarter.

## 3.4 Risk Threshold

A **risk threshold** is a point at which action, escalation, or reporting is required.

Example:

> Any vulnerability with a critical rating on an internet-facing system must be escalated immediately.

### Memory Aid

- **Appetite:** How much risk we broadly want or accept
- **Capacity:** The most risk we can survive
- **Tolerance:** The permitted variation
- **Threshold:** The point that triggers action

---

# 4. Risk Assessment Process

A practical risk-assessment process is:

1. Prepare for the assessment.
2. Identify assets and objectives.
3. Identify threats and threat events.
4. Identify vulnerabilities and existing controls.
5. Estimate likelihood.
6. Estimate impact.
7. Determine risk level.
8. Prioritise risks.
9. Recommend responses and controls.
10. Communicate results.
11. Monitor and update.

<NIST> describes risk assessment as part of the overall risk-management process and structures it around preparing, conducting, and maintaining the assessment.

## 4.1 Establish Context First

Before calculating risk, understand:

- Organisational objectives
- Scope
- Stakeholders
- Assets and processes
- Legal and contractual requirements
- Risk appetite and tolerance
- Assessment method
- Assumptions and limitations

> **Exam point:** Do not select a control before understanding the business context and risk.

## 4.2 Identify Risk

Useful information sources include:

- Asset inventories
- Business impact analysis
- Threat intelligence
- Vulnerability scans
- Penetration tests
- Audit findings
- Incident history
- Architecture diagrams
- Supplier assessments
- Interviews and workshops
- Change records

## 4.3 Analyse Risk

Risk analysis estimates:

- Likelihood
- Impact
- Existing control effectiveness
- Uncertainty
- Risk level

## 4.4 Evaluate and Prioritise

Compare analysed risk against:

- Risk appetite
- Risk tolerance
- Legal obligations
- Contractual obligations
- Business priorities
- Available resources

## 4.5 Treat and Monitor

Select and implement a response, assign an owner, define deadlines, track residual risk, and monitor for change.

---

# 5. Qualitative Risk Analysis

Qualitative analysis uses descriptive or ranked values rather than exact monetary calculations.

### Common Ratings

- Low
- Medium
- High
- Critical

Or numeric scales such as:

- Likelihood: 1 to 5
- Impact: 1 to 5

A simple score may be:

```text
Risk score = Likelihood score x Impact score
```

### Example

```text
Likelihood = 4
Impact = 5
Risk score = 4 x 5 = 20
```

If the organisation defines 16 to 25 as critical, the risk is critical.

## Advantages

- Faster than detailed quantitative analysis
- Easy to explain
- Useful when reliable financial data is unavailable
- Supports initial prioritisation
- Encourages expert and business input

## Limitations

- Subjective
- Different people may interpret ratings differently
- Difficult to compare across teams without clear criteria
- May hide uncertainty
- A score can look more precise than the underlying judgment

### Improving Quality

Define what each rating means. For example:

- **Rare:** Expected less than once in ten years
- **Possible:** Could occur once every two to five years
- **Likely:** Expected at least annually

The exact definitions should match the organisation.

---

# 6. Quantitative Risk Analysis

Quantitative analysis uses numeric values, often money and frequency.

The classic CISSP formulas are:

```text
SLE = Asset Value x Exposure Factor
ALE = SLE x Annualised Rate of Occurrence
```

## 6.1 Asset Value (AV)

The financial value associated with the asset or loss scenario.

## 6.2 Exposure Factor (EF)

The percentage of asset value expected to be lost from one event.

```text
EF = Expected percentage loss from one event
```

Example: A fire is expected to destroy 40% of a $500,000 facility. EF is 40%, or 0.40.

## 6.3 Single Loss Expectancy (SLE)

Expected financial loss from one occurrence.

```text
SLE = AV x EF
```

### Worked Example

```text
Asset Value = $500,000
Exposure Factor = 40% = 0.40
SLE = $500,000 x 0.40
SLE = $200,000
```

## 6.4 Annualised Rate of Occurrence (ARO)

The estimated frequency of the event in one year.

Examples:

- Once per year: ARO = 1
- Twice per year: ARO = 2
- Once every five years: ARO = 0.2
- Once every ten years: ARO = 0.1

## 6.5 Annualised Loss Expectancy (ALE)

Expected annual loss from the risk.

```text
ALE = SLE x ARO
```

### Full Worked Example

```text
Asset Value = $500,000
Exposure Factor = 40% = 0.40
SLE = $500,000 x 0.40 = $200,000
ARO = 0.2
ALE = $200,000 x 0.2 = $40,000 per year
```

The organisation expects an average annual loss of $40,000 from this scenario.

> **Important:** This does not mean the organisation will lose exactly $40,000 every year. It is a long-term estimate for decision-making.

---

## 6.6 Control Value and Cost-Benefit Analysis

A control should normally provide value greater than its full cost, unless legal, safety, or other mandatory requirements justify it.

A common exam formula is:

```text
Control benefit = ALE before control - ALE after control
```

Then compare the benefit with the annual cost of the control.

### Example

Before the control:

```text
ALE = $100,000
```

After the control:

```text
ALE = $30,000
```

Annual risk reduction:

```text
$100,000 - $30,000 = $70,000
```

If the control costs $25,000 per year:

```text
Net annual benefit = $70,000 - $25,000 = $45,000
```

The control appears financially reasonable, assuming the estimates and non-financial factors are valid.

### Total Cost of a Control

Include more than purchase price:

- Licensing
- Implementation
- Staff time
- Training
- Maintenance
- Monitoring
- User impact
- Performance impact
- Support
- Decommissioning
- Secondary risks

> **Exam trap:** The cheapest control is not automatically best. Select controls that reduce risk to an acceptable level and support business, legal, safety, and operational needs.

---

## 6.7 Quantitative Analysis Advantages and Limits

### Advantages

- Supports financial comparison
- Helps justify investments
- Provides measurable estimates
- Allows cost-benefit analysis

### Limitations

- Reliable values can be difficult to obtain
- Rare-event frequency is uncertain
- Reputation and safety are difficult to price
- Calculations can create false precision
- Older incident data may not represent current conditions

---

# 7. Hybrid Risk Analysis

Many organisations combine quantitative and qualitative methods.

### Example

- Use money for expected outage and recovery costs.
- Use high, medium, or low ratings for reputation and safety.
- Use scenario analysis for rare but severe events.

A hybrid method can be more practical because not every consequence can be converted into a reliable dollar value.

---

# 8. Risk Responses

Common risk responses are:

1. Avoid
2. Mitigate or reduce
3. Transfer or share
4. Accept

<NIST> includes accepting, avoiding, mitigating, sharing, and transferring as forms of risk response.

## 8.1 Risk Avoidance

Stop the activity that creates the risk.

### Example

The organisation decides not to launch a service because it cannot meet legal and security requirements.

### Key Point

Avoidance removes the specific risky activity, but may also remove its business benefit.

## 8.2 Risk Mitigation

Apply controls to reduce likelihood, impact, or both.

### Example

Require MFA, disable legacy authentication, and monitor risky sign-ins.

Mitigation usually leaves residual risk.

## 8.3 Risk Transfer

Shift some financial or operational consequences to another party.

### Examples

- Cyber insurance
- Outsourcing
- Contractual indemnification
- Service warranties

> **Exam point:** Risk can be transferred, but accountability may not be fully transferred. The organisation still has duties to customers, regulators, and stakeholders.

## 8.4 Risk Sharing

Distribute risk among multiple parties.

### Example

Two organisations jointly operate and fund a service under defined responsibilities.

## 8.5 Risk Acceptance

An authorised decision-maker knowingly accepts the residual risk.

Acceptance should normally be:

- Informed
- Documented
- Within authority
- Within appetite and tolerance
- Reviewed periodically
- Supported by monitoring or contingency arrangements where appropriate

### Active and Passive Acceptance

- **Active acceptance:** The organisation recognises the risk and may prepare contingency reserves or response plans.
- **Passive acceptance:** The organisation accepts the risk without specific additional preparation.

> **Exam point:** Ignoring an unknown risk is not informed risk acceptance.

---

# 9. Risk Ownership

## 9.1 Risk Owner

The risk owner is accountable for managing a specific risk and ensuring that an appropriate response is selected and monitored.

The owner is usually a business manager with authority over the affected objective or process.

## 9.2 Control Owner

The control owner is responsible for implementing, operating, and maintaining a control.

### Example

- **Risk owner:** Director responsible for digital services
- **Control owner:** Identity platform manager responsible for Conditional Access

### Key Difference

> **Risk owner owns the business decision. Control owner operates the safeguard.**

## 9.3 Security Professional

The security professional:

- Identifies and assesses risk
- Advises on responses
- Recommends controls
- Communicates uncertainty
- Monitors and reports

The security professional does not normally accept major business risk unless formally authorised.

---

# 10. Security Control Concepts

## 10.1 Control Categories by Implementation

### Administrative or Managerial Controls

Controls based on governance, policy, management, and people.

Examples:

- Policies
- Risk assessments
- Training
- Background checks
- Separation of duties
- Supplier reviews

### Technical or Logical Controls

Controls implemented through technology.

Examples:

- MFA
- Firewalls
- Encryption
- Endpoint protection
- Access control lists
- Logging

### Physical Controls

Controls that protect facilities, equipment, and people.

Examples:

- Locks
- Fences
- Guards
- Cameras
- Lighting
- Fire suppression

---

## 10.2 Control Functions

### Preventive

Stops or reduces the chance of an event.

Examples: MFA, access control, lock, security awareness.

### Detective

Identifies an event during or after occurrence.

Examples: SIEM alert, audit log review, intrusion detection, CCTV monitoring.

### Corrective

Fixes a problem or limits further damage.

Examples: Reimaging a device, applying a patch, changing a configuration.

### Recovery

Restores capability after an event.

Examples: Restoring backups, failover, disaster recovery.

### Deterrent

Discourages an action.

Examples: Warning banners, visible cameras, disciplinary policy.

### Compensating

Provides alternative protection when the preferred control cannot be used.

Example: An unsupported system cannot use MFA, so access is restricted through a jump server, network segmentation, strong monitoring, and limited accounts.

### Directive

Directs required behaviour.

Examples: Policies, procedures, signs, and mandatory instructions.

> One control can serve multiple functions. For example, a visible camera may deter and detect.

---

# 11. Control Selection

Controls should be selected based on:

- Risk level
- Business objectives
- Legal and contractual requirements
- Asset value and classification
- Control effectiveness
- Cost and operational impact
- Technical feasibility
- User impact
- Existing architecture
- Residual and secondary risk
- Defence in depth

## 11.1 Control Effectiveness

Ask:

- Is the control appropriately designed?
- Is it fully implemented?
- Is it operating consistently?
- Does it reduce likelihood, impact, or both?
- Can it be bypassed?
- Is it monitored?
- Does it create unacceptable secondary risk?

## 11.2 Control Baseline and Tailoring

A **control baseline** is a starting set of controls for a defined type of system or risk level.

**Tailoring** adjusts the baseline to fit the organisation, system, environment, legal obligations, and risk.

> **Exam point:** Do not apply every control identically. Start with an appropriate baseline, then tailor it using risk and business context.

## 11.3 Defence in Depth

Use overlapping controls so that one failure does not produce a complete compromise.

For privileged access, layers may include:

1. Separate administrator account
2. MFA
3. Privileged access workstation
4. Just-in-time access
5. Approval workflow
6. Session logging
7. Alerting and review

---

# 12. Risk Register

A risk register records and tracks identified risks.

Typical fields include:

- Risk ID
- Risk statement
- Asset or objective affected
- Threat and vulnerability
- Likelihood
- Impact
- Inherent risk
- Existing controls
- Proposed response
- Risk owner
- Action owner
- Target date
- Residual risk
- Status
- Review date

## 12.1 Good Risk Statement

A useful format is:

```text
Because of [cause or condition], [risk event] may occur, resulting in [business impact].
```

### Example

```text
Because legacy authentication remains enabled, stolen credentials may be used to bypass modern authentication controls, resulting in unauthorised access to organisational email and data.
```

A statement such as “MFA risk” is too vague because it does not describe cause, event, and impact.

---

# 13. Risk Indicators and Metrics

## 13.1 Key Risk Indicator (KRI)

A KRI provides an early warning that risk exposure is increasing.

Examples:

- Percentage of privileged accounts without MFA
- Number of unsupported systems
- Critical vulnerabilities past deadline
- Supplier assessments overdue
- Increase in risky sign-ins

## 13.2 Key Performance Indicator (KPI)

A KPI measures how well a process or team is performing.

Examples:

- Percentage of patches deployed within target
- Mean time to close incidents
- Training completion rate

## 13.3 Key Control Indicator (KCI)

A KCI measures whether a control is operating effectively.

Examples:

- Percentage of privileged sign-ins that used phishing-resistant MFA
- Percentage of backup restore tests completed successfully
- Percentage of terminated accounts disabled within target

### Quick Difference

- **KRI:** Is risk increasing?
- **KPI:** Are we performing well?
- **KCI:** Is the control working?

---

# 14. Continuous Risk Monitoring

Risk assessments become outdated because assets, threats, vulnerabilities, suppliers, laws, and business objectives change.

Monitoring may include:

- Vulnerability and configuration data
- Threat intelligence
- Incident trends
- Audit findings
- Control testing
- Supplier changes
- Business changes
- New legal requirements
- Risk indicators
- Exceptions and overdue actions

### Trigger Events for Reassessment

- Major system change
- New supplier
- Acquisition or merger
- Significant incident
- New threat
- New vulnerability
- Regulatory change
- Change in data classification
- Control failure
- Major architecture change

> **Exam point:** Risk management is continuous, not a once-a-year paperwork exercise.

---

# 15. Risk Frameworks

## 15.1 NIST Risk Management Framework

The <NIST> Risk Management Framework integrates security, privacy, and risk activities into the system development lifecycle.

A useful high-level sequence is:

1. Prepare
2. Categorise
3. Select
4. Implement
5. Assess
6. Authorise
7. Monitor

### Memory Aid

> **Prepare, Categorise, Select, Implement, Assess, Authorise, Monitor.**

## 15.2 NIST Cybersecurity Framework 2.0

<NIST> CSF 2.0 is organised around six functions:

1. Govern
2. Identify
3. Protect
4. Detect
5. Respond
6. Recover

It helps organisations understand, assess, prioritise, and communicate cybersecurity risk. It describes desired outcomes rather than prescribing one implementation method.

### Memory Aid

> **Govern what you Identify, Protect it, Detect problems, Respond, and Recover.**

## 15.3 ISO 31000 and ISO/IEC 27005

At a high level:

- **ISO 31000** provides broad risk-management principles and guidance.
- **ISO/IEC 27005** provides information-security risk-management guidance.

For CISSP, focus on the common principles: establish context, identify risk, analyse it, evaluate it, treat it, communicate it, and monitor it.

> **Exam point:** Frameworks provide a structured approach and common language. They do not remove management accountability or the need for tailoring.

---

# 16. Threat Modelling

Threat modelling is a structured method for identifying possible attacks, weaknesses, and mitigations before or during system design. <NIST> describes it as a type of risk assessment that models attack and defence aspects of an entity such as data, an application, a host, a system, or an environment.

## 16.1 Basic Threat-Modelling Process

1. Define scope and security objectives.
2. Understand the architecture and data flows.
3. Identify assets, trust boundaries, entry points, and dependencies.
4. Identify threats and abuse cases.
5. Prioritise threats.
6. Select mitigations.
7. Validate the model and update it as the design changes.

> **Exam point:** Threat modelling is most valuable early in design, when changes are less expensive.

---

## 16.2 STRIDE

STRIDE is a common threat classification method.

| Letter | Threat | Security property affected |
|---|---|---|
| S | Spoofing | Authentication |
| T | Tampering | Integrity |
| R | Repudiation | Non-repudiation and accountability |
| I | Information disclosure | Confidentiality |
| D | Denial of service | Availability |
| E | Elevation of privilege | Authorisation |

### Memory Aid

> **Spoof, Tamper, Repudiate, Inform, Deny, Elevate.**

### Examples

- **Spoofing:** Attacker signs in using a stolen account.
- **Tampering:** Attacker modifies a configuration file.
- **Repudiation:** User denies performing an action because logs are missing.
- **Information disclosure:** Sensitive data is exposed.
- **Denial of service:** Service is made unavailable.
- **Elevation of privilege:** Standard user gains administrator rights.

---

## 16.3 DREAD

DREAD is a traditional method for rating threats:

- Damage potential
- Reproducibility
- Exploitability
- Affected users
- Discoverability

It can help structure discussion, but scoring may be subjective and not every organisation uses it.

## 16.4 PASTA

PASTA stands for **Process for Attack Simulation and Threat Analysis**. It is a risk-focused method that connects business objectives, technical scope, threat analysis, vulnerability analysis, attack modelling, and risk treatment.

## 16.5 Attack Trees

An attack tree starts with an attacker goal and breaks it into possible paths.

Example goal:

```text
Gain privileged access
```

Possible paths:

```text
- Steal administrator credentials
- Exploit an unpatched service
- Abuse excessive permissions
- Compromise a privileged workstation
```

Attack trees help teams identify alternative attack paths and control gaps.

## 16.6 Misuse and Abuse Cases

- **Use case:** Describes how an authorised user should interact with a system.
- **Misuse or abuse case:** Describes how an attacker or unauthorised user may misuse it.

These help translate attacker behaviour into security requirements.

---

# 17. Common CISSP Exam Traps

## Trap 1: Applying a Control Before Assessing Risk

**Better answer:** Understand business objectives, assets, threats, vulnerabilities, likelihood, impact, and existing controls first.

## Trap 2: Security Accepts Business Risk

**Better answer:** Security advises. An authorised risk owner or management accepts business risk.

## Trap 3: Insurance Removes the Risk

**Better answer:** Insurance may transfer some financial impact, but operational, legal, safety, and reputational consequences can remain.

## Trap 4: Compliance Equals Security

**Better answer:** Compliance is a minimum or defined requirement. Risk management must address relevant risks beyond the checklist.

## Trap 5: Highest Technical Severity Always Comes First

**Better answer:** Prioritise using business impact, exploitability, exposure, asset criticality, and existing controls, not technical severity alone.

## Trap 6: Quantitative Values Are Exact

**Better answer:** SLE, ARO, and ALE are estimates that depend on assumptions and data quality.

## Trap 7: Controls Eliminate All Risk

**Better answer:** Controls reduce likelihood or impact. Management evaluates residual and secondary risk.

## Trap 8: Risk Acceptance Means Doing Nothing

**Better answer:** Acceptance is a conscious, informed, documented, authorised, and reviewed decision.

---

# 18. Practice Questions

## Question 1

Which statement best describes residual risk?

A. Risk before controls are considered  
B. Risk introduced by a new control  
C. Risk remaining after controls are applied  
D. Risk transferred to an insurer

**Answer: C**

Residual risk remains after safeguards or responses are applied.

---

## Question 2

A system is valued at $200,000. A single incident is expected to cause a 25% loss. What is the SLE?

A. $8,000  
B. $25,000  
C. $50,000  
D. $200,000

**Answer: C**

```text
SLE = AV x EF
SLE = $200,000 x 0.25
SLE = $50,000
```

---

## Question 3

The SLE is $50,000 and the event is expected once every five years. What is the ALE?

A. $10,000  
B. $25,000  
C. $50,000  
D. $250,000

**Answer: A**

```text
ARO = 1 / 5 = 0.2
ALE = SLE x ARO
ALE = $50,000 x 0.2
ALE = $10,000
```

---

## Question 4

Who should normally make the final decision to accept a major business risk?

A. Vulnerability scanner operator  
B. Authorised risk owner or senior management  
C. External penetration tester  
D. Service Desk analyst

**Answer: B**

The security team assesses and advises. An authorised business decision-maker accepts the risk.

---

## Question 5

Which response stops the activity creating a risk?

A. Mitigation  
B. Transfer  
C. Avoidance  
D. Acceptance

**Answer: C**

Avoidance removes the risky activity, although the organisation may also lose its benefit.

---

## Question 6

Buying cyber insurance is primarily which type of response?

A. Avoidance  
B. Transfer  
C. Detection  
D. Elimination

**Answer: B**

Insurance transfers some financial consequences. It does not remove all accountability or operational impact.

---

## Question 7

Which control is primarily detective?

A. MFA  
B. Security policy  
C. SIEM alert  
D. Backup restoration

**Answer: C**

A SIEM alert detects suspicious activity. MFA is mainly preventive, while restoration is a recovery action.

---

## Question 8

An unsupported application cannot use the organisation's standard MFA control. The organisation restricts it to a monitored jump server and a segmented network. What is this?

A. Deterrent control  
B. Compensating control  
C. Risk avoidance  
D. Risk ignorance

**Answer: B**

The alternative controls compensate for the unavailable preferred control.

---

## Question 9

Which metric provides an early warning that exposure may be increasing?

A. Key risk indicator  
B. Service-level agreement  
C. Recovery time objective  
D. Asset inventory

**Answer: A**

A KRI indicates a change in risk exposure.

---

## Question 10

In STRIDE, which threat most directly affects confidentiality?

A. Spoofing  
B. Tampering  
C. Information disclosure  
D. Denial of service

**Answer: C**

Information disclosure exposes information to unauthorised parties.

---

## Question 11

A new security control reduces account-compromise risk but causes emergency users to lose access during an outage. The new operational exposure is best described as:

A. Inherent risk  
B. Secondary risk  
C. Accepted risk  
D. Threat intelligence

**Answer: B**

Secondary risk is introduced by a risk response or control.

---

## Question 12

What should happen first when selecting a security control?

A. Purchase the most advanced product  
B. Determine the business context and assess the risk  
C. Copy another organisation's baseline without changes  
D. Transfer all risk to the supplier

**Answer: B**

Control selection should follow an understanding of business objectives, risk, requirements, and existing controls.

---

## Question 13

A control reduces ALE from $120,000 to $50,000 per year and costs $30,000 annually. What is the net annual benefit?

A. $20,000  
B. $30,000  
C. $40,000  
D. $70,000

**Answer: C**

```text
Risk reduction = $120,000 - $50,000 = $70,000
Net benefit = $70,000 - $30,000 = $40,000
```

---

## Question 14

What is the best description of a risk appetite statement?

A. A detailed firewall configuration  
B. The broad amount and type of risk the organisation is willing to pursue or retain  
C. A list of every vulnerability  
D. A forensic evidence record

**Answer: B**

Risk appetite expresses broad leadership direction on acceptable risk in pursuit of objectives.

---

## Question 15

Which threat-modelling method maps spoofing, tampering, repudiation, information disclosure, denial of service, and elevation of privilege?

A. PASTA  
B. STRIDE  
C. ALE  
D. RMF

**Answer: B**

STRIDE is the mnemonic for those six threat categories.

---

# 19. Quick Revision Sheet

## Core Risk Relationship

```text
Threat + vulnerability + likelihood + impact = risk scenario
```

## Risk Types

- **Inherent:** Before controls
- **Residual:** After controls
- **Secondary:** Introduced by the response

## Risk Boundaries

- **Appetite:** Broad willingness to take risk
- **Capacity:** Maximum survivable risk
- **Tolerance:** Acceptable variation
- **Threshold:** Trigger for action

## Quantitative Formulas

```text
SLE = Asset Value x Exposure Factor
ALE = SLE x Annualised Rate of Occurrence
Control benefit = ALE before - ALE after
Net benefit = Control benefit - annual control cost
```

## Risk Responses

- Avoid
- Mitigate
- Transfer or share
- Accept

## Control Categories

- Administrative or managerial
- Technical or logical
- Physical

## Control Functions

- Preventive
- Detective
- Corrective
- Recovery
- Deterrent
- Compensating
- Directive

## Responsibility

- **Senior management or board:** Establishes appetite and governance
- **Risk owner:** Owns the business risk decision
- **Control owner:** Implements and operates the control
- **Security professional:** Assesses, advises, monitors, and reports

## STRIDE

- Spoofing
- Tampering
- Repudiation
- Information disclosure
- Denial of service
- Elevation of privilege

---

# 20. Final Exam Mindset

When answering a CISSP risk question:

1. Understand the organisation's objective before selecting a solution.
2. Identify the asset, threat, vulnerability, likelihood, and business impact.
3. Consider existing controls before calculating residual risk.
4. Give risk decisions to the authorised business owner.
5. Use cost-benefit analysis, but also consider law, safety, reputation, and mission.
6. Document accepted risk and review it periodically.
7. Prefer layered, risk-based, and business-aligned controls.
8. Monitor because risks and controls change over time.
9. Avoid false precision in quantitative estimates.
10. Think like a manager and adviser, not only a technical operator.

---

# References

1. ISC2, [CISSP Certification Exam Outline](https://www.isc2.org/certifications/cissp/cissp-certification-exam-outline), effective April 15, 2024.
2. NIST, [SP 800-30 Rev. 1: Guide for Conducting Risk Assessments](https://csrc.nist.gov/pubs/sp/800/30/r1/final).
3. NIST, [Risk Management](https://www.nist.gov/risk-management).
4. NIST, [Cybersecurity Framework 2.0](https://www.nist.gov/publications/nist-cybersecurity-framework-csf-20).
5. NIST CSRC Glossary, [Risk Response](https://csrc.nist.gov/glossary/term/risk_response).
6. NIST CSRC Glossary, [Threat Modelling](https://csrc.nist.gov/glossary/term/threat_modeling).
7. NIST CSRC Glossary, [Risk Management Framework](https://csrc.nist.gov/glossary/term/risk_management_framework).

---

# CISSP Domain 1: Security and Risk Management

## Batch 4: Business Continuity, Personnel Security, Supply Chain, Awareness, and Final Review

> **Domain status:** This batch completes CISSP Domain 1. The next series will begin Domain 2: Asset Security.
>
> **Exam alignment:** These notes follow the ISC2 CISSP Certification Exam Outline effective April 15, 2024. Domain 1 represents 16% of the examination.

---

# Learning Objectives

By the end of this batch, you should be able to:

1. Explain business continuity and business impact analysis.
2. Distinguish MTD, RTO, RPO, WRT, and service delivery objectives.
3. Explain criticality, dependencies, recovery priorities, and continuity strategies.
4. Apply personnel security throughout the employment lifecycle.
5. Distinguish onboarding, transfer, termination, and contractor controls.
6. Explain supplier and cybersecurity supply-chain risk management.
7. Distinguish awareness, training, and education.
8. Select meaningful learning-program metrics.
9. Review all major Domain 1 concepts.
10. Apply the CISSP managerial mindset to mixed questions.

---

# 1. Business Continuity Fundamentals

## 1.1 What Is Business Continuity?

**Business continuity (BC)** is the organisation's ability to continue critical business functions during and after a disruption.

Possible disruptions include:

- Cyberattack
- Ransomware
- Hardware failure
- Cloud or supplier outage
- Fire or flood
- Power failure
- Telecommunications failure
- Pandemic or staff unavailability
- Loss of a building
- Data corruption
- Industrial action

Business continuity is broader than IT recovery. It includes:

- People
- Processes
- Facilities
- Technology
- Information
- Suppliers
- Communications

> **CISSP principle:** The purpose of continuity planning is to protect life and maintain critical business functions, not merely to restore servers.

---

## 1.2 Business Continuity Versus Disaster Recovery

### Business Continuity Plan

A **Business Continuity Plan (BCP)** focuses on continuing critical business operations during and after disruption.

It may include:

- Alternate work arrangements
- Manual procedures
- Critical staff and succession
- Supplier alternatives
- Internal and external communications
- Minimum operating requirements
- Business recovery priorities

### Disaster Recovery Plan

A **Disaster Recovery Plan (DRP)** focuses mainly on restoring technology, infrastructure, applications, and data after a major disruption.

It may include:

- System restoration
- Alternate processing sites
- Backup recovery
- Network recovery
- Cloud recovery
- Technical recovery procedures

### Key Difference

> **BCP keeps the business operating. DRP restores technology that supports the business.**

DRP is normally a component of the broader business continuity program.

---

## 1.3 Other Related Plans

### Incident Response Plan

Coordinates detection, analysis, containment, eradication, and recovery from security incidents.

### Crisis Management Plan

Coordinates senior management decisions during a serious organisational crisis.

### Emergency Response Plan

Focuses on immediate protection of life, safety, and property.

### Occupant Emergency Plan

Addresses safe evacuation, shelter, accountability, and building emergencies.

### Communications Plan

Defines approved communications with employees, customers, regulators, suppliers, media, and other stakeholders.

### Continuity of Operations Plan

Supports continuation of essential organisational or government functions.

> **Exam priority:** Life safety first, then stabilise the situation, maintain critical functions, and recover supporting systems according to business priorities.

---

# 2. Business Impact Analysis

## 2.1 Purpose of a BIA

A **Business Impact Analysis (BIA)** identifies critical processes, their dependencies, the effect of disruption over time, and recovery priorities.

A BIA asks:

- Which processes are critical?
- What systems, people, information, facilities, and suppliers support them?
- How long can each process be unavailable?
- How much data loss can the organisation tolerate?
- What are the financial, legal, safety, operational, and reputational impacts?
- What must be recovered first?
- What minimum resources are required?

> **Important:** A BIA analyses the effect of disruption. A risk assessment examines threats, vulnerabilities, likelihood, and impact. The two activities support each other but are not identical.

---

## 2.2 BIA Process

A practical BIA process is:

1. Define scope and obtain management support.
2. Identify business processes and process owners.
3. Identify supporting assets and dependencies.
4. Determine the effect of disruption over time.
5. Establish maximum tolerable downtime.
6. Define recovery time and recovery point requirements.
7. Determine minimum service levels and resource needs.
8. Prioritise processes and systems.
9. Validate results with business owners.
10. Obtain management approval.
11. Review the BIA after major changes and at planned intervals.

### Information Collection Methods

- Interviews
- Workshops
- Questionnaires
- Process maps
- Asset inventories
- Financial records
- Incident history
- Service catalogues
- Architecture diagrams
- Supplier contracts

### Exam Point

Business process owners should provide or validate business impact and recovery requirements. The security or continuity team facilitates the analysis but should not invent business priorities alone.

---

## 2.3 Types of Business Impact

Consider both direct and indirect impacts:

- Injury or risk to life
- Loss of critical public or customer services
- Revenue loss
- Recovery expense
- Regulatory penalties
- Contractual penalties
- Legal liability
- Loss of productivity
- Reputation damage
- Loss of customer confidence
- Data loss
- Supply-chain disruption
- Competitive disadvantage

Impact often increases over time. A four-hour outage may be manageable, while a three-day outage may be catastrophic.

---

# 3. Recovery Time Concepts

## 3.1 Maximum Tolerable Downtime

**Maximum Tolerable Downtime (MTD)**, also called **Maximum Tolerable Period of Disruption (MTPD)** in some frameworks, is the longest a process can remain unavailable before the impact becomes unacceptable.

It is the outer business limit.

### Example

A payroll process may tolerate three days of disruption before employees are affected and legal or industrial issues arise.

---

## 3.2 Recovery Time Objective

**Recovery Time Objective (RTO)** is the targeted time to restore a process or system after disruption.

### Example

```text
RTO = 4 hours
```

The organisation aims to restore the service within four hours.

The RTO should normally be shorter than the MTD.

---

## 3.3 Work Recovery Time

**Work Recovery Time (WRT)** is the time required after technology restoration to validate systems, reconcile information, restore business work, and resume normal operations.

Examples:

- Validate that the application works
- Reconcile transactions
- Enter data recorded manually during the outage
- Confirm connections and permissions
- Perform business acceptance checks

A useful relationship is:

```text
RTO + WRT should be less than or equal to MTD
```

### Example

```text
MTD = 12 hours
RTO = 8 hours
WRT = 4 hours
```

This uses the full tolerable period. A delay in either technical or business recovery could exceed the MTD, so additional safety margin may be desirable.

---

## 3.4 Recovery Point Objective

**Recovery Point Objective (RPO)** is the maximum acceptable amount of data loss measured in time.

### Example

```text
RPO = 30 minutes
```

After recovery, the organisation may need to recreate up to 30 minutes of data.

The RPO influences:

- Backup frequency
- Replication frequency
- Transaction logging
- Storage design
- Recovery cost

### Easy Difference

- **RTO:** How quickly must the service return?
- **RPO:** How much data can we lose?

---

## 3.5 Minimum Business Continuity Objective

A **Minimum Business Continuity Objective (MBCO)** is the minimum acceptable level of products or services that must be delivered during disruption.

### Example

During a major outage, a contact centre may operate at 40% capacity and handle only critical calls.

---

## 3.6 Recovery Metrics Summary

| Metric | Main question | Example |
|---|---|---|
| MTD/MTPD | How long before impact is unacceptable? | 12 hours |
| RTO | How quickly must the service be restored? | 8 hours |
| WRT | How long to validate and resume business work? | 4 hours |
| RPO | How much data loss is acceptable? | 30 minutes |
| MBCO | What minimum service level must continue? | 40% critical service |

### Memory Aid

> **RTO is time to return. RPO is the point in data to which you return.**

---

# 4. Dependencies and Recovery Priorities

## 4.1 Internal Dependencies

Examples include:

- Identity services
- Active Directory or Entra ID
- DNS
- Networks
- Databases
- Staff
- Facilities
- Service desk
- Security monitoring
- Backup systems
- Power and cooling

## 4.2 External Dependencies

Examples include:

- Internet service provider
- Cloud provider
- Managed service provider
- Telecommunications carrier
- Software vendor
- Payment processor
- Utility provider
- Critical supplier
- Logistics provider
- Government service

### Hidden Dependency Example

A business application may be restored, but users still cannot sign in because the identity platform or DNS service is unavailable.

> **Exam point:** Recover services according to business dependencies, not merely according to which technical team can restore its system first.

---

## 4.3 Critical Path

The **critical path** is the sequence of dependent activities that determines the shortest possible recovery time.

A delay in a critical-path activity delays the overall recovery.

### Example

```text
Power -> Network -> Identity -> Database -> Application -> Business validation
```

Restoring the application before power, network, identity, or database services would not make it usable.

---

## 4.4 Recovery Priority

Recovery priority should consider:

- Life and safety
- Critical business or public services
- MTD and RTO
- Legal and contractual obligations
- Dependencies
- Financial impact
- Available resources
- Manual alternatives

The most expensive system is not necessarily the first system to recover.

---

# 5. Continuity and Recovery Strategies

## 5.1 Manual Workarounds

A manual workaround permits temporary operation without the normal system.

Examples:

- Paper forms
- Offline contact lists
- Manual approval process
- Telephone-based service

Manual processes should be:

- Documented
- Authorised
- Tested
- Secure
- Reconciled after restoration

A workaround may introduce new confidentiality, integrity, and fraud risks.

---

## 5.2 Redundancy and Resilience

Possible strategies include:

- Redundant network connections
- Multiple power sources
- Clustered servers
- Geographic diversity
- Replicated data
- Multiple suppliers
- Cross-trained staff
- Alternate facilities
- Cloud availability zones or regions

> Redundancy is valuable only if common causes of failure are understood. Two connections using the same physical cable route may not provide meaningful resilience.

---

## 5.3 Alternate Processing Sites

### Hot Site

A hot site is equipped and ready to operate quickly.

- Fast recovery
- High cost
- Systems and connectivity available
- Data may be replicated or restored rapidly

### Warm Site

A warm site has some equipment and connectivity but requires additional setup or data restoration.

- Moderate recovery speed
- Moderate cost

### Cold Site

A cold site provides space and basic facilities but little or no installed technology.

- Slow recovery
- Lower cost
- Equipment and data must be supplied

### Mobile Site

A transportable facility delivered to a required location.

### Reciprocal Agreement

Two organisations agree to support each other during disruption.

Risks include:

- Both parties may be affected by the same event.
- Capacity may be insufficient.
- Systems may be incompatible.
- Agreements may not be regularly tested.

### Site Comparison

| Site | Readiness | Recovery speed | Relative cost |
|---|---|---|---|
| Hot | High | Fast | High |
| Warm | Medium | Moderate | Medium |
| Cold | Low | Slow | Low |

---

# 6. Plan Testing and Exercises

A plan that is not tested may fail when needed.

## 6.1 Checklist or Read-Through

Participants review the plan for missing, incorrect, or outdated information.

- Low disruption
- Low cost
- Limited proof of actual capability

## 6.2 Tabletop Exercise

Participants discuss their response to a scenario.

- Validates roles and decisions
- Identifies coordination issues
- Low operational risk

## 6.3 Simulation

Participants respond to a realistic simulated event without necessarily switching production operations.

- More realistic
- Tests communications and decision-making
- Requires more planning

## 6.4 Parallel Test

Recovery systems are activated while production remains operational.

- Tests recovery capability
- Lower production risk than a full interruption
- May require significant resources

## 6.5 Full-Interruption Test

Production processing is stopped and operations move to the recovery environment.

- Most realistic
- Highest operational risk
- Requires strong approval and planning

### General Testing Order

Organisations often progress from less disruptive to more realistic tests:

```text
Checklist -> Tabletop -> Simulation -> Parallel -> Full interruption
```

> **Exam point:** Testing should be authorised, planned, safe, documented, and followed by corrective actions.

---

# 7. Plan Maintenance

Continuity plans can become obsolete quickly.

Update plans after:

- Organisational restructuring
- New systems or major changes
- Supplier changes
- Office relocation
- Significant incident
- Exercise findings
- Staff changes
- New legal requirements
- Changes to business priorities

Maintain:

- Contact details
- Call trees
- System inventories
- Supplier contacts
- Recovery procedures
- Architecture diagrams
- Alternate-site details
- Copies stored securely and accessibly

A plan stored only on an unavailable production network may be unusable during an incident.

---

# 8. Personnel Security

People can be a security strength or a source of risk. Personnel security applies before, during, and after employment or engagement.

## 8.1 Core Principles

- Least privilege
- Need to know
- Separation of duties
- Job rotation
- Mandatory vacation
- Background screening where lawful and appropriate
- Clear roles and responsibilities
- Confidentiality obligations
- Prompt access removal
- Ongoing awareness and role-based training

> **Exam point:** Personnel controls must be lawful, proportionate, consistently applied, and aligned with organisational policy.

---

# 9. Candidate Screening and Hiring

Screening should match the sensitivity and risk of the role.

Possible checks, where lawful, relevant, and authorised, include:

- Identity verification
- Employment history
- Qualification verification
- Professional references
- Criminal-history checks
- Financial checks for designated high-risk roles
- Right-to-work checks
- Security clearance
- Conflict-of-interest declarations

### Important Principles

- Obtain required consent.
- Follow privacy and employment law.
- Collect only necessary information.
- Apply checks consistently.
- Protect screening records.
- Reassess when a person moves into a more sensitive role.

> **Exam trap:** Do not apply the most intrusive screening to every role without a lawful and risk-based reason.

---

# 10. Employment Agreements and Policies

Personnel should understand their obligations before receiving access.

Relevant documents may include:

- Employment agreement
- Confidentiality or non-disclosure agreement
- Acceptable-use policy
- Code of conduct
- Intellectual-property agreement
- Remote-work requirements
- Monitoring notice
- Privacy notice
- Conflict-of-interest policy
- Disciplinary policy

These documents should clearly explain:

- Permitted and prohibited activities
- Information-handling expectations
- Monitoring and privacy boundaries
- Incident-reporting duties
- Consequences of violation
- Obligations that continue after employment

---

# 11. Onboarding

A secure onboarding process includes:

1. Confirm the person's identity and employment status.
2. Complete required screening and agreements.
3. Assign a manager and role.
4. Approve access based on least privilege and need to know.
5. Issue unique accounts and approved equipment.
6. Provide security and privacy awareness.
7. Deliver role-specific training before sensitive duties.
8. Record assets and access issued.
9. Verify that access works as intended.
10. Establish review and expiry dates where appropriate.

### Microsoft Entra Example

For a new Service Desk officer:

- Create a standard user account.
- Create a separate administrative account if required.
- Assign only approved directory roles.
- Require MFA and compliant-device access.
- Use time-limited privileged activation where available.
- Log and review privileged actions.

> **CISSP mindset:** Access should follow approved role requirements, not be copied blindly from another employee.

---

# 12. Transfers and Role Changes

Transfers can create privilege accumulation if old access is not removed.

A secure transfer process should:

1. Identify the new role and new access requirements.
2. Review all existing access.
3. Remove access no longer required.
4. Approve new access.
5. Reassess separation-of-duties conflicts.
6. Provide new role-specific training.
7. Update asset ownership and records.
8. Obtain new agreements if duties materially change.

### Exam Point

> Do not merely add new permissions. Re-evaluate the person's complete access.

This helps prevent **privilege creep**, also called **access accumulation**.

---

# 13. Termination and Offboarding

Termination controls depend on risk and circumstances.

## 13.1 Normal Departure

Typical actions include:

- Coordinate HR, management, security, facilities, and IT.
- Disable access at the authorised time.
- Revoke active sessions, tokens, certificates, keys, and remote access.
- Recover devices, badges, keys, and records.
- Transfer ownership of files, mailboxes, and business processes.
- Preserve information subject to retention or legal hold.
- Remind the person of continuing confidentiality obligations.
- Update contact lists and physical access.
- Review recent activity when authorised and appropriate.
- Confirm completion using an offboarding checklist.

## 13.2 Involuntary or High-Risk Termination

Access may need to be disabled immediately before or during the termination meeting, coordinated through authorised HR, management, legal, security, and IT personnel.

Avoid:

- Warning the person prematurely
- Leaving remote sessions active
- Forgetting secondary or privileged accounts
- Deleting business data without approval
- Allowing unmanaged transfer of organisational information

### Exam Priority

Protect people first. Then coordinate access removal, property recovery, evidence preservation, and communication through approved procedures.

---

# 14. Vendor, Consultant, and Contractor Security

Third-party personnel should not automatically receive the same access as employees.

Controls may include:

- Defined sponsor and manager
- Identity and screening requirements
- NDA and contractual security clauses
- Least privilege
- Time-limited accounts
- Restricted network paths
- Managed devices or secure virtual access
- Activity logging
- Clear data ownership
- Incident-notification duties
- Return or destruction of data
- Immediate termination of access at contract end
- Periodic access recertification

### Exam Point

Temporary access should have a defined owner, business purpose, start date, and expiry date.

---

# 15. Insider Risk

Insider risk may be:

- Malicious
- Negligent
- Accidental
- Caused through compromised insider credentials

Controls include:

- Least privilege
- Separation of duties
- Behavioural and security monitoring within legal boundaries
- Data-loss prevention
- Clear reporting channels
- Access reviews
- Job rotation
- Mandatory vacation
- Supportive organisational culture
- Prompt offboarding

> **Important:** Insider-risk programs should respect privacy, employment law, fairness, and due process. Suspicion alone is not proof of wrongdoing.

---

# 16. Supply-Chain Risk Management

## 16.1 What Is Supply-Chain Risk?

Supply-chain risk arises because an organisation depends on external products and services that it may not fully control or observe.

Examples include:

- Cloud services
- Managed service providers
- Software vendors
- Hardware manufacturers
- Open-source components
- Telecommunications providers
- Consultants
- Subcontractors
- Update and distribution systems

Supply-chain products or services may contain:

- Malicious functionality
- Counterfeit components
- Vulnerabilities
- Weak development practices
- Unsupported dependencies
- Hidden fourth parties
- Single points of failure

---

## 16.2 Supply-Chain Lifecycle

Manage supplier risk throughout the relationship:

1. Establish requirements.
2. Perform due diligence.
3. Select the supplier.
4. Negotiate contractual controls.
5. Onboard securely.
6. Monitor performance and risk.
7. Manage changes and incidents.
8. Renew, transition, or terminate.
9. Verify data return, deletion, and access removal.

> **Exam point:** A security questionnaire before contract signature is not enough. Supplier risk requires continuing oversight.

---

## 16.3 Supplier Due Diligence

Assess matters such as:

- Financial stability
- Security governance
- Privacy practices
- Certifications and independent reports
- Incident history
- Vulnerability and patch management
- Secure development practices
- Personnel controls
- Business continuity and disaster recovery
- Data locations
- Subcontractors
- Access requirements
- Concentration risk
- Exit capability

The assessment depth should match the supplier's criticality and access.

---

## 16.4 Contractual Security Requirements

Contracts may address:

- Security standards
- Data ownership
- Permitted data use
- Data location and transfers
- Encryption
- Access control
- Logging and evidence
- Vulnerability management
- Incident notification
- Cooperation during investigations
- Right to audit
- Subcontractor approval
- Business continuity
- Recovery objectives
- Service levels
- Data return and secure deletion
- Termination assistance
- Liability and insurance

### SLA, SLR, and MSA

- **Service-Level Requirement (SLR):** The customer's required service outcome.
- **Service-Level Agreement (SLA):** The agreed service targets and measures.
- **Master Service Agreement (MSA):** The broader legal and commercial terms governing the relationship.

### Exam Point

Define requirements before selecting the supplier, then include measurable obligations in the contract.

---

## 16.5 Right to Audit

A right-to-audit clause may allow the customer to:

- Review controls
- Obtain independent assurance reports
- Inspect relevant records
- Verify remediation
- Assess subcontractors within agreed limits

A right that is never exercised or supported by evidence provides limited assurance.

---

## 16.6 Software Supply-Chain Controls

Controls may include:

- Approved repositories
- Software composition analysis
- Software Bill of Materials (SBOM)
- Digital signatures and integrity checking
- Dependency monitoring
- Secure build pipelines
- Code review
- Vulnerability disclosure process
- Patch and update verification
- Reproducible builds where appropriate
- Restriction of untrusted packages

An SBOM improves visibility into software components but does not prove that the software is secure.

---

## 16.7 Supplier Concentration and Fourth-Party Risk

### Concentration Risk

Many critical services depend on the same provider, region, platform, or telecommunications path.

### Fourth-Party Risk

Your supplier depends on another organisation that affects your service or data.

### Example

Several suppliers rely on the same identity, cloud, or DNS provider. Failure of that shared service affects all of them.

Possible controls include:

- Geographic diversity
- Alternative providers
- Exit plans
- Local backups
- Portability testing
- Architecture diversification
- Contractual transparency

---

## 16.8 Supplier Exit Planning

Plan exit before the relationship begins.

Consider:

- Data export format
- Migration support
- Continued access during transition
- Secure data deletion
- Destruction certificates
- Account and integration removal
- Key rotation
- Knowledge transfer
- Licence transition
- Business continuity during migration

> **Exam trap:** Do not wait until the supplier fails or the contract ends to design an exit strategy.

---

# 17. Security Awareness, Training, and Education

## 17.1 Awareness

Awareness changes attention and behaviour across the workforce.

Examples:

- Phishing reminders
- Posters
- Short videos
- Newsletters
- Simulated phishing
- Login banners
- Security briefings

The goal is to help people recognise risk and respond appropriately.

## 17.2 Training

Training develops skills required for a role or task.

Examples:

- Service Desk identity-verification training
- Administrator privileged-access training
- Secure-coding training
- Incident-handler training
- Privacy training for HR staff

## 17.3 Education

Education develops broader professional understanding and long-term expertise.

Examples:

- University study
- CISSP preparation
- Professional certification programs
- Advanced security courses

### Easy Difference

- **Awareness:** Know that a risk exists and care about it.
- **Training:** Learn how to perform a task securely.
- **Education:** Develop broad and deep professional knowledge.

---

# 18. Building an Effective Learning Program

A learning program should be continuous and risk-based.

## 18.1 Program Lifecycle

1. Identify organisational risks and learning needs.
2. Identify audiences and role requirements.
3. Define measurable objectives.
4. Design relevant content and delivery methods.
5. Deliver awareness, training, and education.
6. Measure knowledge, behaviour, and risk outcomes.
7. Improve the program using results and changing risks.

## 18.2 Audience Segmentation

Different groups need different content:

- All staff
- Executives
- Service Desk personnel
- Privileged administrators
- Developers
- Finance staff
- HR staff
- Incident responders
- Contractors
- New starters

### Service Desk Example

Relevant training may include:

- Identity verification
- Social-engineering resistance
- Password and MFA reset procedures
- Privileged escalation paths
- Ticket documentation
- Privacy and need-to-know requirements
- Reporting suspicious requests

---

## 18.3 Training Timing

Training may be required:

- Before access is granted
- During onboarding
- At regular intervals
- Before privileged duties
- After role changes
- After policy changes
- Following incidents
- When new threats emerge
- After poor assessment results

Annual training alone may not address rapidly changing threats.

---

# 19. Measuring Learning Effectiveness

## 19.1 Activity Metrics

These show that the program operated:

- Completion rate
- Number of sessions
- Attendance
- Content delivered

Useful, but they do not prove safer behaviour.

## 19.2 Knowledge Metrics

Examples:

- Assessment scores
- Scenario-question results
- Knowledge retention
- Role-based competency checks

## 19.3 Behaviour Metrics

Examples:

- Phishing report rate
- Time taken to report suspicious messages
- Repeat simulation failures
- Correct handling of sensitive information
- Reduction in password-reset social-engineering success

## 19.4 Risk and Outcome Metrics

Examples:

- Reduction in incidents caused by human error
- Reduction in policy violations
- Fewer successful phishing events
- Faster incident reporting
- Reduced data exposure

> **Exam point:** Completion rates measure participation. Behaviour and risk outcomes better measure effectiveness.

## 19.5 Avoid Harmful Metrics

Metrics should not create a culture of fear or discourage reporting.

A strong program:

- Makes reporting easy
- Gives timely feedback
- Treats mistakes as learning opportunities where appropriate
- Applies fair and consistent consequences for deliberate violations
- Protects privacy

---

# 20. Domain 1 Final Condensed Review

## 20.1 Security Principles

- **Confidentiality:** Prevent unauthorised disclosure
- **Integrity:** Prevent unauthorised modification
- **Availability:** Ensure timely, reliable access
- **Authenticity:** Confirm something is genuine
- **Accountability:** Trace actions to an entity
- **Non-repudiation:** Prevent credible denial of an action
- **Privacy:** Handle personal information appropriately

## 20.2 Access and Organisational Principles

- **Least privilege:** Minimum permissions needed
- **Need to know:** Access only to required information
- **Separation of duties:** Divide sensitive responsibilities
- **Job rotation:** Periodically change duties
- **Mandatory vacation:** Require absence to expose hidden abuse and reduce dependency
- **Defence in depth:** Use multiple layers

## 20.3 Ethics Priority

1. Protect society, the common good, public trust, and infrastructure.
2. Act honourably, honestly, justly, responsibly, and legally.
3. Provide diligent and competent service to principals.
4. Advance and protect the profession.

## 20.4 Governance

- The board and senior leadership set direction and risk appetite.
- Management implements strategy and controls.
- Security advises, assesses, monitors, and reports.
- Authorised business owners accept risk.
- Data owners decide classification and access.
- Data custodians implement protection.

## 20.5 Documentation

```text
Policy -> Standard -> Procedure -> Guideline
```

- **Policy:** High-level management direction
- **Standard:** Specific mandatory requirement
- **Procedure:** Step-by-step instructions
- **Guideline:** Recommended practice
- **Baseline:** Minimum approved configuration

## 20.6 Legal and Investigations

- Criminal law addresses offences against society or the state.
- Civil law addresses disputes between parties.
- Regulatory requirements are enforced by authorised regulators.
- Contracts create obligations between parties.
- Preserve evidence and maintain chain of custody.
- Collect volatile evidence first when safe and authorised.
- Analyse a verified forensic copy where practical.
- Involve legal, HR, privacy, or law enforcement as appropriate.

## 20.7 Privacy

- Lawfulness, fairness, and transparency
- Purpose limitation
- Data minimisation
- Accuracy
- Storage limitation
- Integrity and confidentiality
- Accountability
- Controller decides why and how; processor processes on its behalf.

## 20.8 Risk Management

- **Inherent risk:** Before controls
- **Residual risk:** After controls
- **Secondary risk:** Created by the response
- **Risk responses:** Avoid, mitigate, transfer/share, accept
- **Risk owner:** Owns the business risk decision
- **Control owner:** Operates the control

### Quantitative Formulas

```text
SLE = Asset Value x Exposure Factor
ALE = SLE x Annualised Rate of Occurrence
Control benefit = ALE before control - ALE after control
```

## 20.9 Control Types

### By Implementation

- Administrative or managerial
- Technical or logical
- Physical

### By Function

- Preventive
- Detective
- Corrective
- Recovery
- Deterrent
- Compensating
- Directive

## 20.10 Business Continuity

- BIA determines critical processes, impact, dependencies, and recovery priorities.
- MTD is the maximum tolerable interruption.
- RTO is the target restoration time.
- RPO is acceptable data loss measured in time.
- WRT is time to validate and resume business operations.
- BCP maintains business functions.
- DRP restores supporting technology.

## 20.11 Personnel and Suppliers

- Screen according to role risk and law.
- Grant access using least privilege.
- Reassess all access during transfers.
- Remove access promptly at termination.
- Apply controls to employees, contractors, and suppliers.
- Assess suppliers before selection and throughout the lifecycle.
- Include measurable security requirements in contracts.
- Plan supplier exit early.

## 20.12 Learning

- **Awareness:** Attention and behaviour
- **Training:** Role or task skills
- **Education:** Broad professional knowledge
- Measure behaviour and risk outcomes, not only completion.

---

# 21. Domain 1 Exam Mindset

1. Protect human life and society first.
2. Think like a manager and risk adviser.
3. Understand business requirements before recommending technology.
4. Follow law, policy, authority, and due process.
5. Escalate to the appropriate decision-maker.
6. Do not exceed your authority.
7. Preserve evidence before making unnecessary changes.
8. Management owns business risk.
9. Owners decide; custodians implement.
10. Use layered, proportionate, cost-effective controls.
11. Consider people, process, technology, facilities, and suppliers.
12. Address root causes rather than symptoms.
13. Document decisions and review them periodically.
14. Compliance is not the same as complete security.
15. Security exists to support organisational objectives.

---

# 22. Mixed Domain 1 Practice Questions

## Question 1

A critical business process has an MTD of 12 hours, an RTO of 8 hours, and a WRT of 5 hours. What is the main concern?

A. The RPO is too short  
B. RTO plus WRT exceeds the MTD  
C. The data owner has not accepted risk  
D. The process requires a cold site

**Answer: B**

```text
RTO + WRT = 8 + 5 = 13 hours
```

The total recovery period exceeds the 12-hour MTD.

---

## Question 2

Which activity should normally occur first when developing recovery strategies?

A. Purchase a hot site  
B. Conduct a business impact analysis  
C. Restore the most expensive server  
D. Perform a full-interruption test

**Answer: B**

The BIA establishes business priorities, impacts, dependencies, and recovery requirements. Strategies should follow those requirements.

---

## Question 3

A recovered database is missing the last 20 minutes of transactions. Which objective directly addresses this loss?

A. RTO  
B. RPO  
C. MTD  
D. WRT

**Answer: B**

RPO defines the maximum acceptable data loss measured in time.

---

## Question 4

An employee transfers from finance to IT. What is the best access-control action?

A. Add IT access and retain all finance access  
B. Disable the employee permanently  
C. Review all access, remove unnecessary finance rights, and approve required IT rights  
D. Copy permissions from another IT employee

**Answer: C**

A transfer requires complete access review to prevent privilege creep and separation-of-duties conflicts.

---

## Question 5

Which action is most important during a high-risk involuntary termination?

A. Wait until the next monthly access review  
B. Coordinate immediate access removal through authorised HR, management, security, and IT processes  
C. Delete every file created by the employee  
D. Tell all staff before speaking with the employee

**Answer: B**

Access removal should be timely, coordinated, authorised, and aligned with safety, evidence, privacy, and employment requirements.

---

## Question 6

What is the best way to manage a critical cloud supplier's security risk?

A. Complete one questionnaire before contract signature  
B. Assume its certification transfers all risk  
C. Perform risk-based due diligence, establish contract requirements, monitor continuously, and maintain an exit plan  
D. Transfer accountability to the supplier

**Answer: C**

Supplier risk management continues throughout selection, contracting, operation, change, and termination.

---

## Question 7

Which contractual clause most directly gives a customer the ability to verify a supplier's controls?

A. Right-to-audit clause  
B. Marketing clause  
C. Force majeure clause  
D. Payment schedule

**Answer: A**

A right-to-audit clause can enable review of controls, evidence, and remediation under agreed conditions.

---

## Question 8

Which metric best demonstrates that phishing awareness is changing behaviour?

A. Number of posters displayed  
B. Percentage of employees enrolled  
C. Increase in accurate and timely phishing reports  
D. Total number of emails sent by the training team

**Answer: C**

Behavioural outcomes provide stronger evidence of effectiveness than activity or participation alone.

---

## Question 9

A security professional discovers evidence that may relate to a crime. What is the best action?

A. Personally determine guilt  
B. Publish the evidence internally  
C. Preserve evidence, follow approved procedures, and involve authorised legal or investigative personnel  
D. Rebuild the affected system immediately

**Answer: C**

The professional should preserve evidence, remain within authority, and involve the appropriate specialists.

---

## Question 10

Who should classify business information?

A. Data owner  
B. Data custodian  
C. Network engineer  
D. External auditor

**Answer: A**

The data owner determines classification and protection requirements. The custodian implements them.

---

## Question 11

A company stops offering a service because it cannot reduce its legal and security exposure to an acceptable level. Which risk response is this?

A. Transfer  
B. Avoidance  
C. Acceptance  
D. Detection

**Answer: B**

Stopping the activity that creates the risk is risk avoidance.

---

## Question 12

A $400,000 asset has an exposure factor of 25%. What is the SLE?

A. $25,000  
B. $75,000  
C. $100,000  
D. $400,000

**Answer: C**

```text
SLE = AV x EF
SLE = $400,000 x 0.25
SLE = $100,000
```

---

## Question 13

The SLE is $100,000 and the expected event frequency is once every four years. What is the ALE?

A. $25,000  
B. $40,000  
C. $100,000  
D. $400,000

**Answer: A**

```text
ARO = 1 / 4 = 0.25
ALE = $100,000 x 0.25
ALE = $25,000
```

---

## Question 14

Which ISC2 ethical duty has the highest priority?

A. Protect the employer's reputation  
B. Advance the profession  
C. Protect society, the common good, public trust, and infrastructure  
D. Reduce the security budget

**Answer: C**

Protection of society and the common good is the first ethical canon.

---

## Question 15

A manager wants every employee to receive the same highly intrusive background check. What is the best response?

A. Apply it immediately because more screening is always better  
B. Use lawful, proportionate, role-based screening aligned with risk  
C. Publish screening results to managers  
D. Skip screening for privileged roles

**Answer: B**

Screening should be lawful, relevant, proportionate, consistently applied, and based on role sensitivity.

---

## Question 16

An organisation uses two internet links, but both travel through the same physical conduit. What is the primary concern?

A. Excessive training  
B. Common-mode failure  
C. Intellectual-property loss  
D. Data minimisation

**Answer: B**

A single physical event could disrupt both links, so the apparent redundancy may not provide true resilience.

---

## Question 17

Which exercise provides the highest realism and operational risk?

A. Checklist review  
B. Tabletop exercise  
C. Parallel test  
D. Full-interruption test

**Answer: D**

A full-interruption test stops production processing and relies on the recovery environment, making it highly realistic but risky.

---

## Question 18

A software supplier provides an SBOM. What does it primarily improve?

A. Proof that the software has no vulnerabilities  
B. Visibility into software components and dependencies  
C. Transfer of all supplier risk  
D. Physical security at the supplier

**Answer: B**

An SBOM improves component visibility. It does not prove that the product is secure.

---

## Question 19

Which document gives specific mandatory authentication requirements that support a high-level policy?

A. Guideline  
B. Standard  
C. Procedure  
D. Risk register

**Answer: B**

A standard defines specific, mandatory, and measurable requirements.

---

## Question 20

What is the most important outcome of a security learning program?

A. Every slide was viewed  
B. The annual budget was fully spent  
C. Risk-reducing knowledge and behaviour improved  
D. All employees received identical content

**Answer: C**

The program should reduce risk by improving knowledge, skills, decisions, and behaviour.

---

# 23. Final Domain 1 Rapid Recall

Answer these without looking back:

1. What is the difference between confidentiality and privacy?
2. Who accepts business risk?
3. Who classifies information?
4. What is residual risk?
5. What are the four main risk responses?
6. What is the formula for SLE?
7. What is the formula for ALE?
8. What is the difference between due care and due diligence?
9. What is chain of custody?
10. Which evidence is normally collected first?
11. What is the difference between policy and standard?
12. What is the difference between BCP and DRP?
13. What is the difference between RTO and RPO?
14. Why must transfers trigger access review?
15. Why is supplier monitoring continuous?
16. What is the difference between awareness, training, and education?
17. Which ISC2 ethics canon takes priority?
18. What does separation of duties prevent?
19. What is the difference between a data owner and custodian?
20. Why is compliance not the same as security?

---

# References

1. ISC2, [CISSP Certification Exam Outline](https://www.isc2.org/certifications/cissp/cissp-certification-exam-outline), effective April 15, 2024.
2. ISC2, [CISSP Certification Exam Outline PDF](https://assets.ctfassets.net/82ripq7fjls2/2D57uYE9A4MhPVAV3SBJLk/8389a0d0386c5c2814b52df9ab1603a8/CISSP-Exam-Outline-April-2024-English.pdf).
3. NIST, [SP 800-34 Rev. 1: Contingency Planning Guide for Federal Information Systems](https://csrc.nist.gov/pubs/sp/800/34/r1/upd1/final).
4. NIST, [SP 800-161 Rev. 1 Update 1: Cybersecurity Supply Chain Risk Management Practices for Systems and Organizations](https://csrc.nist.gov/pubs/sp/800/161/r1/upd1/final).
5. NIST, [SP 800-50 Rev. 1: Building a Cybersecurity and Privacy Learning Program](https://csrc.nist.gov/pubs/sp/800/50/r1/final).
6. NIST, [SP 800-30 Rev. 1: Guide for Conducting Risk Assessments](https://csrc.nist.gov/pubs/sp/800/30/r1/final).
7. ISC2, [Code of Ethics](https://www.isc2.org/ethics).

---

# Domain 1 Completion

You have now covered:

- Professional ethics
- Security concepts and governance
- Legal, regulatory, privacy, and contractual requirements
- Investigation types and evidence
- Security policies and documentation
- Risk assessment and risk treatment
- Threat modelling
- Business continuity
- Personnel security
- Supply-chain risk management
- Awareness, training, and education




