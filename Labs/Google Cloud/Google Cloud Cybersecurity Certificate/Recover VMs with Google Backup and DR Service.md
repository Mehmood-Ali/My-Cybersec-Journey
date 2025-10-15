# IMPORTANT:

desktop/labtop icon Make sure to complete this hands-on lab on a desktop/laptop only.

check icon There are only 5 attempts permitted per lab.

quiz target icon As a reminder – it is common to not get every question correct on your first try, and even to need to redo a task; this is part of the learning process.

timer icon Once a lab is started, the timer cannot be paused. After 1 hour and 30 minutes, the lab will end and you’ll need to start again.

tip icon For more information review the Lab technical tips reading.
Note: After you click Start Lab, it takes approximately 40 minutes for lab resources to spin up so that you can start completing tasks.
Activity overview
Business continuity and disaster recovery planning is critical for sustaining business operations while recovering from a significant security incident, natural disaster, or disruption.

Google Cloud Backup and DR Service is a cloud-based backup and disaster recovery solution that enables the backup and recovery of data , to support quick resumption of critical business operations.

After Backup and DR performs an initial full backup, your data (general applications, VMware VMs, Compute Engine VMs, databases, and file systems) is backed up incrementally, updating and storing any data that has changed since the last backup.

The initial configuration of the Backup and DR service includes the deployment of a management appliance that can take up to 45 minutes to complete. This task has been carried out for you prior to the lab startup. Once the Backup and DR Service are enabled, you can explore the Backup and DR management console and protect workloads.

This lab guides you through the steps of discovering and protecting a Compute Engine instance, and finally mounting a fully-functional new Compute Engine instance from the backup image to a new location.

Scenario
Cymbal Bank's Incident Response Team successfully responded to the security incident and contained the unauthorized access. Hannah and the rest of the Incident Response Team are working on implementing recovery actions to restore the affected virtual machines (VMs). You have been asked to assist with this.

Here’s how you’ll do this task: First, you’ll connect to the Backup and DR management console. Next, you’ll create and validate a backup plan template. Then, you’ll discover and add a Compute Engine instance to the Backup and DR management console. Finally, you’ll restore a Compute Engine instance in two different Google Cloud projects.

Setup
Before you click Start Lab
Read these instructions. Labs are timed and you cannot pause them. The timer, which starts when you click Start Lab, shows how long Google Cloud resources will be made available to you.

This practical lab lets you do the activities yourself in a real cloud environment, not in a simulation or demo environment. It does so by giving you new, temporary credentials that you use to sign in and access Google Cloud for the duration of the lab.

To complete this lab, you need:

Access to a standard internet browser (Chrome browser recommended).
Note: Use an Incognito or private browser window to run this lab. This prevents any conflicts between your personal account and the Student account, which may cause extra charges incurred to your personal account.
Time to complete the lab---remember, once you start, you cannot pause a lab.
Note: If you already have your own personal Google Cloud account or project, do not use it for this lab to avoid extra charges to your account.
How to start your lab and sign in to the Google Cloud console
Click the Start Lab button. On the left is the Lab Details panel with the following:

Time remaining
The Open Google Cloud console button
The temporary credentials that you must use for this lab
Other information, if needed, to step through this lab
Note: If you need to pay for the lab, a pop-up opens for you to select your payment method.
Click Open Google Cloud console (or right-click and select Open Link in Incognito Window) if you are running the Chrome browser. The Sign in page opens in a new browser tab.

Tip: You can arrange the tabs in separate, side-by-side windows to easily switch between them.

Note: If the Choose an account dialog displays, click Use Another Account.
If necessary, copy the Google Cloud username below and paste it into the Sign in dialog. Click Next.

 "Google Cloud username"
Copied!
You can also find the Google Cloud username in the Lab Details panel.

Copy the Google Cloud password below and paste it into the Welcome dialog. Click Next.
 "Google Cloud password"
Copied!
You can also find the Google Cloud password in the Lab Details panel.

Important: You must use the credentials the lab provides you. Do not use your Google Cloud account credentials.
Note: Using your own Google Cloud account for this lab may incur extra charges.
Click through the subsequent pages:
Accept the terms and conditions
Do not add recovery options or two-factor authentication (because this is a temporary account)
Do not sign up for free trials
After a few moments, the Console opens in this tab.

Note: You can view the menu with a list of Google Cloud Products and Services by clicking the Navigation menu at the top-left. Google Cloud console menu with the Navigation menu icon highlighted
Task 1. Connect to the Backup and DR console
Before you can begin implementing recovery actions, you'll first need to connect to the Backup and DR console.

On the Google Cloud console title bar, type Backup and DR in the Search field, then click Backup and DR in the search results. The Backup and DR page opens.
Click Pin next to Backup and DR.
From left nevigation pane, click Management console.
In the Log in to the management console section, click Log in to the management console.
If asked to Choose an account, click your Google Cloud Username: USERNAME.
Skip the Welcome to Google Backup and DR! tour. The Backup and DR management console opens.
In the Backup and DR management console titlebar, click Manage > Appliances.
If the management server and the Backup and Recovery server are successfully installed, the Connectivity status has a green check.

