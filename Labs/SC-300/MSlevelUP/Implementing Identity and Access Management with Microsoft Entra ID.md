# WWL Tenants - Terms of Use

# https://youtu.be/9IsuWoZkKh4

If you are being provided with a tenant as a part of an instructor-led training delivery, please note that the tenant is made available for the purpose of supporting the interactive labs in the instructor-led training. Tenants should not be shared or used for purposes outside of interactive labs. The tenant used in this course is a trial tenant and cannot be used or accessed after the class is over and are not eligible for extension. Tenants must not be converted to a paid subscription. Tenants obtained as a part of this course remain the property of Microsoft Corporation and we reserve the right to obtain access and repossess at any time.

# Two different log in options

# 

This lab has two different log in options, used to different parts of the lab. One log-in style is for labs that require Azure resources, the other is for labs that only need Microsoft Entra and Microsoft 365 resources. Log-in types:

*   Azure Resource based log-in
*   Microsoft 365 + E5 tenant log-in

You will be told which login to use in each of the labs.

# Lab 01: Manage user roles

### Login type = Microsoft 365 admin

## Lab scenario

# 

Your company recently hired a new employee who will perform duties as an application administrator. You must create a new user and assign the appropriate role.

#### Estimated time: 30 minutes

### Exercise 1 - Create a new user and test their application admin rights

#### Task 1 - Add a new user

# 

1.  Sign in to the https://entra.microsoft.com as a Global administrator.

*   Use the **Microsoft 365 admin** account.

1.  In the menu on the left select **Identity**.
    
2.  In the left navigation menu, under **Users**, select **All Users**, then select **\+ New User** and **Create new user**.
    
3.  Mark the **Create user** button. Then, create a user with the following information:
    
    | Setting | Value |
    | --- | --- |
    | User principal name | ChrisG |
    | Display Name | Chris Green |
    
4.  Mark the **Auto-generate password** option.
    
5.  Copy the generated password to a location you can remember it for the next task.
    
    _You will have to change the password upon first login to this account_
    
6.  Select **Review + Create**. Then select **Create** on the review screen. The user is now created and registered to your organization.
    

#### Task 2 - Login and try to create an app

# 

1.  Launch a new InPrivate browser window.
    
2.  Open the Microsoft Entra admin center https://entra.microsoft.com as Chris Green.
    
    | Setting | Value |
    | --- | --- |
    | User name | ChrisG@your domain name.com |
    | Password | Enter the auto-generated password from previous task. |
    
3.  Update your password.
    
    | Setting | Value |
    | --- | --- |
    | Current Password | Use auto-generated password |
    | New Password | Enter a unique and secure password |
    | Confirm Password | Reenter a unique and secure password |
    
4.  Search on and select **Enterprise applications** in the search dialog at the top of the screen.
    
5.  Select on **\+ New application**. Notice that **\+ Create your own application** is unavailable.
    
6.  Try Selecting on some of the other settings like **Application Proxy**, **User settings**, and others to see that **Chris Green** does not have rights.
    
7.  Select on **ChrisG** name in the upper-right corner and sign out.
    

### Exercise 2 - Assign the application admin role and create an app

#### Task 1 - Assign a role to a user

# 

Using Microsoft Entra ID, you can designate limited administrators to manage identity tasks in less-privileged roles. Administrators can be assigned for such purposes as adding or changing users, assigning administrative roles, resetting user passwords, managing user licenses, and managing domain names.

1.  If you are not already logged in as a Global Administrator role, open the Microsoft Entra admin center and log in.
    
2.  Navigate to Identity and then select Users page.
    
3.  Select on **All users** under the Manage section of the menu.
    
4.  Select on **Chris Green** account.
    
5.  Choose **Assigned roles** from the Manage menu.
    
6.  Select **\+ Add assignments** and mark the `Application administrator` role.
    
7.  Select **Add**
    
    ![Assigned roles page - showing the selected role](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/directory-role-select-role.png)
    
    **Note** \- If the lab environment has already activated Microsoft Entra ID Premium P2, Privileged Identity Management (PIM) will be enabled and you wll need to select **Next** and assign a Permanent role to this user.
    

9.Select the **Refesh** button.

**Note - The newly assigned Application administrator role appears on the user’s Assigned roles page.**

#### Task 2 - Check application permissions

# 

1.  Launch a new InPrivate browser window.
    
