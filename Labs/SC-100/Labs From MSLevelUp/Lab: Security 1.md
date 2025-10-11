# Security Operations Center
Exercise Overview
Contoso has a Security Operations Center (SOC) that monitors and responds to security incidents across the enterprise. The SOC is staffed with security analysts, security engineers, and network engineers. The SOC has decided to use Microsoft Sentinel as their Security Information and Event Management (SIEM) solution. To collect and analyze security logs from across the enterprise, the SOC has a log analytics workspace. The SOC has a requirement to secure access to the log analytics workspace based on the principle of least privilege. The SOC has two different roles, security analyst and security engineer, with different permission requirements. The network team has a requirement to access only the Cisco Umbrella logs.

Part 1: Design a solution (required)
In this task, you'll design a concept for monitoring and responding to security events with specific access permissions for Contoso's Security Operations Center.

Design approach
The initial step involves analyzing the requirements based on the described scenario, understanding the objectives, and defining the requirements.

Based on the provided use case, the following requirements can be outlined:

Deploy SIEM/SOAR Solution
Limit access to specific SOC roles
Create a dashboard with custom views for incidents and their alerts
In this scenario, you deploy the SIEM SOAR solution based on Microsoft Sentinel, set up role-based access control in the workspace context, and limit access for the network team to a single table in the log analytics workspace. Workbooks allow security analysts and administrators to visualize security data using graphical displays. They provide a tool for presenting and analyzing data in a dashboard.

## Proposed solution
| Requirement|	Solution|	Action plan|
| Deploy SIEM/SOAR Solution |	Microsoft Sentinel, Log Analytics Workspace	| Set up log analytics workspace and deploy Microsoft Sentine |
|Limit access to specific SOC roles | 	Log Analytics Workspace, Role-based Access Control |	Set up RBAC for Log Analytics Workspace |
|Create a dashboard with custom views for incidents and their alerts |	Microsoft Sentinel, Workbook |	Create a workbook with a custom view on current incidents and alerts |
Part 2: Implement the solution (optional)
For this part of the lab, the task to create a dashboard with custom views for incidents and their alerts (task 4 of this exercise) is not functional, as there is no data data upon which to do this task. The steps of task 4 are included for information purposes only. Executing the steps will not return any data.

# Task 1 - Create Log Analytics Workspace
In this task, you'll create a log analytics workspace which is required to house all of the data that Microsoft Sentinel will be ingesting and using for its detections and analytics.

Log into the Client 1 VM LON-SC1 as the LON-SC1\admin account using the password Pa55w.rd

Open Microsoft Edge, select the address bar, navigate to https://portal.azure.com and log into the Azure Portal as user User1-55445787@LODSPRODMCA.onmicrosoft.com:

Username: User1-55445787@LODSPRODMCA.onmicrosoft.com

Password: 5a-znk-4

On the Stay signed in? dialog box, select the Don't show this again checkbox and then select No.

Close the password save dialog from the bottom by selecting Never, to not save the default global admins credentials in your browser.

Cancel Welcome to Microsoft Azure screen.

Select Create a resource and search for log analytics workspace

Find the Log Analytics Workspace tile, select Create.
<img width="1612" height="925" alt="image" src="https://github.com/user-attachments/assets/e6198ffa-b411-4053-9ee0-f6d39e564f1c" />


On Create Log Analytics workspace site, create a new Resource Group and name it rg_eastus_soc.

In Instance details enter the name law-sentinel, select East US for region.

Select Review & Create
<img width="767" height="829" alt="image" src="https://github.com/user-attachments/assets/e25eb79e-bf03-4d17-8619-70f6c5222acf" />
<img width="771" height="839" alt="image" src="https://github.com/user-attachments/assets/d36ddfd1-23d9-4d42-80ed-506861a0ca36" />


Select Create to start the deployment.

You successfully created the log analytics workspace for your Sentinel deployment.

# Task 2 - Create Sentinel
In this task, you will add Sentinel to the created log analytics workspace.

