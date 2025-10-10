## Compliance assessment
## Lab scenario introduction
You are Allan Deyoung, a member of the IT department at Contoso Ltd. You have recently been transferred to the IT Security division. Your new role is to evaluate Contoso's Zero Trust readiness and develop an action plan to establish a Zero Trust initiative, following the Zero Trust pillars. Contoso is a large multinational corporation with a global presence in multiple industries. The company has a large cloud footprint and a hybrid infrastructure. Contoso's security operations center (SOC) is responsible for monitoring and responding to security incidents across the enterprise. The SOC is staffed with security analysts, security engineers, and network engineers. The SOC uses Microsoft Sentinel as its security information and event management (SIEM) solution. The SOC has a log analytics workspace that is used to collect and analyze security logs from across the enterprise.

Contoso Ltd. is expanding into Europe to increase sales, but is having trouble satisfying customer IT security demands. Customers want Contoso to maintain a secure environment to facilitate safe collaboration and minimize the risk of data leaks and compromised company assets. Many customers require evidence of well-established IT business processes and a robust security framework, which is often in the form of an ISO-27001 certification. To address this, Contoso has decided to hire an external audit firm to conduct the ISO-27001 Audit and obtain the certification. It is necessary to assess the current organizational stance and develop an action plan to meet the ISO-27001 requirements. As the company's cyber security architect, you are tasked with identifying the existing gaps and assigning specific tasks to people within the organization to resolve them.

# Part 1: Design a solution (required)
In this task you will design a concept to address the challenges Contoso Ltd. is facing.

## Design Approach
To address the described issue effectively, it's crucial to grasp ISO 27001 thoroughly. Assessing Contoso's setup against ISO 27001 standards is essential, highlighting any inconsistencies for analysis. This process can be time-consuming due to the complexity of both the M365 environment and the 27001 regulations. However, the Microsoft Compliance Manager assessment streamlines this analysis.

Compliance Manager assessments from Microsoft are groupings of controls from specific regulations, standards, or policies. They help you ensure that your organization meets the requirements of various standards, regulations, or laws. For instance, completing all actions within an assessment may align your Microsoft 365 settings with ISO 27001 requirements. Assessments encompass several components and provide templates for over 360 regulations, offering the necessary controls and steps to assess your compliance effectively.

Proposed Solution
Requirement	Solution	Action plan
Comparison of the M365 environment with the ISO 27001 regulations	Microsoft Purview Compliance Manager	Create an assessment
Create an action plan	Microsoft Purview Compliance Manager	Assign tasks to a technical engineer
Part 2: Implement the solution (optional)
# Task 1: Conduct an ISO-27001 assessment
Your first step is to analyse the company's current environment. You carry out a compliance assessment to analyse the extent to which Contoso's environment complies with the ISO-27001 regulations.

Sign-in to the Microsoft Purview Compliance portal https://purview.microsoft.com/ as Allan Deyoung using his administrator account MOD Administrator

Admin username: admin@WWLx596361.onmicrosoft.com

Admin password: P340)qBw7=mT9uB~2)EhpwR4(~}J}E8n

If you're asked to setup multifactor authentication, follow the instructions.

You're taken to the new Microsoft Purview portal landing page. Select the box next to the statement, I agree to the terms of data flow disclosure and Privacy Statements, then select Get started.

From the left navigation panel, select Solutions then select Compliance Manager. Alternatively, from the main window you can select the View all solutions tile, then select the Compliance Manager tile listed under Risk & Compliance.

<img width="1907" height="936" alt="image" src="https://github.com/user-attachments/assets/e1929c66-479c-49e0-bfef-aa2913b49592" />


From the Compliance Manager panel on the left, select Assessments.

From the Assessments window, select + Add assessment.

<img width="1439" height="924" alt="image" src="https://github.com/user-attachments/assets/309ddce2-f627-4efb-addf-5fe466f0fb6a" />