2.  Open the Microsoft Entra admin center [https://entra.microsoftcom](https://entra.microsoft.com/) as Chris Green.
    
    | Setting | Value |
    | --- | --- |
    | User name | ChrisG@your domain name.com |
    | Password | Enter the unique and secure password you created earlier |
    
3.  If you see a **Welcome to Microsoft Azure** tour dialog, Select the **Maybe Later** button.
    
4.  Search on and select **Enterprise applications** in the search dialog at the top of the screen.
    
5.  Notice that **\+ New Application** is available now.
    
6.  Select **\+ New Application**
    
7.  View the **"**\+ Create your own application\*\* is not grayed out. If you pick a gallery app, you will see the **Create** button is available.
    
    **Note - This role now has the ability to add applications to the tenant. We will experiment more with this feature in later labs.**
    
8.  Sign out of the Chris Green instance of the portal and close the browser.
    

### Exercise 3 - Remove a role assignment

#### Task 1 - Remove the application administrator from Chris Green

# 

This task will use an alternative method to remove the assigned role; it will use the **Roles and administrators** option in Micrisoft Entra ID.

1.  If you are not already logged in as your Global Admin, launch the Microsoft Entra admin center and log in now.
2.  In the search box type **Roles and** then launch Microsoft Entra ID roles and administration.
3.  In **All roles** of **Roles and administrators**, select the **Application administrator** role from the list.
4.  On the **Application administrator | Assignments** page you should see Chris Green's name listed.
5.  Put a check in the box next to Chris Green.
6.  Select **X Remove assignments** from the options at the top of the dialog.
7.  Answer **Yes** when the confirmation box opens.
8.  Close the screen.

### Exercise 4 - Bulk import of users

#### Task 1 - Bulk operations for creating users with a .csv file

# 

1.  In the Microsoft Entra ID menu, first open **Identity**, then select **Users** and then select **All users**.
    
2.  On the **Users | All users** tile, select the **Bulk operations** drop-down arrow and then **Bulk create**.
    
3.  Selecting **Bulk create** will open a new tile. This tile provides a **Download** link to a template file that you will edit to populate with your user information and upload to add the bulk creation of users.
    
4.  Select **Download** to download the .csv file.
    
5.  The .csv template provides you with the fields included with the user profile. This includes the required username, display name, and initial password. You can also complete optional fields, such as Department and Usage location, at this time. The following screenshot is an example of how you can complete the .csvfile:
    
    ![Bulk import using csv file entry](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/bulkimportexample.png)
    
    You can modify this file to add users in bulk. Note that you do not need to fill out all the field. As per the sample data provide, you mainly need to add the name and username information.
    
6.  A sample CSV has been provided in the Allfiles/Lab1 folder -- **SC300BulkUser.csv**.
    
    1.  Open Notepad.
    
    *   Inside the lab environment, select the START button and type Notepad.
    
    1.  Open the SC300BulkUser.csv file
    2.  Change the **enter your domain name** to the domain of your Azure lab environment.
    3.  Save the file.
7.  On the **Bulk create users** dialog, select the file folder icon on step 3.
    
8.  Path to the Allfiles/Lab1 folder and select **SC300BulkUser.csv** file.
    
9.  Select **Open**.
    
10.  You will be notified that the file uploaded successfully.  Choose **Submit** to add the users.
    

After the users have been created, you will be prompted that the creation has succeeded. Close the Bulk create users tile and the new users will be populated in the list of **Users | All users**.

#### Task 2 - Bulk addition of users using PowerShell

# 

1.  Open PowerShell as an administrator.  This can be done by searching for PowerShell in Windows and choosing Run as administrator.
    
    **Note** \- You need to have PowerShell version 7.2 or higher for this lab to function. When PowerShell opens you will get a version at the top of the screen, if you are running and older version, follow the instructions on the screen to go to https://aka.ms/PowerShell-Release?tag=7.3.9. Scroll down to the assets section and select powershell-7.3.1-win-x64.msi. When the download has completed, select Open file. Install using all the defaults.
    
2.  You will need to Install the Microsoft.Graph PowerShell module if you have not used it before. Run the following two commands and when prompted to confirm press Y:
    
    TypeCopy
    
    `Install-Module Microsoft.Graph`
    
3.  Confirm the Microsoft.Graph module is installed:
    
    TypeCopy
    
    `Get-InstalledModule Microsoft.Graph`
    
4.  Next, you will need to login to Azure by running:
    
    TypeCopy
    
    `Connect-MgGraph -Scopes "User.ReadWrite.All"`
    
    The Edge browser will open and you will be prompted to sign-in. Use the MOD Administrator account to connect. Accept the permissions request; then close the browser window.
    
5.  To verify that you are connected and to see existing users, run:
    
    TypeCopy
    
    `Get-MgUser` 
    
6.  To assign a common temporary password to all new users, run the following command and replace the with the password that you would like to provide to your users.
    
    TypeCopy
    
    `$PWProfile = @{     Password = "<Enter a complex password you will>";     ForceChangePasswordNextSignIn = $false }`
    
7.  You are ready to create a new users. The following command will be populated with the user information and run. If you have more than one user to add, you can use a notepad txt file to add the user information and copy/paste into PowerShell.
    
    TypeCopy
    
    ``New-MgUser `     -DisplayName "New PW User" `     -GivenName "New" -Surname "User" `     -MailNickname "newuser" `     -UsageLocation "US" `     -UserPrincipalName "newuser@<labtenantname.com>" `     -PasswordProfile $PWProfile -AccountEnabled `     -Department "Research" -JobTitle "Trainer"``
    
    **Note** \- Replace **labtenantname.com** with the **onmicrosoft.com** name assigned by the lab tenant.
    

## Experiment with managing users

# 

You can add and remove users with the Microsoft Entra ID page. However, users can be created and roles can be assigned using the scripting. Experiment with giving the Chris Green user account a different role using script.

### Exercise 5 - Remove a user from Microsoft Entra ID

#### Task 1 - Remove a User

# 

It may happen that an account is deleted and then needs to be recovered. You need to verify you can recover an account that has been deleted recently.

1.  Browse to https://entra.micrososft.com.
    
2.  In the left navigation, under **Identity**, select **Users**.
    
3.  Open the **All users** list, select the check box for a user that will be deleted. For example, select **Chris Green**.
    
    **Tip** \- Selecting users from the list allows you to manage multiple users at the same time. If you select the user, to open that user’s page, you will only be managing that individual user.
    
    ![Screen image displaying the All users users list with one user check box selected and another check box highlighted indicating the ability to select multiple users from the list.](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod2-remove-user.png)
    
4.  With the user account selected, on the menu, select **Delete**.
    
5.  Review the dialog box and then select **OK**.
    

#### Task 2 - Restore a deleted user

# 

1.  In the Users page,select **All User** in the left navigation, select **Deleted users**.
    
2.  Review the list of deleted users and select **Chris Green**.
    
    **Important** \- By default, deleted user accounts are permanently removed from Azure Active Directory automatically after 30 days.
    
3.  On the menu, select **Restore user**.
    
4.  Review the dialog box and then select **OK**.
    
5.  In the left navigation, select **All users**.
    
6.  Verify the user has been restored.
    

### Exercise 6 - Add a Windows 10 license to a user account

#### Task 1 - Find your unlicensed user in Azure Active Directory

# 

Some user accounts in your organization will not be provided all available products in their assigned license or will need updates or additions to their license assignment. You need to ensure you are able to update a user account's license assignment in Microsoft Entra ID.

1.  Browse to https://entra.microsoft.com.
    
2.  In the left navigation, under **Identity**, select **Users**, then select **All users**.
    
3.  In the Users page, enter **Raul** into the search box.
    
4.  Select on **Raul Razo**.
    
5.  Review Raul's profile and ensure he has a Usage Location set.
    
    **Warning** \- To assign a license to a user, the user must assigned a usage location.
    
6.  Select the **Licenses** menu item in the menu on the left.
    
7.  Ensure that Raul has "No license assignments found."
    

#### Task 2 - Add a Windows license to Raul

# 

You have to add and remove licenses via the Microsoft 365 admin center. This is a relatively new change.

1.  Open a new tab in your browser.
    
2.  Connect to the Microsoft 365 admin center at http://admin.microsoft.com.
    
3.  Log in as your administrator account if prompted.
    
4.  From the menu on the left, select **Billing** and then select **Licenses**.
    
5.  Select **Windows 10/11 Enterprise E3** license from the list.
    
6.  Choose the **\+ Add license** item.
    
7.  Search for **Raul Razo** in the list.
    
8.  Once you have added Raul, select **Assign**.
    
9.  Return to the browser tab with **Microsoft Entra admin center** open.
    
10.  Navigate back to the **All Users** in the left navigation, under **Identity**, select **Users**
    
11.  In the Users page, select **Raul Razo**.
    
12.  In the left navigation, select **Licenses**.
    
13.  Notice that the license has been assigned.
    
14.  You can exit out of the license screen.
    

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

-------------------

# Lab 02: Working with tenant properties

### Login type = Microsoft 365 admin

## Lab scenario

# 

You need to identify and update the different properties associated with your tenant.

#### Estimated time: 15 minutes

### Exercise 1 - Create a custom subdomains

#### Task 1 - Create a custom subdomain name

# 

You would use Microsoft Entra ID to create a domain that you have purchased. If you want to create a subdomain to divide your existing .onmicrosoft.com domain, you have to use the Microsoft 365 admin center.

1.  Browse to the https://entra.microsoft.com and sign in using a Global administrator account for the directory.
    
2.  In the **Identity** menu, use the **Show more** option at the bottom.
    
3.  Open the **Settings** menu, select **Domain names**.
    
4.  Select **\+ Add custom domain**.
    
5.  In the **Custom domain name** field, create a custom subdomain for the lab tenant by putting **sales** in front of the **onmicrosoft.com** domain name. The format will look similar to this:
    
    TypeCopy
    
    `mydomain.com`
    
6.  **Note** \- You will be prompted to open the Microsoft 365 Admin center to complete this action.
    
7.  Select **Add domain** to add the subdomain.
    
8.  Enter the subdomain name `sales.tenantname.onmicrosoft.com` into the dialog.
    
9.  Select the **Use this domain** button at the bottom of the screen.
    
10.  Select the **Close** button when the next screen opens up. For the purpose of this lab we will not set up the DNS.
    

### Exercise 2 - Changing the tenant display name

#### Task 1 - Set the tenant name and technical contact

# 

1.  From within Microsoft Entra admin center, open the **Identity** menu.
    
2.  In the left navigation, select **Overview** menu item, then select **Properties**.
    
3.  Change the Tenant Properties for the **Name** and **Technical contact** in the dialog.
    
    | Setting | Value |
    | --- | --- |
    | Name | Contoso Marketing |
    | Technical contact | your Global admin account |
    
4.  Select **Save** to update the tenant properties.
    
    **You will notice the name change immediately upon completion of the save.**
    

#### Task 2 - Review the Country or region and other values associated with your tenant

# 

1.  In the **Identity** menu, select **Overview**, then select **Properties**.
    
2.  Under **Tenant properties**, locate **Country or region** and review the information.
    
    **IMPORTANT** \- When the tenant is created, the Country or region are specified at that time. This setting cannot be changed later.
    
3.  In the **Properties** page, under **Tenant properties**, locate **Location** and review the information.
    
    ![Screen image showing the Azure Active Directory Properties page with the Country or region and Location settings highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/azure-active-directory-properties-country-location.png)
    

#### Task 3 - Finding the tenant ID

# 

Azure subscriptions have a trust relationship with Microsoft Entra ID. Microsoft Entra ID is trusted to authenticate users, services, and devices for the subscription. Each subscription has a tenant ID associated with it, and there are a few ways you can find the tenant ID for your subscription.

1.  Open the Microsoft Entra admin center https://entra.microsoft.com
    
2.  In the **Identity** menu, select **Overview**, then select **Properties**.
    
3.  Under **Tenant properties**, locate **Tenant ID**. This is your unique tenant identifier.
    
    ![Screen image displaying the Tenant properties page with the Tenant ID box highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/portal-tenant-id.png)
    

### Exercise 3 - Setting your privacy information

#### Task 1 - Adding your privacy info on Microsoft Entra ID, including Global privacy contact and Privacy statement URL

# 

Microsoft strongly recommends you add both your global privacy contact and your organization's privacy statement, so your internal employees and external guests can review your policies. Because privacy statements are uniquely created and tailored for each business, we strongly recommend you contact a lawyer for assistance.

**NOTE** \- For information about viewing or deleting personal data, see [https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-azure](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-azure). For more information about GDPR, see the [https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted).

You add your organization's privacy information in the **Properties** area of Microsoft Entra ID. To access the Properties area and add your privacy information:

1.  In the **Identity** menu, select **Overview**, then select **Properties**.
    
    ![Screen image displaying tenant properties with the Technical contact, Global contact, and Privacy statement boxes highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/properties-area.png)
    
2.  Add your privacy info for your employees:
    

*   **Global privacy contact** \- `AllanD@` **your Azure lab domain**
    
    *   Allan Deyoung is a built-in users in your Azure lab tenant who works as an IT Admin, we will use him as the Privacy contact.
    *   This person is also who Microsoft contacts if there's a data breach. If there's no person listed here, Microsoft contacts your global administrators.
*   **Privacy statement URL** \- https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/blob/master/Allfiles/Labs/Lab2/SC-300-Lab\_ContosoPrivacySample.pdf
    
    *   In sample Privacy PDF is provided in your labs directory. - Type the link to your organization's document that describes how your organization handles both internal and external guest's data privacy.
    
    **IMPORTANT** \-If you don't include either your own privacy statement or your privacy contact, your external guests will see text in the Review Permissions box that says,  has not provided links to their terms for you to review. For example, a guest user will see this message when they receive an invitation to access an organization through B2B collaboration.
    
    ![B2B Collaboration Review permissions box with message](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/active-directory-no-privacy-statement-or-contact.png)
    

1.  Select **Save**.

#### Task 2 - Check your Privacy Statement

# 

1.  Return to the Azure Home screen - Dashboard.
    
2.  In the upper-right corner of the UI, Select on your username.
    
3.  Choose **View account** from the dropdown menu.
    
    **A new browser tab will open automatically.**
    
4.  Select the **Settings & Privacy** on the left menu.
    
5.  Select **Privacy**.
    
6.  Under **Organization's notice** select the **View** item next to Contoso Marketing organizational privacy statement.
    
    **A new browser tab will open with the Prvacy PDF file you linked to displayed.**
    
7.  Review the sample Privacy statement.
    
8.  Close the browser tab with the PDF in it.
    
9.  Close the browser tab displaying the **My Account** items.
    

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

----------------------

# Lab 03: Assigning licenses using group membership

### Login type = Microsoft 365 admin

## Lab scenario

# 

Your organization has decided to use security groups in Microsoft Entra ID to manage licenses. You need to configure a new security group and assign a license to that group and verify group member license's have been updated.

#### Estimated time: 25 minutes

### Exercise 1 - Create a security group and add a user

#### Task 1 - Check to see if Delia Dennis has access to Office 365

# 

1.  Launch a new InPrivate browser window.
    
2.  Connect to https://www.office.com.
    
3.  Select Sign in and connect as Delia Dennis.
    
    | Setting | Value |
    | --- | --- |
    | Username | DeliaD@your domain name.com |
    | Password | Enter the password of the Global Admin from the Resources |
    
4.  You should connect to the Office.com website, but see a message indicating you don't have a license.
    
    ![Screen image the Office.com website with Delia Dennis logged in but no office applications are available, because no license is assigned.](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/delia-no-office-license.png)
    
5.  Close the browser window.
    

#### Task 2 - Create a security group in Microsoft Entra ID

# 

1.  Browse to https://entra.microsoft.com.
    
2.  In the left navigation, under **Identity**, select **Groups**, then select **All groups**.
    
3.  In the Groups page, on the menu, select **New group**.
    
4.  Create a group using the following information:
    
    | Setting | Value |
    | --- | --- |
    | Group type | Security |
    | Group name | sg-SC300-O365 |
    | Membership type | Assigned |
    | Owners | Assign your own administrator account as the group owner |
    
5.  Select the **No members selected** text under Members.
    
6.  Select **Delia Dennis** from the list of users.
    
7.  Select the **Select** button.
    
    ![Screen image displaying the New Group page with Group type, Group name, Owners, and Members highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod2-create-group.png)
    
8.  Select the **Create** button.
    
9.  When complete, verify the group named **sg-SC300-O365** is shown in the **All groups** list.
    

#### Task 3 - Add an Office license to sg-SC300-O365

# 

You have to add and remove licenses via the Microsoft 365 admin center. This is a relatively new change.

1.  Open a new tab in your browser.
    
2.  Connect to the Microsoft 365 admin center at http://admin.microsoft.com.
    
3.  Log in as your administrator account if prompted.
    
4.  From the menu on the left, select **Billing** and then select **Licenses**.
    
5.  Select **Office 365 E3** license from the list.
    
6.  Select the **Groups** tab on the licensing screen.
    
7.  Choose the **\+ Add license** item.
    
8.  Search for **sg-SC300-O365** group the select it from the list.
    
9.  Once you have added Raul, select **Assign**.
    
10.  Close the confirmation message.
    
11.  Return to the browser tab with **Microsoft Entra admin center** open.
    
12.  Navigate back to the **All groups** in the left navigation, under **Identity**, select **Groups**
    
13.  In the Users page, select **sg-SC300-O365**.
    
14.  In the left navigation, select **Licenses**.
    
15.  Notice that the Office 365 E3 license has been assigned.
    
16.  You can exit out of the license screen.
    

#### Taks 4 - Confirm the Office 365 license

# 

1.  Launch a new InPrivate browser window.
    
2.  Connect to https://www.office.com.
    
3.  Select Sign in and connect as Delia Dennis.
    
    | Setting | Value |
    | --- | --- |
    | Username | DeliaD@your domain name.com |
    | Password | Enter the password of the Global Admin from the Resources |
    
4.  You should connect to the Office.com website, and see no messages regarding license. All of the Office applications are available on the left.
    
    ![Screen image the Office.com website with Delia Dennis logged in with office applications available, because a license is assigned.](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/delia-office-license.png)
    
5.  Close the browser window.
    

### Exercise 2 - Create a Microsoft 365 group in Microsoft Entra ID

#### Task 1 - Create the group

# 

Part of your duties as an Microsoft Entra administrator is to create different types of groups. You need to create a new Microsoft 365 group for your organization's sales department.

1.  Browse to https://entra.microsoft.com.
    
2.  In the left navigation, under **Identity**, select **Groups**, then select **All Groups**.
    
3.  In the Groups page, on the menu, select **New group**.
    
4.  Create a group using the following information:
    
    | Setting | Value |
    | --- | --- |
    | Group type | Microsoft 365 |
    | Group name | Northwest Sales |
    | Membership type | Assigned |
    | Owners | Assign your own administrator account as the group owner |
    | Members | Alex Wilber and Bianca Pisani |
    
    ![Screen image displaying the New Group page with Group type, Group name, Owners, and Members highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod2-create-o365-group.png)
    
5.  When complete, verify the group named **Northwest sales** is shown in the **All groups** list.
    

### Exercise 3 - Creating a dynamic group with all users as members

#### Task 1 - Create the dynamic group

# 

As your company grows, manually group management is too time consuming. Since standardizing the directory, you can now take advantage of dynamic groups. You must create a new dynamic group to ensure you're ready for dynamic group creation in production.

1.  Sign in to the https://entra.microsoft.com with an account that is assigned the Global administrator or User administrator role in the tenant.
    
2.  Select **Identity**.
    
3.  Under **Groups**, select **All groups**, and then select **New group**.
    
4.  On the New Group page, under **Group type**, select **Security**.
    
5.  In the **Group name** box, enter **SC300-myDynamicGroup**.
    
6.  Select the **Membership type** menu and then select **Dynamic User**.
    
7.  Select an **Owner** for the group.
    
8.  Under **Dynamic user members**, select **Add dynamic query**.
    
9.  On the right above the **Rule syntax** box, select **Edit**.
    
10.  In the Edit rule syntax pane, enter the following expression in the **Rule syntax** box:
    
    powershellTypeCopy
    
    `user.objectid -ne null`
    
    **Warning** \- the `user.objectid` is case sensitive.
    
11.  Select **OK**. The rule appears in the Rule syntax box.
    
    ![Screen image displaying the dynamic group membership rules page with rule syntax highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-dynamic-group-membership-rule.png)
    
12.  Select **Save**. The new dynamic group will now include B2B guest users as well as member users.
    
13.  On the New group page, select **Create** to create the group.
    

#### Task 2 - Verify the members have been added

# 

**Note** \- The population of Dynamic group membership may take up to 15 minutes.

1.  Select on the **Home** `Microsoft Entra admin center`.
2.  Launch **Identity**.
3.  In the **Groups** menu Select on **All groups**.
4.  In the filter box type **SC300** and your newly created group will be listed.
5.  Select on **SC300-myDynamicGroup** to open the group.
6.  Notice that it shows that it contains 30+ _\*Direct members_.
7.  Select on **Members** in the **Manage** menu.
8.  Review the members.

#### Task 3 - Experiment with alternate rules

# 

1.  Try making a group with only **Guest** users:
    
    *   (user.objectid -ne null) and (user.userType -eq "Guest")
2.  Try make a group with only **Members** of the Microsoft Entra users.
    
    *   (user.objectid -ne null) and (user.userType -eq "Member")

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

------------

# Lab 04: Configure external collaboration settings

### Login type = Microsoft 365 admin

## Lab scenario

You must enable external collaboration settings for your organization for approved guests access.

#### Estimated timing: 5 minutes

### Exercise 1 - Allowing guest users to be invited into your organization

#### Task 1 - Enable Guest Users to perform self service sign-up

1.  Sign in to the https://entra.microsoft.com as a tenant administrator.
2.  Select **Identity**, then select **Users**.
3.  Open the **All users** menu item, then select **User Settings**.
4.  Select **Manage external user collaboration settings**.
5.  Ensure that **YES** is marked for the setting **Enable guest self-service sign up via user flows**.
6.  Select **Save** at the top of the screen.

#### Task 2 - Configure external collaboration settings

1.  Sign in to the https://entra.microsoft.com as a tenant administrator.
    
2.  Select **Identity**.
    
3.  Select **External Identities**, and then select **All identity providers**.
    
4.  Select the **Email one-time passcode** notification link you see near the top of the screen.
    
    **Note** - A one-time passcode is a very secure way to invite a user to join your organization.
    
5.  Ensure that **Yes** is selected.
    
6.  Select **Save** if needed.
    
7.  Return to the **External Identities** menu.
    
8.  Select **External Collaboration Settings** on the left
    
9.  Under **Guest user access**, review access levels that are available and then select **Guest user access is restricted to properties and memberships of their own directory objects (most restrictive)**.
    
    **NOTE**
    
    *   Guest users have the same access as members (most inclusive): This option gives guests the same access to Microsoft Entra resources and directory data as member users.
    *   Guest users have limited access to properties and memberships of directory objects: (Default) This setting blocks guests from certain directory tasks, like enumerating users, groups, or other directory resources. Guests can see membership of all non-hidden groups.
    *   Guest user access is restricted to properties and memberships of their own directory objects (most restrictive): With this setting, guests can access only their own profiles. Guests are not allowed to see other users' profiles, groups, or group memberships.
    
    ![Screen image displaying guest user access restriction options](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-guest-user-access-restrictions.png)
    
10.  Under **Guest invite settings**, select **Member users and users assigned to specific admin roles can invite guest users including guests with member permissions**!
    
    **NOTE**
    
    *   Anyone in the organization can invite guest users including guests and non-admins (most inclusive): To allow guests in the organization to invite other guests including those who are not members of an organization, select this radio button.
    *   Member users and users assigned to specific admin roles can invite guest users including guests with member permissions: To allow member users and users who have specific administrator roles to invite guests, select this radio button.
    *   Only users assigned to specific admin roles can invite guest users: To allow only those users with administrator roles to invite guests, select this radio button. The administrator roles include Global Administrator, User Administrator, and Guest Inviter.
    *   No one in the organization can invite guest users including admins (most restrictive): To deny everyone in the organization from inviting guests, select this radio button.
    *   If Members can invite is set to No and Admins and users in the guest inviter role can invite is set to Yes, users in the Guest Inviter role will still be able to invite guests.
    
    ![Screen image displaying guest invite settings with Guests can invite set to No and highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-guest-user-invite-settings.png)
    
11.  Under **Collaboration restrictions**, review the available options and accept the default settings.
    
    **IMPORTANT**
    
    *   You can create either an allow list or a deny list. You can't set up both types of lists. By default, whatever domains are not in the allow list are on the deny list, and vice versa.
    *   You can create only one policy per organization. You can update the policy to include more domains, or you can delete the policy to create a new one.
    *   The number of domains you can add to an allow list or deny list is limited only by the size of the policy. The maximum size of the entire policy is 25 KB (25,000 characters), which includes the allow list or deny list and any other parameters configured for other features.
    *   This list works independently from OneDrive for Business and SharePoint Online allow/block lists. If you want to restrict individual file sharing in SharePoint Online, you need to set up an allow or deny list for OneDrive for Business and SharePoint Online.
    *   The list does not apply to external users who have already redeemed the invitation. The list will be enforced after the list is set up. If a user invitation is in a pending state, and you set a policy that blocks their domain, the user's attempt to redeem the invitation will fail.
12.  When finished, **Save** your changes.
    

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

------------------

# Lab 05: Add guest users to the directory

### Login type = Microsoft 365 admin

## Lab scenario

# 

Your company works with many vendors and, on occasion, you need to add some vendor accounts to your directory as a guest.

#### Estimated time: 20 minutes

### Exercise 1 - Add guest users to the directory

#### Task - Add the guest user

# 

1.  Sign in to the https://entra.microsoft.com as a user who is assigned a limited administrator directory role or the Guest Inviter role, or as Global Administrator.
    
2.  Select **Identity**.
    
3.  Under **Users**, select **All users**.
    
4.  Select **\+ New user**.
    
5.  On the New user menu, select **Invite external user** and then add your information as the guest user.
    
    **NOTE** \- Group email addresses are not supported; enter the email address for an individual. Also, some email providers allow users to add a plus symbol (+) and additional text to their email addresses to help with things like inbox filtering. However, Microsoft Entra ID does not currently support plus symbols in email addresses. To avoid delivery issues, omit the plus symbol and any characters following it up to the @ symbol.
    
6.  Enter an email address, such as **sc300externaluser1@sc300email.com**.
    
7.  Select the **Properties** tab.
    
8.  On the Users page, verify your account is listed and, in the **User type** column, verify **Guest** is shown.
    
9.  When complete, select **Review + Invite**, then select **Invite**.
    

After you send the invitation, the user account is automatically added to the directory as a guest.

### Exercise 2 - Invite guest users in bulk

#### Task 1 - Bulk user invite

# 

A recent partnership has been established with another company. For now, employees of the partner company will be added as guests. You need to ensure you can import multiple guest users at one time.

1.  Sign in to the https://entra.microsoft.com as your Global Administrator.
    
2.  In the navigation pane, select **Identity**.
    
3.  Under **Users**, select **All users**.
    
4.  On the Users page, on the menu, select **Bulk operations > Bulk invite**.
    
    ![Screen image displaying the All user page with the Bulk operations and Bulk invite menu options highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-bulk-invite-option.png)
    
5.  In the Bulk invite users pane, select **Download** to a sample CSV template with invitation properties.
    
6.  Using an editor to view the CSV file, review the template.
    
7.  Open the .csv template and add a line for each guest user. Required values are:
    
    *   **Email address to invite** \- the user who will receive an invitation
    *   **Redirection url** \- the URL to which the invited user is forwarded after accepting the invitation.
    
    ![Screen image displaying the example bulk invite guests template CSV](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-template-csv.png)
    
8.  Save the file.
    
9.  On the Bulk invite users page, under **Upload your csv file**, browse to the file.
    
    **Note** \- When you select the file, validation of the .csv file starts.
    
10.  After the file contents are validated, you will see **File uploaded successfully**. If there are errors, you must fix them before you can submit the job.
    
    ![Screen image displaying Bulk invite users with File uploaded successfully message highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-bulk-invite-users-upload-csv.png)
    
11.  When your file passes validation, select **Submit** to start the Azure bulk operation that adds the invitations.
    
12.  To view the job status, select **Select here to view the status of each operation**. Or, you can select **Bulk operation results** in the Activity section. For details about each line item within the bulk operation, select the values under the **\# Success**, **\# Failure**, or **Total Requests** columns. If failures occurred, the reasons for failure will be listed.
    
    ![Screen image displaying the results of a bulk operation](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp1-mod3-bulk-operations-results.png)
    
13.  When the job completes, you will see a notification that the bulk operation succeeded.
    

#### Task 2 - Invite guest users with PowerShell

# 

1.  Open PowerShell as an administrator.  This can be done by searching for PowerShell in Windows and choosing Run as administrator.
    
    **Note** - You need to have PowerShell version 7.2 or higher for this lab to function. When PowerShell opens you will get a version at the top of the screen, if you are running and older version, please update or this portion of the lab will fail.
    
2.  You will need to Install the Microsoft.Graph PowerShell module if you have not used it before. Run the following two commands and when prompted to confirm press Y:
    
    TypeCopy
    
    `Install-Module Microsoft.Graph`
    
3.  Confirm the Microsoft.Graph module is installed:
    
    TypeCopy
    
    `Get-InstalledModule Microsoft.Graph`
    
4.  Next, you will need to login to Azure by running:
    
    TypeCopy
    
    `Connect-MgGraph -Scopes "User.ReadWrite.All"`
    
    The Edge browser will open and you will be prompted to sign-in. Use the MOD Administrator account to connect. Mark the consent box, then accpet the permissions request; then close the browser window.
    
5.  Set the values for the email and redirect for the External user:
    
    TypeCopy
    
    `Import-Module Microsoft.Graph.Identity.SignIns  $params = @{     invitedUserEmailAddress = "admin@fabrikam.com"     inviteRedirectUrl = "https://myapp.contoso.com" }`
    
6.  Sent the MgInvitation command to invite the External user:
    
    TypeCopy
    
    `New-MgInvitation -BodyParameter $params`
    
7.  You can close PowerShell at this point.
    

You now know how to invite users within the Microsoft Entra admin center, Microsoft 365 Admin center, Bulk invitations with a csv file, and inviting users with PowerShell commands. You can go into the Microsoft Entra admin center, and check All Users to see that ADMIN has been added as an external suer.

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

---------------

Lab 06: Add a federated identity provider
Login type = Microsoft 365 admin
Lab scenario
Your company works with many vendors and, on occasion, you need to add some vendor accounts to your directory as a guest and allow them to use their Google account to sign-in.

Estimated time: 25 minutes
Exercise 1 - Configure identity providers
Task 1 - Configure Google to be used as an identity provider
Important Note - For this exercise, you will need a Gmail account on Google. Create a new Google account and then follow the steps for the exercise. Be sure to note the email address and password, they are necessary to complete the lab.

Go to the Google APIs at https://console.developers.google.com, and sign in with your Google account. We recommend that you use a shared team Google account.

Accept the terms of service if you're prompted to do so.

Create a new project:

At the top of the page, select the project menu to open the Select a project page. Choose New Project. Leave the remaining fields with the default settings.

On the New Project page, give the project a name (for example, MyB2BApp), and then select Create.

Open the new project by selecting the link in the Notifications message box or by using the project menu at the top of the page.

In the left menu, select APIs & Services, and then select OAuth consent screen.

Under User Type, select External, and then select Create.

On the OAuth consent screen, under App information, enter an App name, such as Microsoft Entra ID.

Under User support email, select an email address. This should include the email address that you used to log into Google.

Under Authorized domains, select + Add domain, and then add the microsoftonline.com domain.

TypeCopy
microsoftonline.com
Under Developer contact information, enter the email address for the lab account that you used to sign into the portal.

Select Save and continue.

In the left menu, select Credentials.

Select + Create credentials, and then select OAuth client ID.

In the Application type menu, select Web application. Give the application a suitable name, like Microsoft Entra B2B. Under Authorized redirect URIs, add the following URIs:

TypeCopy
https://login.microsoftonline.com

https://login.microsoftonline.com/te/**tenant ID**/oauth2/authresp
   (where <tenant ID> is your tenant ID)

https://login.microsoftonline.com/te/**tenant name**.onmicrosoft.com/oauth2/authresp
   (where <tenant name> is your tenant name)
Select Create. Copy your client ID and client secret. You'll use them when you add the identity provider in the Azure portal.

You can leave your project at a publishing status of Testing.

Task 2 - Add a test user
Select the OAuth consent screen under APIs and Services menu.

In the Test Users* section of the page, choose + Add Users**.

Enter the gmail account you created (or are using) for this lab.

Select Save

Exercise 2 - Configure Azure to work with an External identity provider
Task 1 - Configure Microsoft Entra ID for Google federation
Sign in to the https://entra.microsoft.com as an admin.

Select Microsoft Entra ID.

Under Identity, select External Identities.

Choose All identity providers from the menu on the left.

Microsoft provides a direct federation for Google as an identity provider.  This can be initiated by selecting + Google from the External Identities | All identity providers page

After selecting + Google, another page will open with additional information that is required to configure Google as an identity provider.

Enter the Client ID and Client secret you obtained earlier.

Select Save.

This completes the configuration of Google as an identity provider.

Task 2 - Invite you Test User account
If you used an existing Gmail account, remember to delete the account with External Identities | All identity providers. You can also return to the Google developer console and delete the project that you created.

Open Microsoft Entra ID.

Go to Users and select All users.

Select + New User.

Choose Invite external user from the dropdown menu.

Enter the information for the gmail account you set up as a test user for the Google App in Exercise 1 Task 2.

Enter a personal message as you want.

Select Invite.

Task 3 - Accept the invitation and login
Use an InPrivate browser to log into your gmail account.

Open the Microsoft Invitation on behalf of in the Inbox.

Select the Accept invitation link in the message.

Enter your username and password as requested in the login dialog (if requested). NOTE If the ferderation is working correctly, this is where you will see the first results of your new Google External Identity provider. You will go to the login screen and be able to log in with your gmail credentials. If the federation is not work, or has not been set up, the user would be sent and ACCOUNT VERIFICATION email after the log in, to confirm the account. With the federation, no extra verification is needed.

NOTE If you get an access error 500, wait about 30 seconds and refresh the page. Choose to RESUBMIT. This error is a timing issue only in the lab environment.

Read over the new Permissions requested by: message that you get. This message is coming from your Azure Lab Domain.

Choose Accept.

Once login is complete, you will be sent My Apps.

Task 4 - Login to Microsoft 365 using your Google account
Once you have finished the external user invite process of Task 3, you can log directly into Microsoft Online.

Open a new tab in the browser you have open. NOTE if you did not open a new InPrivate browser in Task 3, you should do so for this step.

Enter the following web address:

TypeCopy
login.microsoftonline.com
Select Sign-in options on the dialog.

Choose Sign in to an organization.

Enter your lab tenant domain name in the box and select Next.

Enter the Google email address and password that you created. At this point, you should see your account passed to Google for confirmation; then enter the Microsoft Office portal.

Congratulations!
You have successfully completed this Lab. Click Next to advance to the next Lab.

------------------

# Lab 07: OPTIONAL --- Add Hybrid Identity with Microsoft Entra Connect

# This lab will only function in a non-lab-hoster environment. If you want to try it using a personal account, it should work. You will not be able to perform within the class.

**Note** - This lab requires an Azure Pass. Please see lab 00 for directions.

**Note 2** - This lab is titled Optional. It takes at least 1 hour to complete and does require that you are detailed in your lab steps. Please feel free to computer it as time permits. If your company has already set up its Hybrid configuration, or you don't plan to use Microsoft Entra Connect, please jump over this lab.

## Lab scenario

Your company works has Active Directory Domain Services on-premises. They would like to continue to use on-premises Active Directory as their identity and access management solution, but also require the ability for users to access cloud applications with the same username and password.

#### Estimated time: 60 minutes

### Exercise 1 - Setup On-Premises infrastructure

#### Task 1 - Create the on-premises Active Directory infrastructure

1.  Deployment template can be accessed at this link: https://github.com/maxskunkworks/TLG/tree/master/tlg-base-config\_3-vm.
    
    **Note to learners and MCTs** - The deployment of this template can take 30-60 minutes, so be ready to take a break at this step or run the deployment before a lecture section of the course.
    
    **Note to Lab providers** - If possible, it would be helpful to students to complete and deploy as part of the lab environment setup.
    
2.  On the **TLG (Test Lab Guide) - 3 VM Base Configuration (v1.0)** page, select **Deploy to Azure**.
    
    **Note** - The 3 VM Base Configuration provisions a Windows Server 2016 Active Directory domain controller named DC1 using the domain name you specify, and a domain member server named APP1 running Windows Server 2016. It also offers an option to provision a client VM running Windows 10, however we will not be using it in our lab (primarily due to licensing requirements applicable when running Windows 10 VMs in Azure). The domain member server (APP1) has automatically installed .NET 4.5 and IIS.
    
    **Note** - The VM that is required for this lab is **DC1**. If you are using an Azure Pass, there is a limitation of 2 VMs, so the Client VM may fail. This is not needed for this lab.
    
3.  On the **Custom deployment** page, specify the following settings, then select **Review + Create** then **Create**.
    
    *   Subscription: The name of the target Azure subscription where you want to provision the lab environment Azure VMs.
    *   Resource group: (Create new) **hybrididentity-RG**
    *   Location: The name of the Azure region that will host the lab environment Azure VMs.
    *   Config Name: **TlgBaseConfig-01**
    *   Domain Name: **corp.contoso.com**
    *   Server OS: **2016-Datacenter**
    *   Admin Username: **demouser**
    *   Admin Password: **Enter a secure password that you will remember**
    *   Deploy Client VM: **No**
    *   Client VHD URI: **leave blank**
    *   VM Size: **Standard\_D2s\_v3**
    
    **Note** - Use a similar VM size if your subscription does not support the listed size. Documentation is linked here: [https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes).
    
    *   DNS Label Prefix: **Any valid, globally unique DNS name (a unique string consisting of letters, digits, and hyphens, starting with a letter and up to 47 characters long).**
        
    *   \_artifacts Location: **Accept the default**
        
    *   \_artifacts Location Sas Token: **leave blank**
        
4.  Select **Review + Create**.
    
5.  After validation has passed, select **Create**.
    
6.  Wait for the deployment to complete. This might take about 60 minutes.
    

### Task 2 - Configure the lab environment Azure VMs

1.  In the browser window displaying the Azure portal, navigate to the **DC1** Azure VM and connect to it via Remote Desktop. When prompted, sign in by using the following credentials:
    
    *   Username: **demouser**
    *   Password: **Use the secure password you created in Task 1**
2.  Within the Remote Desktop session to **DC1**, start **Windows PowerShell ISE**, then open the Script pane. Next, add the following script to the script pane, and run it to disable Internet Explorer enhanced security configuration and User Access Control on both **DC1** and **APP1** Azure VMs:
    
    pwshTypeCopy
    
    `$vmNames = @('dc1','app1') Invoke-Command -ComputerName $vmNames {Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}" -Name "IsInstalled" -Value 0} Invoke-Command -ComputerName $vmNames {Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}" -Name "IsInstalled" -Value 0} Invoke-Command -ComputerName $vmNames {Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Value 00000000}`
    
    **Note:** To run multiple PowerShell scripts in the same file, you can highlight a specific script and select **Run Selection** next to the green play button.
    
3.  Within the **Windows PowerShell ISE** window add the following script to the script pane, and run it to install Remote Server Administration Tools on both **DC1\* and \*\*APP1** Azure VMs:
    
    pwshTypeCopy
    
    `$vmNames = @('dc1','app1') Invoke-Command -ComputerName $vmNames {Install-WindowsFeature RSAT -IncludeAllSubFeature}` 
    
4.  Within the **Windows PowerShell ISE** window add the following script to the script pane, and run it to enable TLS 1.2 on both **DC1\* and \*\*APP1** Azure VMs:
    
    pwshTypeCopy
    
    `$vmNames = @('dc1','app1') Invoke-Command -ComputerName $vmNames {New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server' -Force} Invoke-Command -ComputerName $vmNames {New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client' -Force} Invoke-Command -ComputerName $vmNames {New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client' -name 'Enabled' -value 1 -PropertyType DWORD} Invoke-Command -ComputerName $vmNames {New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client' -name 'DisabledByDefault' -value 0 -PropertyType DWORD} Invoke-Command -ComputerName $vmNames {New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server' -name 'Enabled' -value 1 -PropertyType DWORD} Invoke-Command -ComputerName $vmNames {New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server' -name 'DisabledByDefault' -value 0 -PropertyType DWORD} Invoke-Command -ComputerName $vmNames {New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319' -name 'SchUseStrongCrypto' -value 1 -PropertyType DWORD}`
    
5.  Within the **Windows PowerShell ISE** window add the following script to the script pane, and run it to configure Windows Integrated Authentication on the Default Web Site hosted on the **APP1** Azure VM:
    
    pwshTypeCopy
    
    `$vmNames = @('app1') Invoke-Command -ComputerName $vmNames {Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication} Invoke-Command -ComputerName $vmNames {Set-WebConfigurationProperty -Filter "/system.webServer/security/authentication/anonymousAuthentication" -Name Enabled -Value False -PSPath IIS:\ -Location "Default Web Site"} Invoke-Command -ComputerName $vmNames {Set-WebConfigurationProperty -Filter "/system.webServer/security/authentication/windowsAuthentication" -Name Enabled -Value True -PSPath IIS:\ -Location "Default Web Site"}`
    

### Task 3 - Restart the Azure VMs

1.  Within the **Windows PowerShell ISE** window, from the console pane, run the following to restart **APP1**:
    
    pwshTypeCopy
    
    `Restart-Computer -ComputerName 'APP1'`
    
2.  Within the **Windows PowerShell ISE** window, from the console pane, run the following to restart **DC1**:
    
    pwshTypeCopy
    
    `Restart-Computer -ComputerName 'DC1'`
    

### Task 5 - Configure contoso.local Active Directory

1.  Connect again to the **DC1** Azure VM via Remote Desktop. When prompted, sign in by using the following credentials:
    
    *   Username: **demouser**
        
    *   Password: **demo\\@pass123**
        
        *   **It is strongly recommended that you enter a secure password that you can remember.**
2.  Within the Remote Desktop session to **DC1**, start Internet Explorer and navigate to the link below.
    
    TypeCopy
    
    `https://github.com/microsoft/MCW-Hybrid-identity/tree/main/Archive/Hands-on%20lab/studentfiles`
    
3.  On the **Create Users/Group for Active Directory Demo/Test Environment** page, select the **CreateDemoUsers.ps1** link, accept the licensing terms, and save the corresponding script to the local file system.
    
4.  On the **Create Users/Group for Active Directory Demo/Test Environment** page, select the **CreateDemoUsers.csv** link (directly above the PowerShell code section) and save the corresponding csv file to the same location as the **CreateDemoUsers.ps1** file.
    
5.  Within the Remote Desktop session to **DC1**, start File Explorer, navigate to the folder where you downloaded both files, right-Select on the file **CreateDemoUsers.ps1**, select **Properties**, in the **CreateDemoUsers.ps1 Properties** dialog box, check the **Unblock** checkbox and select **OK**.
    
6.  Within the File Explorer window, right-Select on the file **CreateDemoUsers.ps1** again and select **Edit**.
    
7.  In the **Administrator: Windows PowerShell ISE** window, change line **148** from:
    
    pwshTypeCopy
    
    `$UserCount = 1000 #Up to 2500 can be created`
    
    to
    
    pwshTypeCopy
    
    `$UserCount = 2500 #Up to 2500 can be created`
    
8.  In the **Windows PowerShell ISE** window, save the change and run the **CreateDemoUsers.ps1** script to create a lab environment organizational unit hierarchy and populate it with test user accounts.
    
9.  Within the **Windows PowerShell ISE** window, add the following script to the script pane, and run it to modify settings of the AD user accounts you will use in this lab:
    
    pwshTypeCopy
    
    `$adUser1 = Get-ADUser -Filter {samAccountName -eq "AGAyers"} $adUser1groups = $adUser1 | Get-ADPrincipalGroupMembership  $adUser1groups | foreach { if ($_.name -ne 'Domain Users') {Remove-ADPrincipalGroupMembership -MemberOf $_.name -Identity $adUser1.DistinguishedName} } Add-ADPrincipalGroupMembership -MemberOf 'Engineering' -Identity $adUser1.DistinguishedName Move-ADObject -Identity $adUser1.DistinguishedName -TargetPath 'OU=NJ,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com'  Set-ADAccountPassword -Identity 'CN=Ayers\, Ann,OU=NJ,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com' -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "demo@pass123" -Force)  $adUser2 = Get-ADUser -Filter {samAccountName -eq "TFBell"} $adUser2groups = $adUser2 | Get-ADPrincipalGroupMembership  $adUser2groups | foreach { if ($_.name -ne 'Domain Users') {Remove-ADPrincipalGroupMembership -MemberOf $_.name -Identity $adUser2.DistinguishedName} } Add-ADPrincipalGroupMembership -MemberOf 'Engineering' -Identity $adUser2.DistinguishedName Move-ADObject -Identity $adUser2.DistinguishedName -TargetPath 'OU=VT,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com'  Set-ADAccountPassword -Identity 'CN=Bell\, Teresa,OU=VT,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com' -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "demo@pass123" -Force) Get-ADGroup -Identity 'Domain Admins' | Add-ADGroupMember -Members 'CN=Ayers\, Ann,OU=NJ,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com' Get-ADGroup -Identity 'Enterprise Admins' | Add-ADGroupMember -Members 'CN=Ayers\, Ann,OU=NJ,OU=US,OU=Users,OU=Demo Accounts,DC=corp,DC=contoso,DC=com'`
    
10.  Within the **Windows PowerShell ISE** window, add the following script to the script pane, and run it to create additional organizational units named **Servers** and **Clients** and move the **APP1** computer account to the first of them:
    
    pwshTypeCopy
    
    `New-ADOrganizationalUnit -Name 'Servers' -Path 'OU=Demo Accounts,DC=corp,DC=contoso,DC=com' New-ADOrganizationalUnit -Name 'Clients' -Path 'OU=Demo Accounts,DC=corp,DC=contoso,DC=com'  Move-ADObject -Identity 'CN=APP1,CN=Computers,DC=corp,DC=contoso,DC=com' -TargetPath 'OU=Servers,OU=Demo Accounts,DC=corp,DC=contoso,DC=com'`
    
11.  Sign out from **DC1**.
    

## Exercise 2: Integrate an Active Directory forest with an Azure Active Directory tenant

### Task 1: Create an Azure Active Directory tenant and activate an EMS E5 trial

In this task, you will create an Azure Active Directory tenant with the following settings:

*   Organization name: **Contoso**
    
*   Initial domain name: Any valid, unique domain name.
    
*   Country or region: **United States**
    

1.  From the lab computer, start a new Web browser window and navigate to the Azure portal at https://portal.azure.com if you haven't already.
    
2.  When prompted, sign into the Azure subscription into which you deployed resources in the Before Hands-On Lab exercises.
    
3.  On the lab computer, in the Azure portal, select **\+ Create a resource**.
    
4.  On the **New** page, in the **Search the Marketplace** text box, type **Azure Active Directory** and, in the list of results, select **Azure Active Directory**.
    
5.  On the **Azure Active Directory** page, select **Create**.
    
6.  On the **Create directory** page, specify the following settings and select **Create**:
    
    Basic tab:
    
    *   Select a tenant type: Choose **Azure Active Directory**
    
    Configuration tab:
    
    *   Organization name: **Contoso**
    *   Initial domain name: Any valid, unique domain name.
    *   Country or region: **United States**
7.  Once it's created, open **Azure Active Directory**.
    
8.  On the Overview page choose **Manage tenant**.
    
9.  Put a check in your newly created directory.
    
10.  Choose **Switch** at the top of the page.
    
    > **Note**: It may take a few minutes for everything to display properly.
    
11.  On the **Contoso - Overview** page, select **Users**.
    
12.  Note that you only have a single ExternalAzureAD user in this new tenant.
    

### Task 2: Create and configure Azure AD user to administer this directory

1.  From the lab computer, in the Azure portal, navigate back to the **Contoso - Overview** page.
    
2.  On the **Contoso - Overview** page, select **Users** under **Manage** in the left navigation.
    
3.  On the **Users - All users** page, select the entry representing your user account.
    
4.  On the **Profile** page of your user account, select **Edit**.
    
5.  In the **Settings** section, in the **Usage location** drop-down list, select the **United States** entry and select **Save**.
    

#### Create the new administrator

1.  On the **New user** page, ensure that the **Create user** option is selected, specify the following settings, and select **Create**:
    
    *   User name: **john.doe _@your Azure AD tenant domain name_** where **_your Azure AD tenant domain name_** is the domain name you specified when creating the Contoso Azure AD tenant.
        
    *   Name: **john.doe**
        
    *   First name: **John**
        
    *   Last name: **Doe**
        
    *   Password: **Auto-generate password**
        
    *   Show Password: **Enabled** then make sure to copy the password.
        
    *   Groups: **0 group selected**
        
    *   Roles: **Global Administrator**
        
    *   Block sign in: **No**
        
    *   Usage location: **United States**
        
    *   Job title: **Leave blank**
        
    *   Department: **Leave blank**
        
    
    > **Note**: Copy the **User name** and **Password** values into Notepad. You will need them later in this lab.
    

### Task 5: Configure DNS suffix in the Contoso Active Directory forest

In this task, you will configure the DNS suffix of the Contoso Active Directory forest to match the newly verified Azure AD custom domain name.

1.  On the lab computer, in the Azure portal, verify that you are signed into the Azure AD tenant associated with the Azure subscription into which you deployed resources in the Before Hands-On Lab exercises (the **Default Directory**). If not, select the **Directory + Subscription** icon in the toolbar of the Azure portal (to the right of the **Cloud Shell** icon) to switch to that Azure AD tenant.
    
2.  In the Azure portal, navigate to the page of the **DC1** virtual machine.
    
3.  On the **DC1** virtual machine page, connect to **DC1** via Remote Desktop. When prompted to sign in, use the **demouser** name and the **demo\\@pass123** password.
    
4.  Within the Remote Desktop session to **DC1**, on the **Server Manager** window, start the **Active Directory Domains and Trusts** console under **Tools**.
    
5.  In the **Active Directory Domains and Trusts** console, right-Select **Active Directory Domains and Trusts \[DC1.corp.contoso.com\]** on the left and select **Properties**.
    
6.  On the **UPN Suffixes** tab of the **Active Directory Domains and Trusts \[DC1.corp.contoso.com\]** window, in the **Alternative UPN suffixes** textbox, type the name of the custom domain you verified in the previous task, select **Add**, and then select **OK**.
    
7.  Within the Remote Desktop session to **DC1**, on the **Server Manager** window, start the **Active Directory Users and Computers** console under **Tools**.
    
8.  In the **Active Directory Users and Computers** console, expand **corp.contoso.com** on the left and examine the organizational unit hierarchy of the domain and the group membership of the domain groups.
    
9.  Within the Remote Desktop session to **DC1**, start Windows PowerShell ISE and, on the Script pane, run the following to replace the UPN suffix of all users who are members of the **Engineering** group with the one matching the custom verified domain name of the Contoso Azure AD tenant (replace the placeholder `<custom_domain_name>` with the actual name of the custom verified domain name you assigned to the Contoso Azure AD tenant).
    
    pwshTypeCopy
    
    `$domainName = '<custom_domain_name>' $users = Get-ADGroupMember -Identity 'Engineering' -Recursive | Where-Object {$_.objectClass -eq 'user'}  foreach ($user in $users) {     $user = Get-ADUser -Identity $User.SamAccountName     $userName = $user.UserPrincipalName.Split('@')[0]      $upn = $userName + "@" + $domainName      $user | Set-ADUser -UserPrincipalName $upn }`
    

### Task 6: Install Microsoft Entra Connect

In this task, you will install Microsoft Entra Connect.

1.  Within the Remote Desktop session to **DC1**, in Server Manager, select **Local Server**, and ensure that **IE Enhanced Security Configuration** is disabled. If not, then select the **On** link next to **IE Enhanced Security Configuration**, set the **Administrators** settings to **Off**, and select **OK**.
    
2.  Within the Remote Desktop session to **DC1**, open the **Windows PowerShell ISE** window and run this command to install the Chrome browser.
    
    pwshTypeCopy
    
    `$LocalTempDir = $env:TEMP; $ChromeInstaller = "ChromeInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller"); & "$LocalTempDir\$ChromeInstaller" /silent /install; $Process2Monitor = "ChromeInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)`
    
3.  Within the Remote Desktop session to **DC1**, start the Chrome browser and navigate to the Azure portal at https://portal.azure.com.
    
4.  When prompted to sign in, enter the credentials of the **john.doe** Microsoft Entra user account, which you copied into Notepad earlier in this exercise.
    
5.  When prompted, change the password for the **john.doe** user account.
    
    > **Note**: If you receive the message **We've seen that password too many times before. Choose something harder to guess**, you'll need to modify the password until it is unique enough to be accepted.
    
6.  If prompted whether to **Stay signed in?"** select **No**. You will be redirected to the Azure portal interface.
    
7.  If presented with the **Welcome to Microsoft Azure** dialog box, select **Maybe later**.
    
8.  In the Azure portal, search for **Microsoft Entra Connect**.
    
9.  On the search results page, select **Microsoft Entra Connect**.
    
10.  On the **Microsoft Entra Connect** page, select the **Download Microsoft Entra Connect** link. Then choose **Connect Sync** from the menu.
    
11.  On the **Microsoft Azure Active Directory Connect v2** web page of the Microsoft Downloads site, select **Download**.
    
12.  When prompted whether to run or save **AzureADConnect.msi**, select **Run**. This will download the file and automatically start the **Microsoft Azure Active Directory Connect** wizard.
    
13.  On the **Welcome to Azure AD Connect** page, check the **I agree to the license terms and privacy notice** box and select **Continue**.
    
14.  On the **Express Settings** page, select the **Customize** button.
    
15.  On the **Install required components** page, leave all optional configuration options deselected and select **Install**.
    
16.  On the **User sign-in** page, select the **Pass-through authentication** option and the **Enable single sign-on** checkboxes, and select **Next**.
    
17.  On the **Connect to Azure AD** page, sign in by using the credentials of the **john.doe** account and select **Next**.
    
18.  On the **Connect your directories** page, ensure that the **corp.contoso.com** entry appears in the **FOREST** drop-down list and select **Add Directory**. In the **AD forest account**, ensure that the **Create new AD account** option is selected, in the **ENTERPRISE ADMIN USERNAME** textbox, type **CORP.CONTOSO.COM\\demouser**, in the **PASSWORD** textbox, type **demo\\@pass123**, and select **OK**.
    
19.  Back on the **Connect your directories** page, select **Next**.
    
20.  On the **Azure AD sign-in configuration** page, ensure that your custom domain name is listed as the verified **Active Directory UPN Suffix**, and that the **userPrincipalName** entry appears in the **USER PRINCIPAL NAME** drop-down list. Note the warning stating **Users will not be able to sign into Azure AD with on-premises credentials if the UPN suffix does not match a verified domain name**. Check the **Continue without matching all UPN suffixes to verified domain** box and select **Next**.
    
    > **Note**: This is expected, since some users are still configured with the **contoso.local** UPN suffix, which is not routable and cannot be configured as a verified custom domain name of an Azure AD tenant.
    
21.  On the **Domain and OU filtering** page; choose **Sync selected domains and OUs** then ensure that only the **DemoAccounts** OU and all its children OUs are selected and select **Next**.
    
22.  On the **Uniquely identifying your users** page, accept the default settings and select **Next**.
    
23.  On the **Filter users and devices** page, accept the default settings and select **Next**.
    
24.  On the **Optional features** page, accept the default settings and select **Next**.
    
25.  On the **Enable single sign-on** page, select **Enter credentials**, in the **Forest credentials** dialog box, sign in with the **CORP\\demouser** username and **demo\\@pass123** password, and select **Next**.
    
26.  On the **Ready to configure** page, ensure that the **Start the synchronization process when configuration completes** checkbox is **NOT** selected and select **Install**.
    
    > **Note**: You will configure attribute-level filtering before enabling the synchronization process.
    
    > **Note**: Installation should take about 2 minutes.
    
27.  On the **Configuration complete** page, select **Exit**.
    

### Task 7: Enable Active Directory Recycle Bin

In this task, you will enable Recycle Bin in the Contoso Active Directory domain.

1.  Within the Remote Desktop session to **DC1**, on the Tools menu in the Server Manager console, start **Active Directory Administrative Center**.
    
2.  In the **Active Directory Administrative Center** console, right-Select **corp (local)** on the left and select **Enable Recycle Bin**. When prompted to confirm, select **OK**.
    
3.  When prompted to refresh AD Administrative Center, select **OK**.
    

> **Note**: For information regarding benefits of the Recycle Bin in hybrid scenarios, refer to [https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sync-recycle-bin](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sync-recycle-bin)

### Task 8: Configure Azure AD Connect attribute-level filtering

In this task, you will configure Azure AD Connect attribute level filtering that will limit synchronization of user accounts to those with the UPN suffix matching the custom domain name of the target Azure AD tenant.

> **Note**: The positive filtering option requires at least two sync rules. One of them determines the correct scope of objects to synchronize. The second catch-all sync rule filters out all objects that have not yet been identified as an object that should be synchronized.

1.  Within the Remote Desktop session to **DC1**, start **Synchronization Rules Editor** under **Azure AD Connect** in the Start menu.
    
2.  In the Synchronization Rules Editor window, on the **View and manage your synchronization rules** page, ensure that **Inbound** appears in the **Direction** drop-down list and select **Add new rule**. This will launch the **Create inbound synchronization rule** wizard.
    
3.  On the **Create inbound synchronization rule - Description** page, specify the following settings and select **Next**:
    
    *   Name: **Custom In from AD - UPN Filter**
        
    *   Description: **Custom Inbound Rule - includes users with UPN set to match the Azure AD custom domain**
        
    *   Connected System: **corp.contoso.com**
        
    *   Connected System Object Type: **user**
        
    *   Metaverse Object Type: **person**
        
    *   Link Type: **join**
        
    *   Precedence: **50**
        
    *   Tag: **Leave empty**
        
    *   Enable Password Sync: **Leave empty**
        
    *   Disabled: **Leave empty**
        
4.  On the **Create inbound scoping filter** page, select **Add Group**, select **Add clause** specify the following, and select **Next**:
    
    *   Attribute: **userPrincipalName**
        
    *   Operator: **ENDSWITH**
        
    *   Value: **\\@\\**
        
5.  On the **Join Rules** page, select **Next**.
    
6.  On the **Transformations** page, select **Add transformation** specify the following and select **Add**:
    
    *   FlowType: **Constant**
        
    *   Target Attribute: **cloudFiltered**
        
    *   Source: **False**
        
7.  When presented with a **Warning** dialog box displaying that message stating that **A full import and full synchronization will be run on 'corp.contoso.com' during your next synchronization cycle**, select **OK**.
    

> **Note**: This should bring you back to the View and manage your synchronization rules interface, with the new rule listed at the top of the rule list.

1.  Back in the **Synchronization Rules Editor** window, on the **View and manage your synchronization rules** page, ensure that **Inbound** appears in the **Direction** drop-down list and select **Add new rule** again. This will launch the **Create inbound synchronization rule** wizard.
    
2.  On the **Description** page, specify the following settings and select **Next**:
    
    *   Name: **Custom In from AD - Catch-all Filter**
        
    *   Description: **Custom Inbound Rule - excludes all users with UPN not set to match the Azure AD custom domain**
        
    *   Connected System: **corp.contoso.com**
        
    *   Connected System Object Type: **user**
        
    *   Metaverse Object Type: **person**
        
    *   Link Type: **join**
        
    *   Precedence: **51**
        
    *   Tag: **Leave empty**
        
    *   Enable Password Sync: **Leave empty**
        
    *   Disabled: **Leave empty**
        
3.  On the **Scoping filer** page, select **Next**.
    
4.  On the **Join Rules** page, select **Next**.
    
5.  On the **Transformations** page, select **Add transformation** specify the following and select **Add**:
    
    *   FlowType: **Constant**
        
    *   Target Attribute: **cloudFiltered**
        
    *   Source: **True**
        
6.  When presented with a **Warning** dialog box displaying a message stating that **A full import and full synchronization will be run on 'corp.contoso.com' during your next synchronization cycle**, select **OK**.
    
    > **Note**: This should bring you back to the **View and manage your synchronization rules** interface, with the new rules listed at the top of the rule list.
    

### Task 9: Initiate and verify directory synchronization

1.  Within the Remote Desktop session to **DC1**, double-Select the **Azure AD Connect** desktop shortcut.
    
2.  On the **Welcome to Azure AD Connect** page, select **Configure**.
    
3.  On the **Additional tasks** page, select **Customize synchronization options** and select **Next**.
    
4.  On the **Connect to Azure AD** page, sign in by using the credentials of the **john.doe** account and select **Next**.
    
5.  On the **Connect your directories** page, select **Next**.
    
6.  On the **Domain and OU filtering** page, select **Next**.
    
7.  On the **Optional features** page, accept the default settings and select **Next**.
    
8.  On the **Enable single sign-on** page, select **Next**.
    
9.  On the **Ready to configure** page, select the **Start the synchronization process when configuration completes** checkbox and select **Configure**.
    
10.  On the **Configuration complete** page, select **Exit**.
    
11.  Within the Remote Desktop session to **DC1**, in the Edge browser window displaying the Azure portal, navigate to the **Users - All users** page of the Contoso Azure AD tenant.
    
12.  On the **Users - All users** page, note that the list of user objects includes all user accounts with the UPN suffix matching the custom domain name of the Azure AD tenant. You may need to refresh the page or wait a few minutes to see the change.
    
13.  In the Azure portal, navigate to the **Groups - All groups** page of the Contoso Azure AD tenant and note that all the corp.contoso.com domain groups have been synchronized as well.
    
14.  In the Azure portal, navigate to the **Contoso - Azure AD Connect** page and select **Azure AD Connect** on the left. Verify that the following settings are set:
    
    *   Azure AD Connect Sync Status: **Enabled**
        
    *   Last Sync: **This should be a timestamp of some sort**.
        
    *   Password Hash Sync: **Disabled**
        
    *   Federation: **Disabled**
        
    *   Seamless single sign-on: **Enabled for 1 domain**
        
    *   Pass-through authentication: **Enabled with 1 agent**
        

> **Note**: In a production environment, you would install additional agents for redundancy. For more information, refer to [https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta-quick-start](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta-quick-start).

### Task 10: Configure Hybrid Azure AD join

In this task, you will configure Azure AD Connect device synchronization options.

1.  Within the Remote Desktop session to **DC1**, double-Select the **Azure AD Connect** desktop shortcut.
    
2.  On the **Welcome to Azure AD Connect** page, select **Configure**.
    
3.  On the **Additional tasks** page, select **Configure device options** and select **Next**.
    
4.  On the **Overview** page, review the information regarding **Hybrid Azure AD join** and **Device writeback**, and select **Next**.
    
5.  On the **Connect to Azure AD** page, sign in by using the credentials of the **john.doe** account and select **Next**.
    
6.  On the **Device options** page, ensure that the **Configure Hybrid Azure AD join** option is selected and select **Next**.
    
7.  On the **Device operating system** page, select the **Windows 10 or later domain-joined devices** and **Supported Windows down-level domain-joined devices** checkboxes, and select **Next**.
    

> **Note**: Windows down-level devices are supported only if you are using Seamless SSO for managed domains or a federation service such as AD FS for federated domains.

1.  On the **SCP configuration** page, check the **corp.contoso.com** Active Directory forest box, select the **Azure Active Directory** entry in the **Authentication Service** dropdown list, and select **Add**.
    
2.  When prompted for Enterprise Admin Credentials for corp.contoso.com, in the **Windows Security** dialog box, sign in with the **CORP\\demouser** user name and **demo\\@pass123** password.
    
3.  Back on the **SCP configuration** page, select **Next**.
    
4.  On the **Ready to configure** page, select **Configure**.
    
5.  On the **Configuration complete** page verify that the task completed successfully and select **Exit**.
    

### Task 11: Perform Hybrid Azure AD join

1.  On the lab computer, in the Azure portal, verify that you are signed into the Azure AD tenant associated with the Azure subscription into which you deployed resources in the Before Hands-On Lab exercises (the **Default directory**). If not, select the **Directory + Subscription** icon in the toolbar of the Azure portal (to the right of the **Cloud Shell** icon) to switch to that Azure AD tenant.
    
2.  In the Azure portal, navigate to the page of the **APP1** virtual machine.
    
3.  On the **APP1** virtual machine page, connect to **APP1** via Remote Desktop. When prompted to sign in, use the **AGAyers\\@** user name with the **demo@pass123** password (where placeholder represents the custom DNS domain name you assigned to the Contoso Azure AD tenant earlier in this exercise.
    
4.  Within the Remote Desktop session to **APP1**, on the **Server Manager** window, start **Task Scheduler** under **Tools**.
    
5.  In the **Task Scheduler** console, navigate to **Task Scheduler Library** > **Microsoft** > **Windows** > **Workplace Join**. From there, enable then run the **Automatic-Device-Join** task.
    
6.  Switch to the Remote Desktop session to **DC1** and, from the console pane of the Windows PowerShell ISE window, start Azure AD Connect delta synchronization by running the following:
    
    pwshTypeCopy
    
    `Import-Module -Name 'C:\Program Files\Microsoft Azure AD Sync\Bin\ADSync\ADSync.psd1'  Start-ADSyncSyncCycle -PolicyType Delta`
    
7.  Switch back to the Remote Desktop session to **APP1** and start a **Command Prompt**.
    
8.  From the Command Prompt window, check the Azure AD registration status of APP1 by running the following:
    
    TypeCopy
    
    `dsregcmd /status`
    
9.  Verify that the output of the command resembles the following:
    
    TypeCopy
    
    `+----------------------------------------------------------------------+ | Device State                                                         | +----------------------------------------------------------------------+      AzureAdJoined : YES  EnterpriseJoined : NO          DeviceId : 61eea2b8-efbe-43d9-b267-126433c8ee34        Thumbprint : BBAAA0FB4A55E880388851BED955A2669A961A96    KeyContainerId : 2eb75eb8-0a1d-437b-99d9-9dd161ca0d90       KeyProvider : Microsoft Software Key Storage Provider      TpmProtected : NO      KeySignTest: : PASSED               Idp : login.windows.net          TenantId : xxxxxxx-xxxx-xxx-xxxx-xxxxxxxxxx        TenantName : xxxxxxx-xxxx-xxx-xxxx-xxxxxxxxxx       AuthCodeUrl : https://login.microsoftonline.com/xxxxxxx-xxxx-xxx-xxxx-xxxxxxxxxx/oauth2/authorize    AccessTokenUrl : https://login.microsoftonline.com/xxxxxxx-xxxx-xxx-xxxx-xxxxxxxxxx/oauth2/token            MdmUrl :         MdmTouUrl :  MdmComplianceUrl :       SettingsUrl :    JoinSrvVersion : 1.0        JoinSrvUrl : https://enterpriseregistration.windows.net/EnrollmentServer/device/         JoinSrvId : urn:ms-drs:enterpriseregistration.windows.net     KeySrvVersion : 1.0         KeySrvUrl : https://enterpriseregistration.windows.net/EnrollmentServer/key/          KeySrvId : urn:ms-drs:enterpriseregistration.windows.net      DomainJoined : YES        DomainName : CORP  +----------------------------------------------------------------------+ | User State                                                           | +----------------------------------------------------------------------+             NgcSet : NO   WorkplaceJoined : NO     WamDefaultSet : NO        AzureAdPrt : NO  +----------------------------------------------------------------------+ | Ngc Prerequisite Check                                               | +----------------------------------------------------------------------+      IsUserAzureAD : NO     PolicyEnabled : NO    DeviceEligible : YES SessionIsNotRemote : NO  X509CertRequired : NO      PreReqResult : WillNotProvision`
    
10.  Switch back to the Remote Desktop session to **DC1**, in the Edge browser window displaying the Azure portal, navigate to the **Devices - All devices** page of the Contoso Azure AD tenant and verify that there is an entry representing the APP1 server, with the **Join Type** set to **Hybrid Azure AD joined**.
    

> **Note**: You might need to wait until the Azure AD registration status is correctly reported and its Azure AD object appears in the Azure portal.

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

------------

# Lab 08 - Enable multi-factor authentication

### Login type = Microsoft 365 admin

## Lab scenario

# 

To improve security in your organization, you've been directed to enable multifactor authentication for Microsoft Entra ID.

#### Estimated time: 15 minutes

# 

**IMPORTANT** \- A Microsoft Entra ID Premium license is required for this exercise.

### Exercise 1 - Review and enable Multi-factor Authentication in Azure

#### Task 1 - Review Azure Multi-Factor Authentication options

# 

1.  Browse to the https://entra.microsoft.com and sign in using a Global administrator account for the directory.
    
2.  Use the search feature and search for **multifactor**.
    
3.  In the search results, select **Multifactor authentication**.
    
    Alternatively, you can open **Identity**, then select **Protection**, and select **Multifactor authentication**.
    
4.  On the Getting started page, under **Configure**, select **Additional cloud-based MFA settings**.
    
    ![Screenshot showing MFA options in the dashboard](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-set-additional-mfa-settings.png)
    
5.  In the new browser page, you can see the MFA options for Azure users and service settings.
    
    ![Screenshot showing MFA configuration](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-mfa-settings.png)
    
    This is where you would select the supported authentication methods, in the screen above, all of them are selected.
    
    You can also enable or disable app passwords here, which allow users to create unique account passwords for apps that don't support multi-factor authentication. This feature lets the user authenticate with their Microsoft Entra identity using a different password specific to that app.
    

#### Task 2 - Setup conditional access rules for MFA for Delia Dennis

# 

Next let's examine how to set up Conditional Access policy rules that would enforce MFA for guest users accessing specific apps on your network.

1.  Switch back to the Microsoft Entra admin center and select **Identity**, then **Protection**, and then **Conditional access**.
    
2.  On the menu, Select the **Policies** page , Select **\+ New policy**. From the drop down select **\+ Create new policy**.
    
    ![Screenshot highlighting the New Policy button in the Microsoft Entra admin center.](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-azure-ad-conditional-access-policy.png)
    
3.  Name your policy, for example **MFA\_for\_Delia**.
    
4.  Select **Users** under Assignments.
    
    *   Select **0 users or workload identities selected**
    *   On the right side screen, select **Select users and groups** check box to configure.
    *   Check **Users and groups** (available users will be populated to the right)
    *   Choose **Delia Dennis** from the list of users then choose **Select** button.
5.  Select **No target resources selected** in Target resources.
    
    *   In the dropdown, make sure **resources** is selected.
    *   Under Include, mark **All resources** and note the warning the pops up about possibly locking yourself out.
    *   Now under Select section, choose the **None** item.
    *   In the newly opened dialog, choose **Office 365**.
        *   **Reminder** \- in a previous lab we gave Delia Dennis an Office 365 license and logged into ensure it worked.
    *   Choose **Select**.
6.  Review the Conditions section.
    
    *   Choose **Yes** for the configure slider.
    *   Select **Any network or location**.
7.  Under **Access Controls**, find the **Grant** section and select **0 controls selected** is selected.
    
8.  Select the **Require multifactor authentication** check box to enforces MFA.
    
9.  Ensure that **Require all the selected controls** is selected.
    
10.  Select **Select**.
    
11.  Set **Enable policy** to **On**.
    
12.  Hit **Create** to create the policy.
    
    ![Screenshot showing the complete Add Policy dialog](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-conditional-access-new-policy-complete.png)
    
    MFA is now enabled for your selected user and application(s). The next time a guest tries to sign into that app they will be prompted to register for MFA.
    

#### Task 3 - Test Delia's login

# 

1.  Open a new InPrivate Browsing windows.
2.  Connect to https://www.office.com.
3.  Select the sign-in option.
4.  Enter **DeliaD@** `<<your domain address>>`.
5.  Enter the password = Enter the Global admin password of the tenant (Note : Refer the 'Lab Resources' tab to retrieve the admin password).

**Note** \- At this point one of two things will happen. You should get a message that you need to set up Authenticator app and register for MFA. Follow the prompts to complete using your personal phone. NOTE - there is a chance that you might get a login failure message with several options on how to proceed. Select the **Try Again** option in this case.

You can see that because of the Conditional Access rule we created for Delia, MFA is required to launch Office 365 home page.

### Exercise 2 - Configure MFA to be required for login

#### Task 1 - Configure Microsoft Entra Per-User MFA

# 

Finally, let's look at how to configure MFA for user accounts. This is another way to get to the multi-factor auth settings.

1.  Switch back to the Microsoft Entra admin center and find the Indentity left-hand navigation menu.
    
2.  Select **Users**, then select **All users**.
    
3.  At the top of the Users pane, select **Per-user MFA**.
    
    *   NOTE: you may have to use the elipsis (…) to get to the Per-user MFA menu item.
    
    ![Screenshot showing the MFA option](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-users-mfa.png)
    
4.  A new browser tab/window will open with a multi-factor authentication user settings dialog.
    
    You can enable or disable MFA on a user basis by selecting a user and then using the quick steps on the right side.
    
    ![Screenshot showing the MFA options](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod1-mfa-service-settings-and-users.png)
    
5.  Select **Adele Vance** with a check-mark.
    
6.  Select the **Enable MFA** option under quick steps.
    
7.  Read the notification popup if you get it, then select **enable** button.
    
8.  Select **Close**.
    
9.  Notice that Adele now has **Enabled** as her MFA status.
    
10.  You can select **service settings** to see the MFA setting screen, seen earlier in the lab.
    
11.  Close the MFA setting tab.
    

#### Task 2 -- Try logging in as Adele

# 

1.  If you want to see another example of MFA login process, you can try to log in a Adele.

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

-------------------

# Lab 09 - Configure and deploy self-service password reset

### Login type = Microsoft 365 admin

## Lab scenario

# 

The company has decided to empower the employees and enable self-service password reset. You must configure this setting in your organization.

#### Estimated time: 15 minutes

### Exercise 1 - Create a group with SSPR enabled and add users to it

#### Task 1 - Create a group to assign SSPR to

# 

You want to roll out SSPR to a limited set of users first to make sure your SSPR configuration works as expected. Let's create a security group for the limited rollout and add a user to the group.

1.  On the Microsoft Entra admin center, open the **Identity** navigation menu on the left.
    
2.  Under **Groups**, select **All groups** and select **New Group** on the right side window.
    
3.  Create a new group using the following information:
    
    | Setting | Value |
    | --- | --- |
    | Group type | Security |
    | Group name | SSPRTesters |
    | Group description | Testers of SSPR rollout |
    | Membership type | Assigned |
    | Members | Alex Wilber |
    |  | Allan Deyoung |
    |  | Bianca Pisani |
    
4.  Select **Create**.
    
    ![Screen image displaying the New Group page with group type, group name, and create highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod2-create-sspr-security-group.png)
    

#### Task 2 - Enable SSPR for you test group

# 

Enable SSPR for the group.

1.  Browse back to the **Identity** navigation menu.
    
2.  Under **Protection**, select **Password reset**.
    
3.  On the Password reset page Properties page, under **Self service password reset enabled**, select **Selected**.
    
4.  Under **Select group**, replace the existing SSPRSecurityGroupUsers with **SSPRTesters** you just created.
    
5.  On the Password reset page Properties page, select **Save**.
    
    ![Screen image displaying the Password reset properties page with selected, select group, and save highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp2-mod2-enable-password-reset-for-selected-group.png)
    
6.  On the **Password reset** screen, look under **Manage\*, select and review the default values for each of the \*\*Authentication methods**, **Registration**, **Notifications**, and **Customization** settings.
    
    **Note** it is important to have **phone** selected as one of the authentication methods for the rest of this lab, but you can have other options as well.
    

#### Taks 3 - Register for SSPR with Allan

# 

Now that the SSPR configuration is complete, register a mobile phone number for the user you created.

1.  Open a different browser or open an InPrivate or Incognito browser session and then browse to https://aka.ms/ssprsetup.
    
    This is to ensure you are prompted for user authentication.
    
2.  Sign in as **AllanD@** `<<organization-domain-name>>.onmicrosoft.com` with the password provided.
    
    **Note** \- Replace the organization-domain-name with your domain name.
    
3.  If prompted to update your password, enter a new password of your choice. Be sure to record the new password.
    
4.  If prompted to stay signed in, choose Yes.
    
5.  In the **More information required** dialog box, select **Next**.
    
6.  On the Keep your account secure page, select **Next** to use the Authenticator app.
    
7.  Follow the on screen instructions to set up your account in Authenticator by scanning the QR-code.
    
8.  Complete the process by selecting **Done** when you successfully registered.
    
    *   **Note** \- at this point you have both registered for SSPR and MFA in a single step.
9.  Close the browser. You do not need to complete the sign in process.
    

#### Task 4 - Test SSPR

# 

Now let's test whether the user can reset their password.

1.  Open a different browser or open an InPrivate or Incognito browser session and then browse to https://portal.azure.com.
    
    This is to ensure you well be prompted for user authentication.
    
2.  Enter **AllanD@** `<<organization-domain-name>>.onmicrosoft.com` and then select **Next**.
    
    **Note** \- Replace the organization-domain-name with your domain name.
    
3.  On the Enter password page, select **Forgot my password**.
    
4.  On the Get back into your account page, complete the requested information and then select **Next**.
    
5.  Follow the on-screen instructions to get the verification code from Microsoft Authenticator app.
    
6.  Enter your verification code and then select **Next**.
    
7.  In the choose a new password step, enter and then confirm your new password.
    
8.  When complete, select **Finish**.
    
9.  Sign in as **AllanD** with the new password you created.
    
10.  Enter your verification code and then verify you can complete the sign in process.
    
11.  When finished, close your browser.
    

#### Task 5 - What happens if you try a user not in SSPRTesters group?

# 

1.  As a test, open a new InPrivate browser window and try to log into the Azure Portal as GradyA, and select **Forgot my password** option.

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.
