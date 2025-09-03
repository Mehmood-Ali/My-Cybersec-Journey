This File contains 100 Quick refreshers from the ##Manage incident response (25–30%)##



Q: What are the four common incident status values you’ll work with in Microsoft Sentinel?
A: New, Active (In progress), Resolved (Closed), and (optionally) Suppressed via automation rules.
Lab steps: Sentinel > Incidents > select incident > Update status.

Q: Name three fields you should populate when closing a Sentinel incident to support later metrics.
A: Classification, Classification reason, and Comment (root cause/lessons).
Lab steps: Sentinel > Incidents > Close > set fields > Apply.

Q: In Defender XDR, what’s the difference between an alert and an incident?
A: Alerts are individual detections; incidents are correlated groups of related alerts, entities, and evidence across workloads.
Lab steps: Defender portal > Incidents & alerts > compare “Incidents” vs “Alerts”.

Q: What Sentinel feature lets you auto-update incident fields (e.g., assign, tag, change severity) the moment an incident is created?
A: Automation rules.
Lab steps: Sentinel > Automation > Automation rules > +Create.

Q: Which service correlates alerts into single incidents in Defender XDR?
A: Built-in incident correlation (fusion/cross-domain correlation) in Defender XDR.
Lab steps: Defender portal > Incidents & alerts > open incident > “Alert story”.

Q: Where do Sentinel incidents live for query/reporting?
A: The SecurityIncident table in the connected Log Analytics workspace.
Lab steps: Sentinel > Logs > query SecurityIncident | take 10.

Q: Which Sentinel object lets you run a response workflow (Logic App) directly on an incident?
A: An Automation rule with an “Run playbook” action.
Lab steps: Sentinel > Automation rules > Add action: Run playbook.

Q: How do you manually trigger a SOAR playbook on an existing Sentinel incident?
A: From the incident’s “Actions” > “Run playbook”.
Lab steps: Incidents > open incident > View full details > Actions > Run playbook.

Q: What permissions are required to update incidents in Sentinel?
A: Typically Microsoft Sentinel Responder (update incidents + run playbooks) or higher (Contributor).
Lab steps: Sentinel > Settings > Roles (Azure RBAC) > check assignments.

Q: In Defender XDR, where do you find device-level response actions like isolate device?
A: Device page > Actions menu (isolate, AV scan, collect package).
Lab steps: Defender portal > Devices > select device > Actions.

Q: Which Sentinel object is best for auto-enriching incidents with custom lists (e.g., VIP users, sanctioned IPs)?
A: Watchlists.
Lab steps: Sentinel > Watchlists > +Create > upload CSV > reference in KQL/analytics.

Q: What Sentinel feature creates incidents from matches in streaming data?
A: Analytic rules (scheduled or NRT); they generate alerts which can create incidents.
Lab steps: Sentinel > Analytics > +Create > (Scheduled or NRT).

Q: What’s a quick KQL to list open Sentinel incidents older than 7 days?
A:
SecurityIncident | where Status != "Closed" and TimeGenerated < ago(7d)
Lab steps: Sentinel > Logs > run query.

Q: How do you assign an incident to a specific analyst automatically in Sentinel?
A: Automation rule with condition → action “Assign to”.
Lab steps: Automation rules > +Create > Conditions > Action: Assign.

Q: In Defender XDR, what field captures your determination when closing an incident (true/benign/false positive)?
A: Classification and Determination (e.g., True positive → Malware, Phishing).
Lab steps: Defender portal > Incidents > Close > set fields.

Q: What Sentinel pane visualizes entities and their relationships within an incident?
A: The Investigation graph.
Lab steps: Incidents > open > Investigation.

Q: Which Sentinel feature sends notifications (email/Teams) on incident creation without a playbook?
A: Automation rules with “Post a message” via playbook; native email isn’t built-in—use a Logic App connector.
Lab steps: Automation rule > Add action: Run playbook > choose email/Teams playbook.

Q: How do you suppress noisy incidents from a specific analytic rule without deleting the rule?
A: Add Automation rule with conditions to “Change status to Closed” and set Classification as “False positive–Expected activity”.
Lab steps: Automation rules > +Create > set filters > close action.

Q: What Sentinel control helps ensure analysts use consistent closure reasons?
A: Required Classification & Classification reason on close; enforce via SOPs/automation validation.
Lab steps: Close incident > verify fields.