You should still be logged into the Azure portal https://portal.azure.com.
In the search bar, in the blue banner at the top of the page, enter Microsoft Sentinel, then select it from the search results listed under services.
From the Microsoft Sentinel page, select Create.
<img width="1239" height="799" alt="image" src="https://github.com/user-attachments/assets/76c0a2bb-4585-44bb-aaca-630ae17fcf03" />

In the Add a Microsoft Sentinel to a workspace page the previously created log analytics workspace should be listed. Select law-sentinel then select Add.
<img width="1446" height="846" alt="image" src="https://github.com/user-attachments/assets/c8f88f72-6a0a-47ca-8998-aba28f01d020" />

It may take a few minutes to add Sentinel to the workspace. Once it's added, the Microsoft Sentinel | New & guides page is displayed. You're notified that the Microsoft Sentinel free trial is activated. Select Ok.
<img width="1587" height="834" alt="image" src="https://github.com/user-attachments/assets/886ad4fe-a0b6-441f-b291-e64da7776a7f" />

From the center of the page, select Go to content hub. The content hub is where you would go to download solutions. Explore the content hub, at will.
<img width="1182" height="860" alt="image" src="https://github.com/user-attachments/assets/c7d1c2eb-634d-4b64-aeea-e168115b20f7" />

You have successfully deployed Sentinel to the log analytics workspace.

# Task 3 - Setup RBAC
You have to secure the access based on least privilege, you´ll create role assignments for the specific role requirements. In your upcoming productive deployment, there´ll be two different roles in the Security Operation Center.

Permission requirements
| Role	| Permissions | 
| Security analyst | View data, incidents, worksbooks and other Sentinel resources and Assigning/dismissing incidents. |
| Security engineer | Create and edit workbooks and analytics rules Install and update solutions from content hub |
You should still be logged into the Azure portal https://portal.azure.com.
In the top searchbar, search for Resoure groups and select your previously created resource group rg_eastus_soc.
<img width="1047" height="917" alt="image" src="https://github.com/user-attachments/assets/bcf2f15a-7031-4746-a663-2590357214ad" />

In the left navigation pane, select Access control (IAM).
Select Add, from the dropdown select Add role assignment.
<img width="1598" height="840" alt="image" src="https://github.com/user-attachments/assets/e744ad5e-2a24-44a2-b07e-faa92dbd6a27" />
<img width="1288" height="779" alt="image" src="https://github.com/user-attachments/assets/d2c334fe-21c0-4f7b-8ef5-b9a23e04de0c" />

Search for Microsoft Sentinel Responder and select View in the Details column.
<img width="1609" height="918" alt="image" src="https://github.com/user-attachments/assets/a77babfc-04c4-4c8a-b16b-83cb6b1c7176" />
<img width="1609" height="918" alt="image" src="https://github.com/user-attachments/assets/b5528242-1291-4cc2-87a8-bed16af203b2" />

Review that the permissions match the requirements.
Close the window with X in the top right corner.
Select Next.
Select +Select members.
<img width="758" height="905" alt="image" src="https://github.com/user-attachments/assets/e281123c-2b08-4c6a-8c52-1ff750d8f5cf" />

Search for SOC Analysts Group, select SOC Analysts from the search results, press Select and add the role assignment.
<img width="1454" height="853" alt="image" src="https://github.com/user-attachments/assets/e9990fd6-3eee-413a-a6bf-49f78231f174" />

Select Review + assign.
<img width="1047" height="914" alt="image" src="https://github.com/user-attachments/assets/60d7f465-cb39-4849-ad8c-701319cf4dd6" />

You'll repeat the steps for the Sentinel Contributor role. Select Add, from the dropdown select Add role assignment.
Search for Microsoft Sentinel Contributor and select the role.
Select Next.
<img width="1605" height="914" alt="image" src="https://github.com/user-attachments/assets/d91240fd-c7f0-4258-a948-d4230feefaa2" />