From the Base your assessment on a regulation window, select Select regulation.

In the search text box enter ISO/IEC 27001:2022, then select the regulation then select Save and then select Next.
<img width="1444" height="918" alt="image" src="https://github.com/user-attachments/assets/c1c12fc3-afde-4871-9131-b4aa579b60c3" />

On the Add name and group page, in the text box Assessment name , enter ISO-27001 Audit assessment. Leave the Assessment group setting to Use existing group with the Default group, then select Next.
<img width="1452" height="916" alt="image" src="https://github.com/user-attachments/assets/e8bb0913-6876-4435-9b95-264ed4b1e358" />

On the Select services page, the Microsoft 365 service should already be listed. If not, select Select services and select Microsoft 365 and select Add. Select Next.
<img width="1454" height="924" alt="image" src="https://github.com/user-attachments/assets/3ce3bca4-b489-47e3-be83-56cc935167e4" />

On the Review and finish page, select Create the assessment. It will take a few seconds to create the assessment, then select Done .
<img width="888" height="723" alt="image" src="https://github.com/user-attachments/assets/e3850f64-b050-47a7-8521-a82ef7ece33d" />

You should now be on the newly created ISO-27001 Audit assessment page.

Leave this browser tab open for the next task.

You have successfully created an assessment based on ISO-27001.

Task 2: Assign tasks to a technical engineer
The results of the assessment shows you different areas and actions that are essential to comply with ISO-27011 regulations. You will investigate improvement actions and assign a task to a technical engineer.

You should still be on the page for the assessment you just created, ISO-27001 Audit assessment. If not, navigate to the Microsoft Purview portal https://purview.microsoft.com/ and from there select Solutions > Compliance Manager > Assessments > ISO-27001 Audit assessment
From the ISO-27001 Audit assessment page, select Your improvement actions.
<img width="1448" height="920" alt="image" src="https://github.com/user-attachments/assets/1067b7d5-ef7d-404d-b104-caa187990006" />

Set the filter for Control family to Physical controls.
<img width="1362" height="780" alt="image" src="https://github.com/user-attachments/assets/590206ef-fbe6-4497-8fe0-dc77e307138b" />

Select the box next to Improvement action to select all shown improvement actions, then select Assign to user (listed above the filters options).
<img width="1105" height="704" alt="image" src="https://github.com/user-attachments/assets/456331b1-c796-489d-bf63-55fdfceb1197" />

In the new Assign improvement actions window, in the search text box enter Nestor and press enter.
Select the user and select Assign.
<img width="1112" height="767" alt="image" src="https://github.com/user-attachments/assets/2e9b82f8-31f9-42e1-beeb-4b0b646b520c" />

Keep this browser tab open for the next task.
You have successfully viewed and assigned an improvement action to a technical engineer

Task 3: Provide access to a technical engineer for the improvement actions
Users need access to view the tasks assigned to them. You will grant Nestor Wilke access to the assessment.

You should still be on the Your improvement actions tab for ISO-27001 Audit assessment page. If not, navigate to the Microsoft Purview portal https://purview.microsoft.com/ and from there select Solutions > Compliance Manager > Assessments > ISO-27001 Audit assessment > Your improvement actions.
From the upper right corner of the ISO/IEC 27001:Assessment page, select Manage user access.
<img width="1437" height="829" alt="image" src="https://github.com/user-attachments/assets/984b7892-dcf0-4fea-b02f-6e2e3881feaa" />

From the new Manage user access window, select the Assessor tab and select Add assessors.
<img width="854" height="768" alt="image" src="https://github.com/user-attachments/assets/39a1f84c-17ce-4b1d-8442-230e9abf6e70" />

In the Search for users text box, enter Nestor and press enter.
Select the user and then select Apply, then select Save.
<img width="792" height="778" alt="image" src="https://github.com/user-attachments/assets/ce181788-4d61-40c9-9c0b-f2b8314a8d28" />