Q: In Defender XDR, where do you view all evidence collected for an incident?
A: Incident page > Evidence tab (files, processes, emails, URLs, devices, users).
Lab steps: Defender portal > Incidents > open > Evidence.

Q: Which table stores analytic rule alert records in Sentinel?
A: SecurityAlert.
Lab steps: Logs > SecurityAlert | take 10.

Q: How do you link a Sentinel incident to an external ticket (e.g., ServiceNow) automatically?
A: Use a playbook with ServiceNow/Jira connectors, invoked by an Automation rule.
Lab steps: Automation rule > Run playbook > choose SNOW/Jira playbook.

Q: What Sentinel feature helps you stage custom summarization/enrichment into the incident description?
A: Playbook to update incident (ARM/Microsoft.SecurityInsights API) or built-in “Update incident” action in Sentinel connectors.
Lab steps: Logic App Designer > Sentinel connector > “Update incident”.

Q: Name two ways to prioritize incidents in Sentinel.
A: By Severity and by Incident priority (custom tags/assignment/SLA fields via playbooks).
Lab steps: Incidents grid > filter by Severity; use tags.

Q: What’s the recommended way to disable incident creation for a specific noisy analytic rule temporarily?
A: Disable the analytic rule or set incident creation to “Create only alert” (then no incident) if available in rule settings.
Lab steps: Analytics > open rule > Disable or adjust incident settings.

Q: How do you measure MTTA/MTTR in Sentinel?
A: Query SecurityIncident timestamps (created, first action via comments/updates, closed).
Lab steps: Logs > build KQL to compute durations; pin to workbook.

Q: Which Sentinel surface lets you pivot from an incident to raw data quickly?
A: Events (alert details) → “View in logs” link.
Lab steps: Incident > Alerts > View in logs.

Q: In Defender XDR, where do you trigger email purge for phishing incidents?
A: Email entity or Email & collaboration workload (Exchange Online) action “Soft delete/quarantine” (requires Defender for Office 365).
Lab steps: Incident > Evidence > Email > Take action.

Q: How do you ensure your playbook can update Sentinel incidents without storing client secrets?
A: Use Managed identity for the Logic App with proper RBAC on the workspace.
Lab steps: Logic App > Identity (System assigned) > Azure role assignment (Sentinel Contributor).

Q: What’s the primary benefit of NRT (near-real-time) rules?
A: Lower latency detections (~1 minute evaluation) for high-urgency signals.
Lab steps: Analytics > +Create NRT rule.

Q: How do you route different analytics to separate triage queues (teams) in Sentinel?
A: Automation rules with conditions (rule name, severity, tactics) that assign to specific owners or add routing tags.
Lab steps: Automation rules > conditions > Assign + Tag.

Q: Which Microsoft 365 Defender capability can automatically investigate and remediate incidents?
A: Automated investigation & response (AIR).
Lab steps: Defender portal > Action center / Settings > Automated investigations.

Q: Where do you find a timeline narrative of an incident in Defender XDR?
A: Incident page > Alert story / Timeline.
Lab steps: Incidents > open > Timeline/Story tabs.

Q: In Sentinel, what field captures MITRE ATT&CK tactics for an incident?
A: Tactics (array) aggregated from alerts.
Lab steps: Incidents > open > Tags/Tactics pane; Logs: SecurityIncident | project Tactics.

Q: How can you ensure PII is not exposed in incident comments?
A: SOP + reviewer automation: playbook to scan comment text for PII patterns before allowing closure.
Lab steps: Playbook triggered on “Incident updated” > validate > notify.

Q: What’s the safest way to allow a SOC vendor to close incidents but not modify analytics?
A: Assign Microsoft Sentinel Responder role, not Contributor.
Lab steps: Azure RBAC > add role assignment.

Q: How do you bulk-close incidents matching a specific false-positive pattern?
A: Use Automation rule with filter + action Close (retroactive processing not applied); for existing ones, use Sentinel REST API/PowerShell.
Lab steps: Use az rest/PowerShell script against SecurityInsights incidents.

Q: How do you automatically tag incidents with “VIP” when the User entity is in a VIP list?
A: Watchlist + Automation rule/Playbook that looks up UserPrincipalName and adds tag.
Lab steps: Create watchlist; playbook adds tag via “Update incident”.

Q: What Sentinel feature can enrich incidents with WHOIS or threat intel reputation?
A: Playbooks using Threat Intelligence/HTTP connectors; Threat intelligence platforms integration.
Lab steps: Build playbook > HTTP to reputation API > Update incident.