Select +Select members.
On the Select members blade, search for the SOC Engineers Group. From the search results select SOC Engineers press Select to add the role assignment.
Select Review + assign twice.
Select Role assignments tab, Confirm that the role assignments are set.
<img width="1125" height="839" alt="image" src="https://github.com/user-attachments/assets/77d5a71b-2b4f-4c17-ab6c-4202bef22914" />

You successfully created role based access model for the role requirements for Contoso´s security operations team.

# Task 4 - Create Workbook
These steps are included for information purposes only. Executing the steps will not return any data.

In this task, you´ll create a workbook, to get a dashboard with custom views and current incidents and their alerts.

You should still be logged into the Azure portal https://portal.azure.com.

On the Search bar on the top, search for Microsoft Sentinel and open it.

Select law-sentinel.

In the left navigation pane, expand Threat management and select Workbooks.

Select Add Workbook.
<img width="1608" height="913" alt="image" src="https://github.com/user-attachments/assets/6d035e28-54d6-4e17-ae96-3a8577c1d5ce" />


Select Edit.
<img width="1103" height="791" alt="image" src="https://github.com/user-attachments/assets/2372e76b-0211-4080-9054-cb9a2dfb9236" />


Select the first Edit button on the right side.
<img width="1607" height="909" alt="image" src="https://github.com/user-attachments/assets/942cbc1d-6257-42be-8bfd-aa9ed18e2e28" />


Select Add > Add parameters.
<img width="1040" height="924" alt="image" src="https://github.com/user-attachments/assets/ff80eef0-b05c-4800-8a29-55df387c449b" />
<img width="937" height="920" alt="image" src="https://github.com/user-attachments/assets/d2836475-afa0-43bc-89a0-d71b2f518ba1" />
<img width="1613" height="924" alt="image" src="https://github.com/user-attachments/assets/cf497c9d-7c7e-4819-bd3f-47cc9b7e870c" />


Select Add parameter and fill out the following information:

Parameter name: TimeRange
Parameter type: Time range picker
Check the following settings:

Required?
Select Save.
<img width="868" height="801" alt="image" src="https://github.com/user-attachments/assets/c84c397d-7c2f-45a6-acf3-87481b39bcbc" />
<img width="864" height="811" alt="image" src="https://github.com/user-attachments/assets/e6a5bbc0-3bbc-4159-9eec-ee2dd70d9461" />


In the TimeRange: dropdown menu in the lower left, select Last 7 days.
<img width="782" height="791" alt="image" src="https://github.com/user-attachments/assets/091115ac-5a7d-4b86-aa9f-3bbe5e2ad810" />


Select Add parameter and fill out the following information:

Parameter name: AlertSeverity
Parameter type: Drop down
Check the following settings:

Required?
Allow multiple selections
Hide parameter in reading mode
Under Log Analytics workspace Logs Query paste in:

KQL
TypeCopy
SecurityAlert
| summarize Count = count() by AlertSeverity
| order by Count desc, AlertSeverity
| project Value = AlertSeverity, Label = strcat(AlertSeverity, ' - ', Count)
In the Time Range dropdown menu Select TimeRange.
<img width="826" height="744" alt="image" src="https://github.com/user-attachments/assets/13c51dcc-1597-47fd-9e90-14fd6f40b1ea" />


Scroll down to Include in the drop down, check All and set Default selected item to All.
<img width="872" height="785" alt="image" src="https://github.com/user-attachments/assets/16d1caab-0560-40f5-9095-b80f0fe5b696" />


Select Save.

Select Add parameter and fill out the following information:

Parameter name: ProductName
Parameter type: Drop down
Check the following settings:

Required?
Allow multiple selections
Hide parameter in reading mode
Under Log Analytics workspace Logs Query paste in:

KQL
TypeCopy
SecurityAlert
| summarize Count = count() by ProductName
| order by Count desc, ProductName asc
| project Value = ProductName, Label = strcat(ProductName, ' - ', Count)
In the Time Range dropdown menu Select TimeRange
<img width="866" height="793" alt="image" src="https://github.com/user-attachments/assets/2b58d3db-5bce-4ab7-9971-494831b8780b" />


Scroll down to Include in the drop down, check All and set Default selected item to All.
<img width="613" height="748" alt="image" src="https://github.com/user-attachments/assets/0cd231f8-827a-482c-b631-cf8a2bd07079" />


Select Save.

Select Add and choose Add query.
<img width="883" height="864" alt="image" src="https://github.com/user-attachments/assets/4c7ec738-c770-42cf-98f3-bb968d02c397" />


Under Log Analytics workspace Logs Query paste in:

KQL
TypeCopy
SecurityIncident
| where CreatedTime {TimeRange:value}
| summarize arg_max(TimeGenerated,*) by tostring(IncidentNumber)
| extend IncidentID = IncidentName
| extend Alerts = extract("\\[(.*?)\\]", 1, tostring(AlertIds))
| mv-expand AlertIds to typeof(string)
| join
(
    SecurityAlert
    | extend AlertEntities = parse_json(Entities)
    | mv-expand AlertEntities
) on $left.AlertIds == $right.SystemAlertId
| summarize AlertCount=dcount(AlertIds) by IncidentNumber, Status, Severity, Title, Alerts, IncidentUrl, IncidentID
| project IncidentNumber, IncidentID, Title, Severity, Status, AlertCount, Alerts, IncidentUrl
| order by Severity
Choose TimeRange in the Time Range drop down menu. You´ll setup dynamic content to get all alerts for the selected incident. Alerts will be exported and available outside this query.
<img width="1197" height="844" alt="image" src="https://github.com/user-attachments/assets/119366ca-a9a4-4a37-9ebe-85a70a8b63ac" />

Select the Advanced Settings tab at the top of the Editing query window.

Check the following settings:

When items are selected, export parameters
Select Add Parameter and fill in the following information:
<img width="742" height="777" alt="image" src="https://github.com/user-attachments/assets/03407031-11a0-4b09-bbd5-b8d0b48ad1e2" />

Field to export: Alerts
Parameter name: Alerts
Select Save.
<img width="652" height="908" alt="image" src="https://github.com/user-attachments/assets/a834692b-8d77-45b4-a1ad-e2f86d4bc94f" />

Go back to the Settings tab.

Select Run Query.
<img width="1139" height="559" alt="image" src="https://github.com/user-attachments/assets/d1bac1ed-ee23-4f8a-8187-78216b109636" />
<img width="1139" height="559" alt="image" src="https://github.com/user-attachments/assets/c2237672-ffc4-4769-8dd5-1ea56b912cfb" />

# CANNOT FIND THE REST OF THE SETTINGS MS MAY HAVE UPDATED THE LAYOUT BUT THE LAB IS NOT UPDATED

Select Column Settings.

Select IncidentUrl.

Set Column renderer to Link.

Under Link Settings set View to open to Url.

Select Save and Close.

Next, You´ll create the alerts view based on which incident is selected.

Select + Add on the bottom of the Editing query item window. Select Add query.

Paste the KQL in the Log Analytics workspace Logs Query

KQL
TypeCopy
SecurityAlert
| where SystemAlertId in ({Alerts})
| summarize by  DisplayName, StartTime, EndTime,  SystemAlertId
| sort by EndTime desc
Choose TimeRange in the Time Range drop down.

Select Done Editing.

Select Done Editing in the top bar of the New workbook window.

Select an Incident.

Alerts to the linked Incident will show up below.

Save your query by selecting the Save icon.

In the Save as window, enter a title for your new workbook, select the rg_eastus_soc resource group from the drop-down, then select Save as.

You successfully created a dashboard with custom views for incidents and the associated alerts.

Congratulations!
You have successfully completed this Lab. Click Next to advance to the next Lab.