You have successfully granted Nestor Wilke the Assessor role for this assessment.
<img width="595" height="722" alt="image" src="https://github.com/user-attachments/assets/80038cb9-b331-4477-a19f-146a7b91f741" />

You can now exit out of the Microsoft Purview portal by closing the browser tab.
You have successfully granted Nestor Wilke the Assessor role for this assessment.

# Data classification framework
You have been assigned the task of structuring data classification for Contoso Ltd. in preparation for an ISO-27001:2022 audit. The goal is to establish a robust framework that is crucial for ensuring effective data protection against leakage, deletion, and loss. Your role involves integrating a new project ID system for construction projects within the company. To comply with government regulations, all documents that contain a certain project-ID must be kept for 5 years.

You were given following examples to classify Project IDs:

Project ID
PAR-1023-DA
BER-0822-AB
Rom-0419-bm
sTr*1223-Se
BaR#0418-ag
dui0522-in
Part 1: Design a solution (required)
In this task you will design a concept to address the issues Contoso Ltd. is facing.

Design Approach
This introduction of a new project ID necessitates the creation of a corresponding sensitive information type (SIT), which requires the development of a custom pattern incorporating a regular expression. Subsequently, this SIT can then be used to devise a retention label and an associated auto-labeling policy.

Proposed Solution
Requirement	Solution	Action plan
Identify documents containing project IDs	Microsoft Purview Information Protection	Create a custom sensitive information type
Comply with government regulation to retain data for 5 years	Microsoft Purview Data Lifecycle Management	Deploy a retention policy
Part 2: Implement the solution (optional)
Task 1: Create a custom sensitive information Type
You will create a custom sensitive information type to detect documents that contain project IDs.

Sign-in to the Microsoft Purview Compliance portal https://purview.microsoft.com/ as Allan Deyoung using his administrator account MOD Administrator

Admin username: admin@WWLx596361.onmicrosoft.com

Admin password: P340)qBw7=mT9uB~2)EhpwR4(~}J}E8n

If you're asked to setup multifactor authentication, follow the instructions.

You're taken to the new Microsoft Purview portal landing page. Select the box next to the statement, I agree to the terms of data flow disclosure and Privacy Statements, then select Get started.

From the left navigation panel, select Solutions then select Information Protection. Alternatively, from the main window you can select the View all solutions tile, then select the Information Protection tile listed under Data Security.

Expand Classifiers then select Sensitive info types.

From the Sensitive info types page, select Create sensitive info Type.
<img width="1450" height="913" alt="image" src="https://github.com/user-attachments/assets/a102fbb8-cc6a-4153-abbf-00658505fb06" />


On the Name your sensitive info type page enter following information:

Name: Project Identification Number
Description: Identifies project identification number
Select Next.
<img width="1448" height="905" alt="image" src="https://github.com/user-attachments/assets/32467302-1876-4ced-8057-a6887ce35157" />


On the Define patterns for this sensitive info type page, select Create pattern.

On the New pattern page, select Add primary element and then Regular expression.
<img width="1446" height="914" alt="image" src="https://github.com/user-attachments/assets/eb43b0c1-7550-434f-bc3c-c09d0da6db0b" />
<img width="647" height="787" alt="image" src="https://github.com/user-attachments/assets/6aa724c2-fc05-4cec-b234-f342abef534d" />


On the Add a regular expression page in the ID text box, type ProjectID.

In the text box Regular expression enter the following expression:

[a-zA-Z]{3}(\W)?[\d]{4}(\W)?[a-zA-Z]{2}

<img width="643" height="727" alt="image" src="https://github.com/user-attachments/assets/d6dd1e70-2118-4fdd-9930-1ffc5f19c53a" />


The provided regular expression is crafted to identify a sequence characterized by three letters, followed by potentially optional non-word characters, then four digits, followed once again by optional non-word characters, and ultimately ending with two letters. The presence of non-word characters is discretionary, and the overarching pattern is intended to correspond to a specific format or structure within the data.