Q: Where do you view Action center outcomes in Defender XDR?
A: Defender portal > Action center (Pending/History).
Lab steps: Defender portal left nav > Action center.

Q: How do you ensure a playbook runs only for High severity incidents?
A: In Automation rule: condition Incident severity == High.
Lab steps: Automation rules > Add condition > Severity.

Q: What’s the quickest way to see which analytic rules most often produce closed-as-FP incidents?
A: KQL on SecurityIncident joined with alert rule name, grouped by Classification.
Lab steps: Logs > build query, summarize counts.

Q: How do you notify on-call via Teams when a High severity incident is created outside business hours?
A: Automation rule (conditions: severity + time window) → run Teams notification playbook.
Lab steps: Create playbook with Teams connector; rule triggers after-hours.

Q: How can an incident be created in Sentinel from an external system?
A: Use Sentinel Incidents API (Microsoft.SecurityInsights) to create incidents or create custom alerts that generate incidents.
Lab steps: Use Logic App/Function with SecurityInsights “Create incident” action or REST.

Q: What is the benefit of entity behavior (UEBA) during incident investigation?
A: Baselines normal behavior; flags anomalies to prioritize investigations.
Lab steps: Sentinel > Entity behavior (enable UEBA) > Investigate.

Q: How do you ensure an analyst cannot delete playbooks but can run them?
A: Give Sentinel Responder and Logic App Operator (not Contributor).
Lab steps: Azure RBAC assignments on workspace and Logic App.

Q: Which table helps you map incident IDs to their alerts in Sentinel logs?
A: SecurityIncident join with SecurityAlert on SystemAlertId / IncidentNumber via AlertIds expansion.
Lab steps: Logs > use mv-expand AlertIds.

Q: How do you export incident metrics to Power BI?
A: Use KQL queries against SecurityIncident, export query to Power BI or use the Power BI connector.
Lab steps: Logs > Export > Power BI > build report.

Q: How do you add owner and SLA due time to incidents automatically?
A: Automation rule + playbook to set owner and write due time to incident tags/comments.
Lab steps: Build playbook “Update incident” with custom fields.

Q: What setting in an analytic rule controls whether multiple alerts merge into one incident?
A: Incident creation options: “Create a single incident for all alerts” vs “Create incident per alert”.
Lab steps: Analytics > open rule > Incident settings.

Q: How do you pause incident creation from a rule during a noisy vendor outage without losing alerts?
A: Set rule to “Create alerts only” (no incident), or disable incident creation while leaving data ingestion intact.
Lab steps: Analytics > rule > Incident settings.

Q: In Defender XDR, how do you see which devices were auto-isolated during an incident?
A: Incident > Evidence > Devices tab and Action center history.
Lab steps: Defender portal > Incident > Evidence; Action center.

Q: How can you ensure each closed incident includes a consistent post-incident checklist?
A: Playbook triggered on Close to append checklist to comments and validate completion.
Lab steps: Automation rule “When incident closed” → Run playbook.

Q: How do you publish a SOC workbook showing incident trends by MITRE tactic?
A: Create Workbook with KQL summarizing SecurityIncident by tostring(Tactics).
Lab steps: Sentinel > Workbooks > +New > add query.

Q: What API version namespace is used for Sentinel incidents?
A: Microsoft.SecurityInsights (under the Sentinel resource provider).
Lab steps: Azure REST/ARM browser; test with az rest.

Q: How to escalate Sentinel incidents to a separate Azure DevOps project automatically?
A: Playbook with Azure DevOps connector creates work item; writes ID back to incident.
Lab steps: Build playbook; Automation rule on creation.

Q: How to auto-assign all ransomware-labeled incidents to the Tier 2 queue?
A: Automation rule condition on “Incident title contains ‘ransom’” or tactics/keywords → Assign to Tier 2.
Lab steps: Automation rules > Conditions > Assign.

Q: What Sentinel feature lets you merge or link related incidents?
A: Link incidents (manual linking) to track relationships.
Lab steps: Incidents > select incidents > Link.

Q: How do you bulk-edit incident tags in the Sentinel UI?
A: Multi-select incidents in the grid > Update tags.
Lab steps: Incidents > select multiple > Update.

Q: In Defender XDR, where to see Advanced hunting queries relevant to an incident?
A: Advanced hunting > use incident entities to pivot queries; incident page may link to hunting pivots.
Lab steps: Defender portal > Advanced hunting > Query by device/user.