Note: If the Update Status is Pending (yellow exclamation point), an update is waiting for installation. You can ignore this and continue to your next task.
Task 2. Create a backup plan template
In this task, you’ll create a backup plan template.

Backup plan templates are composed of backup policies. In policies, you define when to run a backup, how frequently to run a backup, and how long to retain the backup image for — Days, Weeks, Months, or Years.

In the Backup and DR management console titlebar, click Backup Plans > Templates, and then click +Create Template.
In the Template field, set the template name to vm-backup.
Note: Template names are text strings. The only allowed special characters are spaces, underscores (_), and dashes (-).
In the Description field, type Virtual Machine Backups.
In the Policies box, next to Snapshot, click + Add to add a production to snapshot backup policy.
Note: If the Policies box is not displayed, scroll to the right or expand the browser window.
The Production to Snapshot dialog opens.

In the Create/Edit Policy section, set the following fields and leave all other settings at their defaults:
Field	Value
Policy Name	Daily VM snapshot
Scheduling	Continuous
Every	2 Hour(s)
Note: The Scheduling policy type can be either Windowed or Continuous. The default is Windowed:

• Windowed defines a discrete snapshot backup schedule adhering to a specific frequency and time window.
• Continuous defines a continuous snapshot backup schedule
Click Create Policy.
Click Save Template.
Click Okay to acknowledge template creation Success.
Keep the Backup and DR management console open in a new tab for the entire lab.

Click Check my progress to verify that you have completed this task correctly.

Create a backup plan template
Task 3. Validate the backup and recovery appliance service account permissions
In this task, you’ll view the required IAM roles of the backup/recovery appliance to verify that it has the correct IAM roles.

An appliance is a hardware or software device that is designed to perform a specific task. Security appliances are used to protect networks from unauthorized access, attacks, and data breaches.

Every appliance has a dedicated service account attached to it—that was created during appliance deployment in the project where the appliance was deployed. For appliances installed on version 11.0.2 and higher, a corresponding cloud credential for this service account is automatically created at the time of an appliance deployment.

The name of the cloud credential is based on the appliance name followed by the suffix -sa. For example, if the name of the backup/recovery appliance is bur-appliance-us-east1, then the name appliances corresponding cloud credential is bur-appliance-us-east1-sa.

To view and verify the required IAM role:

Return to the Google Cloud console, in the Navigation menu (Navigation Menu icon), click IAM & Admin > IAM.
In the Name column, find the service account attached to your backup appliance, the service account's name should be Service account for backup and recovery appliance.
In the Role column, notice that the Backup and DR Cloud Storage Operator role is already assigned.
Task 4. Discover and add Compute Engine instances to the management console
In this task, you’ll use the onboarding wizard to onboard your Compute Engine instances. Onboarding an instance means you attach the template to the instance.

Return to the Backup and DR management console.
From the titlebar, click Backup and Recover > Back Up.
In the Google Cloud section, click Compute Engine.
Under Credential, select backup, and click Next.
The Project ID and Zone drop-down options are populated with details from the appliance that maps to the workflow credential.

Click Search.
The results are listed in the search results. You may have to scroll down to view them:

lab-vm
qwiklabs-appliance
Select the lab-vm Compute Engine instance for backup, and then click Next.
Note: If no instances or only one instance appear, ensure that the zone selected matches the zone where your Compute Engine instance(lab-vm) is located or running.
In the Enable backups for Compute Engine VM instances? page, select the lab-vm and then set the following:
Action: From the drop-down menu, select Apply a backup template.
Backup template: From the drop-down menu, select vm-backup.
Click OK.
Click Next.
A Summary of changes screen appears and provides the following information:

Instance Name: lab-vm
Appliance: qwiklabs-appliance
Action: Apply a backup template
Click Finish to complete the onboarding process. This triggers the back up of the selected Compute Engine instances based on the Policy Template you attached.
Click Finish to confirm your intent to finish.
After onboarding is complete the Status is a green check. This means the policy template is attached to the selected VM.

Note: Backup and DR ensures that the chosen Compute Engine instances get backed up at the frequency you set in the backup policy.
In the Backup and DR management console titlebar, click Monitor > Jobs.
You can monitor the progress of the backup job. When the job is finished, you have an image that you can restore if needed.

If the jobs list is empty, the backup job has either not started or is already completed. Use different filter options to populate the jobs list, for example Succeeded or All filter options. Filter results are listed in the Jobs list.

Note: The job may take five minutes or longer to finish.
Click Check my progress to verify that you have completed this task correctly.

Discover and add Compute Engine instances to the management console
Task 5. Restore a Compute Engine instance
Now that you have an image of your Compute Engine instance, in this task, you’ll create a brand new Compute Engine instance using the backup image that you created in the previous task.