Under the Regular expression text box, select String match then select Done.

On the New pattern window, for the Confidence level, select High confidence, select Create, then select Next.
<img width="647" height="726" alt="image" src="https://github.com/user-attachments/assets/d7df8851-a39c-4be1-897e-a0e89b547396" />
<img width="1447" height="837" alt="image" src="https://github.com/user-attachments/assets/ca3a0113-8b77-4188-81dc-54e6d37a9e19" />


On the Choose the recommended confidence level to show in compliance policies page, leave the setting to High confidence level, then select Next.
<img width="1431" height="900" alt="image" src="https://github.com/user-attachments/assets/0d145431-92ed-4812-8765-ce0a8885ff03" />

On the Review settings and finish, verify the settings, select Create, then when the policy is created select Done.
<img width="1438" height="911" alt="image" src="https://github.com/user-attachments/assets/2ce47502-316b-4161-aa85-78a8019a1341" />

You have successfully created a new sensitive information type to identify project IDs.

Task 2: Create a retention label
You will create a retention label to retain all documents related to construction projects for 5 years.

You should still be logged into the Microsoft Purview portal https://purview.microsoft.com/.

From the left navigation panel, select Solutions then select Data Lifecycle Management.

Select Retention Labels.

On the Labels page, select Create a label.
<img width="1443" height="899" alt="image" src="https://github.com/user-attachments/assets/7165b551-78be-4de9-b49f-81402b912004" />


On the Name your retention label page, enter the following information:

Name: Retention of Construction Project Documentation
Description for users: The construction project documentation Retention Policy dictates the retention of all project-related documents for five years following project completion.
Description for admins: This label is applied to retain construction project documents for a period of five years, and it is utilized in conjunction with auto-labeling.
Select Next
<img width="1442" height="908" alt="image" src="https://github.com/user-attachments/assets/db0e0780-bf5d-4a8c-88a4-aba0361b05f4" />


On the Define label settings page, select Retain items forever or for a specific period and select Next.
<img width="1440" height="841" alt="image" src="https://github.com/user-attachments/assets/9dd908ac-5f3c-4f63-b303-ee81fa0b1479" />


On the Define the retention period page, enter the following information:

Retain items for: 5 years
Start the retention period based on: When items were created
Select Next.
<img width="1444" height="906" alt="image" src="https://github.com/user-attachments/assets/f2e8ae76-2170-440c-9661-b5be621c3dc1" />


On the Choose what happens after retention period page, select Deactivate retention settings then select Next.
<img width="1435" height="918" alt="image" src="https://github.com/user-attachments/assets/332bfe41-36cd-4636-aee2-abaf9f9b3ada" />

On the Review and finish page, review the settings, select Create label.
<img width="1446" height="919" alt="image" src="https://github.com/user-attachments/assets/a068fc09-f973-418e-b71d-3fcb8785b217" />

On the Your retention label is created page, you have several options. Select Do Nothing then select Done. You will create the auto-apply policy in the next task. Selecting Auto-apply this label to a specific type of content, walks you through the steps in the subsequent task, starting on step 4.
<img width="1443" height="833" alt="image" src="https://github.com/user-attachments/assets/7f91e6cc-ff87-4ff1-8592-1558be852349" />

Keep the browser tab open for the next task.

You have successfully created a retention label with a retention period of 5 years.

# Task 3: Auto-apply the retention label
You will use the sensitive information type you created in this exercise to auto-apply the retention label.

You should still be logged into the Data Lifecycle Management solution in the Microsoft Purview portal. If not, navigate to https://purview.microsoft.com/ > Solutions > Data Lifecycle Management.

On the Data lifecycle management pane, select Label policies.
<img width="1444" height="956" alt="image" src="https://github.com/user-attachments/assets/4f85428e-1b70-4e67-97a9-14362da50bb5" />