Q: How can you ensure a playbook can read alert entities when triggered by an incident?
A: Use the “Get incident” and “Get incident alerts” actions first; pass entities to later steps.
Lab steps: Logic App Designer > Sentinel connector actions.

Q: What is the primary table to query Defender XDR incidents via Advanced Hunting?
A: SecurityIncident in Sentinel; for M365D AH, use SecurityIncident (if surfaced) and workload-specific tables; otherwise use Incidents API. (In AH, typically you query alert tables and map to incidents via IDs where available.)
Lab steps: Use Sentinel Logs; in M365D AH, pivot by AlertId and IncidentId.

Q: How to capture dwell time between first alert and incident creation?
A: Join SecurityAlert (earliest alert in incident) with SecurityIncident creation time and compute difference.
Lab steps: Logs > KQL with mv-expand AlertIds and arg_min().

Q: How do you enforce that High severity incidents cannot be closed without a classification?
A: SOP + auditing; optionally playbook on “Incident closed” to reopen if missing classification.
Lab steps: Automation rule (on close) → playbook checks fields → reopens.

Q: Which roles are minimal for authoring automation rules and playbooks?
A: Sentinel Contributor (create rules) + Logic App Contributor; run requires appropriate permissions.
Lab steps: Azure RBAC assignments.

Q: How to run a post-containment validation scan after isolating a device?
A: Defender XDR device actions: Run antivirus scan; verify in Action center.
Lab steps: Device page > Actions > Run AV scan.

Q: How to create a resolver group mapping by product (e.g., Defender for Cloud vs MDO) for routing?
A: Build a watchlist mapping product → team; automation rule reads and assigns.
Lab steps: Watchlists > upload mapping > playbook uses it.

Q: How to prevent an automation rule from running twice on the same incident?
A: Use incident tag/flag set by the playbook and add rule condition “Tag not present”.
Lab steps: Playbook adds tag; rule checks tag.

Q: How to automatically enrich an IP with GeoIP and add it to the incident comment?
A: Playbook calls GeoIP API and updates incident comment with results.
Lab steps: Logic App > HTTP to GeoIP > Update incident.

Q: How to surface failed playbook runs for SOC leads?
A: Workbook over AzureActivity/LogicApps run history or use Log Analytics diagnostic logs for Logic Apps.
Lab steps: Enable diagnostics on Logic App > Logs/Workbook.

Q: How to throttle incident creation for a rule flooding hundreds of alerts?
A: Adjust rule logic (aggregation), switch to single-incident mode, or add event suppression logic in KQL.
Lab steps: Analytics > rule > “Create single incident for all alerts”.

Q: What’s the best place to maintain runbooks/SOPs per incident category?
A: As links in incident tags/comments, and a SOC knowledge base (SharePoint/Confluence) referenced by playbooks.
Lab steps: Playbook writes SOP link to incident comment.

Q: How to add regression tests for analytic rules to protect against breaking changes?
A: Save sample queries + test data; use Scheduled Query Rules - Test via API/CI to validate KQL.
Lab steps: Pipeline calls LA query API; checks non-empty results.

Q: How to record costly actions (e.g., mass mailbox purge) with approval?
A: Playbook with manual approval step; action executes only after approval.
Lab steps: Logic App > Approvals connector > conditional branch.

Q: Where do you adjust incident settings for each analytic rule in Sentinel?
A: Analytics > open rule > Incident settings tab.
Lab steps: Update creation mode and grouping.

Q: How to ensure Mean Time to Assign (MTTA) stays under an SLA?
A: Automation rule assigns immediately; Workbook monitors time from creation to first Owner set.
Lab steps: Logs: compute first owner assignment; alert if breached.

Q: How to capture Kill chain phase or MITRE mapping in custom alerts?
A: Include MitreTactics/MitreTechniques fields in the analytic rule (Set entity mappings/tactics).
Lab steps: Analytics > Set rule logic > Map tactics/techniques.

Q: How to auto-close incidents for sanctioned scanners (e.g., Nessus IPs)?
A: Watchlist of scanner IPs; automation rule condition IP in list → Close as FP Expected.
Lab steps: Watchlist + Automation rule.

Q: How do you validate that a managed identity has rights to update incidents?
A: Attempt “Update incident” action; if unauthorized, grant Sentinel Contributor at workspace.
Lab steps: Logic App > Identity > Role assignments.