From the Backup and DR management console titlebar, click Backup & Recover > Recover.
Click the name of the Compute Engine instance you want to recover (lab-vm) to select it. Click Next.
In the action bar, click Table. In the Images list, one image is displayed because there has only been one backup image created.
Select the image and click Mount.
Note: Typically, the Mount panel has many selection choices that allow you to choose where and how to restore an image. In this lab, you may have only one timeline option as you just created the first backup.
Under Mount, select Mount as new GCE instance.
Review the configuration options and then update the following:
Region: Change this to REGION
Zone: Change this to ZONE
Instance name: lab-vm-recovered
Scroll to the bottom of the page and click Mount.
On the Success dialog, click Go to Job Monitor.
In the filter pane, in the Status section, uncheck Running. Two jobs are displayed, an earlier with a Succeeded status, and the one you just started with a Running status.
When both jobs have a Succeeded status, you have the Computer Engine instance.

Note: The job may take five minutes or longer depending on the region you selected.
To view the recovered VM, go to the Google Cloud console, in Navigation menu (Navigation Menu icon), click Compute Engine > VM instances to view three VM instances:

lab-vm
lab-vm-recovered
qwiklabs-appliance
Click Check my progress to verify that you have completed this task correctly.

Restore a Compute Engine instance
Task 6. Restore a Compute Engine instance to an alternate project
In this task, you’ll restore a Computer Engine instance using the back up template you created, but this time to a different project.

You can also create a brand new Compute Engine instance in a different project from backup images.

Note: Before you set the default service account as a Principal in a different project, you must add the default service account as a Principal in the target project.
To restore a Compute Engine instance to an alternate project, you first add the service account of project 1 as a principle to Google Cloud project 2 and then recover the instance on Google Cloud project 2:

In the Google Cloud console, in the Navigation menu (Navigation Menu icon), click IAM & Admin > IAM.
In the list of principals, find and copy the email of the Service account for backup and recovery appliance to use in Step 6. The email is similar to the following: qwiklabs-appliances@qwiklabs-gcp-xx-xxxxxxxxx.iam.gserviceaccount.com.
In the Google Cloud console, click the Project selection drop-down. If the project lists only one project, click All to open the All tab.
Search for Google Cloud project ID 2:PROJECT_ID_2 and then click to select that project ID. You are now in the Permissions page for Google Cloud project ID 2:PROJECT_ID_2.
Click Grant access.
In the Add Principles section, in the New principals field, paste the email address of the service account of Google Cloud project 1, named Service account for backup and recovery appliance. It should be still in your clipboard.
In the Assign roles section:
Click Select a role and assign the Backup and DR > Backup and DR Compute Engine Operator role.
Click +Add Another Role.
Click Select a role and assign the Backup and DR > Backup and DR Cloud Storage Operator role.
Click Save.
You’ve added the service account of Google Cloud project 1 as a principal to Google Cloud project 2. You can now recover the instance on google Cloud project 2.

From the Backup and DR management console, navigate to Backup & Recover > Recover.
Select lab-vm (the Compute Engine instance you want to recover), and click Next.
Note: The green check next to the instance means that instance has been backed up, the red X means it hasn't.
In the action bar, click Table.
In the Images list, select the top image and then click Mount.
Under Mount, select Mount as new GCE instance.
Review the configuration and update the following options:
Project: Change this to PROJECT_ID_2 to simulate recovering to a different project in the Google Cloud.
Instance name: Notice you can use the same instance name because you are in a different Google Cloud project. Update the instance name to lab-vm-project2.
Region: Change this to REGION.
Zone: Change this to ZONE.
Select Mount at the bottom of the panel. A Mount job starts. On the Success dialog, click Go to Job Monitor to monitor the status of this current job. The job may take five minutes or longer depending on what region you selected.
To view the recovered Compute Engine instance in the Google Cloud console of Google Cloud project 2, in the Navigation menu, click Compute Engine > VM instances.
Note: The job may take five minutes or longer to finish.
Note: Before you set the default service account as a Principal in a different project, you must add the default service account as a Principal in the target project.
Click Check my progress to verify that you have completed this task correctly.

Restore a Compute Engine instance to an alternate project
Conclusion
Great work! You successfully used Google Backup and DR Service to create a backup template and then applied it to two Compute Engine instances.

You have shown how to prepare for issues with VMs and the service. When a device malfunctions, you can use Backup and DR Service to restore mal-functioning devices across multiple Google Cloud projects.

End your lab
Before you end the lab, make sure you’re satisfied that you’ve completed all the tasks. When you're ready, click End Lab and then click Submit.

Ending the lab will remove your access to the lab environment, and you won’t be able to access the work you've completed in it again.

Copyright 2022 Google LLC All rights reserved. Google and the Google logo are trademarks of Google LLC. All other company and product names may be trademarks of the respective companies with which they are associated.