On the Label policies blade, select Auto-apply a label.
<img width="1444" height="956" alt="image" src="https://github.com/user-attachments/assets/d792a0cb-c8d9-4af7-8ae8-acc96683c8cc" />


On the Let´s get started page, enter the following information:

Name: Label documents related to construction projects
Description: This policy automatically enforces the "Construction Project Documentation Retention" policy on any document pertaining to construction projects.
Select Next.
<img width="1442" height="861" alt="image" src="https://github.com/user-attachments/assets/6198ee42-6fd2-4495-baa8-09a7eebc1319" />


On the Choose the type of content you want to apply this label to page, select Apply label to content that contains sensitive info and select Next.
<img width="1435" height="829" alt="image" src="https://github.com/user-attachments/assets/02512de6-2814-4b2b-a589-072380f8aa97" />

On the Content that contains sensitive info page, select Custom, then select Custom policy and select Next.
<img width="1430" height="785" alt="image" src="https://github.com/user-attachments/assets/7c81cfb0-ce1c-4cbb-8c0d-f17fddb45b6e" />

On the Define content that contains sensitive info, specify the following settings:

Group name: Project ID lookup
Under Sensitive info types, select Add and select Sensitive info types.
<img width="1438" height="833" alt="image" src="https://github.com/user-attachments/assets/ba740ad9-0254-4789-adab-0a1a124a52f3" />

In the Sensitive info types page, in the search field, enter the name of the label you created Project Identification number and press return. Select Project Identification number then select Add.
<img width="1014" height="786" alt="image" src="https://github.com/user-attachments/assets/44abea56-a6e8-4c32-8f2c-4713795f0005" />

Leave the Confidence level to High confidence.
Leave the instance count as 1 to Any.
Select Next
<img width="1014" height="676" alt="image" src="https://github.com/user-attachments/assets/b5ff02c6-e583-4917-be41-53bec1d6a89d" />

On the Policy scope page, leave the Admin Units setting to Full directory and select Next.
<img width="1403" height="779" alt="image" src="https://github.com/user-attachments/assets/a92b4717-6784-4983-9182-b34baa75b77d" />


On the Choose the type of retention policy to create page, select Static and select Next.
<img width="1436" height="906" alt="image" src="https://github.com/user-attachments/assets/9858c91e-c2ba-4ead-a9b4-12968330b9dd" />


On the Choose where to automatically apply the label, verify the status is set to On for all available locations then select Next.
<img width="1438" height="860" alt="image" src="https://github.com/user-attachments/assets/5297e606-b954-4096-81e7-5842e2c13f37" />

On the Choose a label to auto-apply, select Add label, then select the label Retention of construction project documentation you created in teh previous task, select Add, then select Next.
<img width="1441" height="902" alt="image" src="https://github.com/user-attachments/assets/3c23c9b3-35a8-4d93-9f4d-75399fd2cdb2" />
<img width="1439" height="868" alt="image" src="https://github.com/user-attachments/assets/7692904c-10f4-48c8-af79-5681af12415e" />

In the Decide whether to test or run your policy, select Turn on policy then select Next.
<img width="1435" height="828" alt="image" src="https://github.com/user-attachments/assets/53d13404-0f18-4291-825d-7ffadfcac23a" />

On the Review and finish page, review all your settings, select Submit, then select Done.
<img width="1439" height="832" alt="image" src="https://github.com/user-attachments/assets/73794d0e-544e-485b-81d4-c6edc7dd2273" />

<img width="1437" height="847" alt="image" src="https://github.com/user-attachments/assets/15b44dd8-b326-416f-9460-5101da6813c2" />

You have successfully published and auto-applied the retention label to all documents that contain project IDs.