Q: How to quickly find incidents that were reopened after closure?
A: Query SecurityIncident and look for multiple records per IncidentNumber with status transitions.
Lab steps: Logs > parse Status changes over time.

Q: How to integrate TI indicators so that matching alerts auto-escalate?
A: Enable TI data connector; rule matches indicators; automation rule raises severity/assigns.
Lab steps: Sentinel > Content hub > TI connector; Automation rule.

Q: How to bulk-reassign incidents to a new on-call analyst?
A: Multi-select in Incidents grid > Assign; or script via Incident API.
Lab steps: Incidents > select multiple > Assign.

Q: How to normalize evidence across alerts for faster triage?
A: Use entity mapping in analytic rules and consistent playbook enrichment.
Lab steps: Analytics > Rule > Entity mapping.

Q: How to show top recurring entities across incidents this month?
A: KQL summarizing SecurityIncident and expanding Entities.
Lab steps: Logs > build KQL; visualize in Workbook.

Q: How to ensure every P1 incident has a manager notification within 5 minutes?
A: Automation rule (Severity High/Critical) → Notification playbook; alert if not executed.
Lab steps: Create rule + playbook + alert on playbook failures.

Q: How to archive closed incidents details to a storage account for long-term retention?
A: Playbook on close → write JSON to Blob/Storage Table.
Lab steps: Logic App > Azure Blob connector.

Q: How to quickly check if an incident has unread updates since you last viewed it?
A: Use comments/updates timestamps; some UIs show “Updated X minutes ago”; build a query for recent updates.
Lab steps: Logs > query SecurityIncident by LastModifiedTime.

Q: How to add IOC containment (block IP/domain) directly from an incident?
A: Playbook pushing to Firewall/DNS/MDI/Defender TI indicators.
Lab steps: Build playbook with relevant connector; run from incident.

Q: How to correlate Sentinel incident with Defender XDR incident?
A: Use shared entities (DeviceId, Account UPN, AlertIds) and links in alert details; store the M365D incident ID in a tag/comment.
Lab steps: From alert > View in Defender; add ID back via playbook.

Q: How to auto-summarize an incident into a Slack/Teams card?
A: Playbook composes summary (title, severity, entities, first/last alert time) and posts card.
Lab steps: Logic App > Teams/Slack connector.

Q: How to version-control playbooks and automation rules?
A: Use ARM/Bicep/Terraform in Git; CI/CD deploy to Sentinel.
Lab steps: Export templates; pipeline deploys to test/prod.

Q: How to reduce duplicate incidents caused by frequent identical alerts?
A: Change analytic rule to single-incident grouping; extend aggregation window; deduplicate in KQL.
Lab steps: Analytics > Incident settings > Grouping.

Q: How to ensure tiering: Tier-1 sees only triage fields, Tier-2 sees advanced actions?
A: RBAC separation (Responder vs Contributor) + restricted permissions on connectors.
Lab steps: Azure RBAC role scoping.

Q: How to quickly pivot to tenant-wide impact from an incident’s user entity?
A: Advanced hunting for that user across workloads; Sentinel Logs pivot by UPN.
Lab steps: Defender AH > query by UPN; Sentinel Logs > Identity tables.

Q: How to capture root cause systematically across incidents?
A: Mandatory comment schema; playbook validates keywords (e.g., Initial access vector).
Lab steps: Close incident > playbook checks comment template.

Q: How to alert if an incident remains unassigned for more than 15 minutes?
A: Scheduled query on SecurityIncident where Owner is empty and age > 15m → alert/Teams post.
Lab steps: Analytics (Scheduled rule) > Query + Action.

Q: How to route incidents with sensitive data to a special team?
A: Pattern match in alerts (e.g., DLP) → Automation rule assigns to “Privacy Response” team.
Lab steps: Automation rules > condition on Product/Title.

Q: How to auto-create a Teams channel per P1 incident for collaboration?
A: Playbook with Microsoft Graph/Teams connector creates channel, posts summary, adds members.
Lab steps: Logic App > Teams actions.

Q: How to simulate incident workflows safely in a lab?
A: Use sample data connector or benign test alerts; run playbooks against test tags/subscriptions.
Lab steps: Sentinel > Data connectors > Sample data; Analytics with test rule.

Q: How to perform an after-action review (AAR) that’s queryable later?
A: Playbook on close writes structured AAR JSON to a custom log table; workbook visualizes.
Lab steps: Logic App > Log Analytics Data Collector > custom table; build workbook.
