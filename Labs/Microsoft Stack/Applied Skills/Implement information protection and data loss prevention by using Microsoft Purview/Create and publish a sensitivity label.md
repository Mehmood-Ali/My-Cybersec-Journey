# Create sensitivity labels

<img width="879" height="627" alt="image" src="https://github.com/user-attachments/assets/40950679-8701-4b72-bab5-e6e6cf9855c4" />


To create a sensitivity label in Microsoft Purview, navigate to the Microsoft Purview portal > Information Protection > Sensitivity labels and select + Create a label. You'll then define the label's scope (e.g., files, emails) and configure protection settings such as encryption, content marking (headers, footers, watermarks), and access permissions. After creating the label, you must publish it through a label policy to make it available to users in your organization. 

Steps to Create a Sensitivity Label

Access the Microsoft Purview portal . 

Navigate to Information Protection: and select Sensitivity labels. 

Select + Create a label: to begin the process. 
Define the label's scope: by choosing where it will apply, such as files, emails, or meetings. 

Configure Protection Settings : 

Encryption: Set permissions for accessing the content, including user access expiry and offline access. 

Content Marking: Add watermarks, headers, or footers to documents and emails. 

Set label options: such as a display name and description for users and administrators. 

Publish the label: by creating and assigning a label policy to make it active. 

Key Configuration Options

Encryption: You can define who has access (all users, specific users, authenticated users) and set access expiry dates. 

Content Marking: Customize watermarks, headers, and footers for labeled content. 

Automatic Labeling: Configure rules to automatically apply labels based on detected sensitive information, like credit card numbers. 

Container Labels: When applied to groups or sites, labels can control settings like privacy levels and external sharing. 

## Create a sub label

To create a sublabel in Microsoft Purview, you must first select the parent label, and then choose the option to Create sublabel from the label's actions menu. You'll follow a similar process to creating a standard label but will be working within the context of the already selected parent label. After creation, sublabels must be included in a sensitivity label publishing policy to be available to end-users.  

Step-by-step instructions:

Navigate to Sensitivity Labels: Sign in to the Microsoft Purview portal and go to Information Protection > Sensitivity labels. 

Select the Parent Label: Browse to your list of labels and select the parent label under which you want to create the sublabel. 

Create the Sublabel: With the parent label selected, choose ... for Actions and then select Create sublabel. 

Configure the Sublabel: You will then be guided through the same configuration process as creating a regular label, including:

Providing a name and display name for the sublabel. 

Defining the scope for the label (e.g., files, emails). 

Configuring protection settings, such as encryption and content marking (headers, watermarks). 

Setting up automatic labeling and policy tips if desired. 

Publish the Sublabel: After the sublabel is created and configured, it must be published via a sensitivity label publishing policy to make it available to your users. Make sure to include the sublabel in a policy that targets the relevant users or groups. 

Key Considerations:

Parent Label Must Exist First: You can only create a sublabel if the parent label already exists. 

Label Hierarchy: Creating a sublabel establishes a clear hierarchy, giving you more flexibility in managing and applying labels. 

Publishing Policies: Remember that labels, including sublabels, are only available to users after they are published through a publishing policy. 

## Publish a sensitivity label

To publish a sensitivity label in Microsoft Purview, sign in to the Microsoft Purview portal, navigate to Information Protection > Label policies, then select Publish labels. Follow the wizard to choose the sensitivity labels to publish, assign users or administrative units, configure policy settings like default labels or mandatory justification, and then name and submit the policy to make the labels available to users in their apps. 
Here are the detailed steps:

Sign in to the Microsoft Purview portal: Access the portal by going to Microsoft Learn. 

Go to Label Policies: On the left-hand navigation pane, click on Information Protection, then select Label policies. 

Start a New Policy: On the Label policies page, select Publish labels to begin the creation process. 

Select Sensitivity Labels: On the "Choose sensitivity labels to publish" page, select the Choose sensitivity labels to publish link and then choose the specific labels you want to make available, clicking Add to include them in the policy. 

Assign Admin Units (Optional): If your organization uses Microsoft Entra ID administrative units, you can select them here to restrict the policy to specific groups of users or devices. 

Assign Users or Groups: On the "Publish to Users or Groups" page, choose the users and groups that will have access to the labels you selected. 

Configure Policy Settings:

Default Label: Optionally set a default label for documents, emails, and meetings. 

Mandatory Justification: Configure whether users must provide a justification when removing a label or lowering its classification. 

Content Markings: Set up custom headers, footers, or watermarks that will appear on content when a label is applied. 

Help Link: Provide a link to custom help resources for users. 

Name and Submit the Policy: Give your new policy a descriptive name, review the settings, and then select Submit or Publish to create and apply the policy. 

It may take up to 24 hours for the newly published labels to become available to users in applications like Word, Excel, and Outlook. 

## Enable sensitivity labels for files in SharePoint and OneDrive

To enable sensitivity labels for files in SharePoint and OneDrive, sign in to the Microsoft Purview portal as a global administrator, go to Information Protection > Sensitivity labels, and then select Turn on now when prompted to process content in Office online files. Once enabled, you'll need to create the sensitivity labels themselves and then publish them via a label policy to begin applying them to files and SharePoint sites.  
Step-by-step Guide

Sign in to the Microsoft Purview portal .

Navigate to Sensitivity Labels: In the left-hand navigation, select Solutions > Information protection > Sensitivity labels.

Enable the feature: If you see a message indicating that the ability to process content in Office online files isn't enabled, select the Turn on now button to enable this feature for your tenant. This action is immediate and will update the page once completed.

After Enabling the Feature

Create a new sensitivity label by selecting the + Create a label button. 

Configure the label: Follow the prompts to define the label's scope, such as how it applies to files and groups, and what actions (like encryption or watermarking) it should perform. 

Publish the label: Once you've created the label, you'll need to publish it by creating a label policy. This policy determines which users and groups can use the label, and in which locations, such as SharePoint and OneDrive. 

Apply the label: Users can then apply the sensitivity label to files manually, or you can configure auto-labeling policies to apply labels automatically to content matching specific conditions, like the presence of credit card numbers. 