# Retention policies
The German government recently modified specific laws governing retention periods for companies. One significant change is that all financial documents must now be retained for 11 years, instead of the previous requirement of 10 years. Another change is that commercial or business correspondence, including copies of dispatched commercial or business correspondence, can now be retained for 5 years instead of 7. Currently, your company adheres to a retention policy that maintains all documents for a duration of 7 years. However, Contoso Ltd. has encountered challenges in recent years due to the accumulation of a large volume of data in its environment. This has led to increased maintenance costs and significant storage space consumption. Your assignment is to optimize the retention policy in your company to comply with legal regulations while minimizing data storage requirements. The company policy dictates that all data must be retained for at least five years after creation, in strict adherence to all applicable laws governing data retention.

# Part 1: Design a solution (required)
In this task you will design a concept to address the challenges Contoso Ltd. is facing.

# Design Approach
The initial step involves analyzing the requirements based on the described issue and understanding the objectives

Based on the provided use-case, the following requirements can be outlined:

Retain all financial data for 11 years
Retain all business correspondence for 5 years
Minimization of data storage overhead
In the second step examinine Contoso Ltd.'s existing environment. Contoso has several solutions in place to retain it´s data for a specific time. Your task is to analyse current setup and decide whether they meet the legal requirements.

The third phase involves crafting the solution concept. After thorough investigation, it becomes clear that none of the existing policies fulfill the specified criteria. Therefore, a new set of policies is essential.

Based on above scenario, Microsoft Purview Data Lifecycle Management can be used to retain the data adequately.

Proposed Solution
| Requirement |	Solution | Action plan|
| Retain all financial data for 11 years | Microsoft Purview Data Lifecycle Management |	Create and auto-apply a retention label |
| Retain all business correspondence for 5 years	| Microsoft Purview Data Lifecycle Management	| Deploy a retention policy |

# Part 2: Implement the solution (optional)
## Task 1: Analyze the current structure of the retention policy
In this task, you will familiarize yourself with your company's existing retention policy. You will have a look into different retention policies, labels and label policies. You will use the Security & Compliance PowerShell module and view the existing policies. You will investigate the current set-up and decide whether the existing retention policies are enough for Contoso Ltd. to meet the legal requirements.

You should have already installed the Exchange Online PowerShell module. If the module is missing follow the instructions for installing the module.

Open an elevated Windows PowerShell window by selecting the Windows button with the right mouse button and then select Terminal (Admin).

Confirm the User Account Control window with Yes.

Enter the following cmdlet to install the latest Exchange Online PowerShell module version:

powershell
TypeCopy
Install-Module ExchangeOnlineManagement
Confirm the untrusted repository security dialog with Y for Yes and press Enter. This process may take some time to complete.
<img width="1436" height="819" alt="image" src="https://github.com/user-attachments/assets/186569fe-5d31-4aa6-82a3-ccbc55ded2c3" />

Enter the following cmdlet to connect to Security & Compliance PowerShell then when prompted, login with your MOD administrator credentials:
<img width="1441" height="938" alt="image" src="https://github.com/user-attachments/assets/3062f5de-88d9-40cb-88f4-11e3049ef178" />
<img width="1284" height="864" alt="image" src="https://github.com/user-attachments/assets/3d72ef08-08dd-41e6-8b18-ae1f70a520ef" />

powershell
TypeCopy
Connect-IPPSSession
Enter the following cmdlet to view existing retention policies and settings:
<img width="1436" height="819" alt="image" src="https://github.com/user-attachments/assets/5ea984d7-8e3f-4a46-a078-63b78dc60356" />


powershell
TypeCopy
 Get-ComplianceTag | Format-Table -Auto Name,Priority,RetentionAction,RetentionDuration,Workload
Take some time to assess the resulting table.
<img width="1436" height="819" alt="image" src="https://github.com/user-attachments/assets/43aeaed3-1466-437f-9483-045c4f117555" />

You can also access the Microsoft Purview Compliance portal to view retention policies but you have to look into each policy one by one instead of getting an overview over all your policies at a glance.

You successfully viewed the existing labels and settings to decide whether they meet the legal requirements.

# Task 2: Create a retention policy
You have effectively assessed Contoso Ltd.'s retention policies, uncovering an outdated setup that fails to meet legal standards. Your investigation revealed five retention policies sharing identical settings, with only one retention label applied, none of which adequately address legal requirements.

Your plan involves implementing a new company-wide retention policy with a five-year retention period. Following this timeframe, data may be retained but is not mandatory for deletion. This adjustment satisfies the legal requirements for minimum retention periods and reduces data overhead.

Sign-in to the Microsoft Purview Compliance portal https://purview.microsoft.com/ as Allan Deyoung using his administrator account MOD Administrator

Admin username: admin@WWLx596361.onmicrosoft.com

Admin password: P340)qBw7=mT9uB~2)EhpwR4(~}J}E8n

If you're asked to setup multifactor authentication, follow the instructions.

You're taken to the new Microsoft Purview portal landing page. Select the box next to the statement, I agree to the terms of data flow disclosure and Privacy Statements, then select Get started.

From the left navigation panel, select Solutions then select Data Lifecycle Management. Alternatively, from the main window you can select the View all solutions tile, then select the *Data Lifecycle Management tile listed under Data Governance.

On the Data lifecycle management pane, expand Policies and select Retention policies.

On the Retention policies page select + New retention policy.
<img width="1450" height="915" alt="image" src="https://github.com/user-attachments/assets/26a482a1-f8a5-41cc-b018-50af0806c5cf" />


On the Name your retention policy page enter the following information:

Name: General retention policy
Description: This policy is the default retention policy for the entire organization. All data must be retained for at least 5 years.
Select Next.
<img width="1445" height="910" alt="image" src="https://github.com/user-attachments/assets/0fc21519-8041-49c7-a8a4-6735bf02a77f" />


On the Policy Scope page select Next.
<img width="1449" height="925" alt="image" src="https://github.com/user-attachments/assets/b7ed4602-fc01-4615-98aa-881edb75f11e" />


On the Choose the type of retention policy to create page select Static and select Next.
<img width="1424" height="859" alt="image" src="https://github.com/user-attachments/assets/7ea2d314-ef99-44ce-a837-21083187ec55" />


On the Choose where to apply this policy page enable following locations:

Exchange mailboxes
SharePoint classic and communication sites
OneDrive accounts
Microsoft 365 Group mailboxes & sites
Select Next.
<img width="1428" height="784" alt="image" src="https://github.com/user-attachments/assets/86cfc8c3-2a21-438b-b5cd-bb14b1c17cf8" />


On the Decide if you want to retain content, delete it or both page enter the following settings:

Retain items for a specific period: 5 years
Start the retention period based on: When items were cerated
At the end of the retention period: Do nothing
Select Next.
<img width="1439" height="897" alt="image" src="https://github.com/user-attachments/assets/f7144c86-7aa6-4474-83a1-b617d1ef4757" />


On the Review and finish page select Submit, then select Done.

You have successfully created a retention policy. You can now delete all remaining retention policies as they do not meet the company's requirements.

Task 3: Create a retention label
To adhere to german regulations you will now create a retention label with a retention period of 10 years and auto-apply it to all documents that contain german financial data.

You should still be logged into the Data Lifecycle Management solution in the Microsoft Purview portal. If not, navigate to https://purview.microsoft.com/ > Solutions > Data Lifecycle Management.

On the Data lifecycle management pane, select Retention labels.

On the Labels page, select + Create a label.
<img width="1449" height="913" alt="image" src="https://github.com/user-attachments/assets/3c2e661a-1f2a-42e4-8c5f-5ea1e5d6f93f" />


On the Name your retention label page enter the following information:

Name: German financial data
Description for users: This label retains all German financial data for 10 years.
Description for admins: The label retains all financial data for 10 years and it is automatically applied.
Select Next.
<img width="1436" height="911" alt="image" src="https://github.com/user-attachments/assets/5fffee0b-34d6-4d5a-bf30-bb25fc903f8c" />


On the Define label settings page select Enforce actions after a specific period and select Next.
<img width="1446" height="913" alt="image" src="https://github.com/user-attachments/assets/1fa1b858-17f5-446b-a72b-bca89ae7b9aa" />


On the Define the period page enter the following information:

How long is the period?: 10 years
When should the period begin?: When items were created
Select Next.
<img width="1447" height="903" alt="image" src="https://github.com/user-attachments/assets/7af5805f-de54-46ee-a8bf-697d9092c344" />


On the Choose what happens after the period page select Delete items automatically. Click Next.
<img width="1413" height="857" alt="image" src="https://github.com/user-attachments/assets/c2be5dfd-91cc-4cb9-87b4-aa71f67055ac" />


On the Review and finish page select Create label.
<img width="1439" height="908" alt="image" src="https://github.com/user-attachments/assets/d4187813-c077-49c8-bc8d-cc4f17b892c5" />


On the Your retention label is created page select Auto-apply this label to a specific type of content and select Done.
<img width="1441" height="915" alt="image" src="https://github.com/user-attachments/assets/84a6dbc0-915c-4ac6-ad4b-e749d0de88d8" />

On the Let´s get started page enter the following information:

Name: Automatically retain all German financial data for 10 years
Descriptions: This policy auto-applies the label German financial data.
Select Next.
<img width="1447" height="904" alt="image" src="https://github.com/user-attachments/assets/94608625-1960-470f-8b0e-d53c6e61fbc2" />


On the Choose the type of content you want to apply this label to page select Apply label to content that contains sensitive info and select Next.
<img width="1430" height="833" alt="image" src="https://github.com/user-attachments/assets/f97cde48-0d0c-47d1-a712-350c91b57932" />

On the Content that contains sensitive info page set the filter to Germany and select Financial and then Germany Financial Data then select Next.
<img width="1444" height="843" alt="image" src="https://github.com/user-attachments/assets/64a0a82f-08db-4867-94d8-81edb3c607d3" />

On the Define content that contains sensitive info page, leave all existing settings (no change) and select Next.
<img width="1439" height="844" alt="image" src="https://github.com/user-attachments/assets/d527da70-6200-44f1-b741-552bcea013d0" />

On the Policy scope page select Next.
<img width="1437" height="840" alt="image" src="https://github.com/user-attachments/assets/d644333c-640a-48d9-a54f-6f027066df9e" />


On the Choose the type of retention policy to create, page select Static.
<img width="1436" height="828" alt="image" src="https://github.com/user-attachments/assets/cbc9519e-3c56-4fcc-a92b-2113e1c1ea9c" />

On the Choose where to automatically apply the label page enable following locations:

Exchange mailboxes
SharePoint classic and communication sites
OneDrive accounts
Microsoft 365 Group mailboxes & sites
Select Next.
<img width="1431" height="779" alt="image" src="https://github.com/user-attachments/assets/cc1a7909-b255-4967-b9c2-6fca69d1c1b3" />


On the Choose a label to auto-apply page make sure that the German Financial Data label is already present. Otherwise add it using the + Add label button. Select Next.
<img width="1442" height="911" alt="image" src="https://github.com/user-attachments/assets/2d2e8703-c095-4bc2-9545-d0f9c8493925" />

On the Decide whether to test or run your policy page select Turn on policy then select Next.

On the Review and finish page select Submit then select Done.
<img width="1437" height="830" alt="image" src="https://github.com/user-attachments/assets/8dd294e3-75ff-47a8-b6d3-284cd21afbd1" />

You have successfully created and auto-applied a retention label.

Congratulations
You have successfully completed this lab. Click End to mark the lab as Complete.



