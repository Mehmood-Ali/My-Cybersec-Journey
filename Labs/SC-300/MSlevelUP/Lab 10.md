# Lab 10 - Microsoft Entra Authentication for Windows and Linux Virtual Machines

### Login type = Azure Resource login

## Lab scenario

# 

> The company has decided that Microsoft Entra ID should be used to login to virtual machines for remote access. This lab will show how this can be setup for Windows and Linux virtual machines.

#### Estimated time: 30 minutes

### Exercise 1 - Login to Windows Virtual Machines in Azure with Microsoft Entra ID

#### Task 1 - Create a Windows Virtual Machine with Microsoft Entra ID login enabled

# 

> 1.  Browse to the https://portal.azure.com
>     
> 2.  Select **\+ Create a resource**.
>     
> 3.  Type Windows 11 in Search the Marketplace search bar, then **Enter**.
>     
> 4.  From the **Windows 11** box, select the **Create v** and choose **Windows 11 Enterprise, version 22H2** from the menu that opens.
>     
> 5.  Create the VM using the following values on the **Basics** tab:
>     
>     | Field | Value to use |
>     | --- | --- |
>     | Subscription | Accept the default |
>     | Resource Group | rgEL |
>     | Virtual machine name | elvm55648697 |
>     | Region | eastus |
>     | Availability options | No infrastructure redundancy required |
>     | Security Type | Standard |
>     | Size | Standard DC1s_v3 - 1 vcpu, 8 GiB memory |
>     | Admin Username | vmEntraAdmin |
>     | Admin Password | Pa55w.rd55648697 |
>     | Licensing | Confirm you have a license |
>     
> 6.  You will not need to change anything on the **Disks** or **Networking** tabs, but you can review the values.
>     
> 7.  On the **Management** tab, check the box to **Login with Microsoft Entra ID** under the Microsoft Entra ID section.
>     
>     > You will notice that the **System assigned managed identity** under the Identity section is automatically checked and turned grey. This action should happen automatically once you enable Login with Microsoft Entra ID.
>     
> 8.  Go through the rest of the experience of creating a virtual machine.
>     
> 9.  Select **Review + create** then choose **Create**.
>     

#### Task 2 - Microsoft Entra ID login for existing Azure Virtual Machines

# 

> > Please note because of restrictions in Cloud Slice, the user, **User2-55648697@LODSPRODMCA.onmicrosoft.com**, has been created for you with the role of **Virtual Machine Administrator Login** already assigned.
> > 
> > To verify the role has been assigned to **user2**, please skip steps 4-6 and selecting the **Access Control (IAM)**, select **Role assignments** under the top panel, within the search bar for username/email, type user2- and verify the **Virtual Machine Administrator Login** role is assigned to **user2**.
> 
> 1.  Browse to **Virtual Machines** in the [Azure Portal](https://portal.azure.com/).
>     
> 2.  Select the newly created Virtual Machine from Task 1.
>     
> 3.  Select **Access control (IAM)**.
>     
> 4.  Select **\+ Add**, then **Add role assignment** to open the Add role assignment page.
>     
> 5.  Assign the following settings:
>     
>     *   **Job function roles**
>     *   **Role**: Virtual Machine Administrator Login
>     *   **Members**: Choose User, group, or service principal. Then use **\+ Select members** to add **Joni Sherman** as a specific user for the VM.
> 6.  Select **Review + assign** to complete the process.
>     

#### Task 3 - Update the Virtual Machine to allow the Microsoft Entra ID login

# 

> 1.  Select the **Connect** menu item.
>     
> 2.  On the **RDP** tab select the **Download RDP File**. If prompted choose the **Keep** option for the file. It will be saved into your Downloads folder.
>     
> 3.  Open the **Downloads** folder in File Manager.
>     
> 4.  Open the RDP.
>     
> 5.  Choose to log in as Alternate User.
>     
> 6.  Use the Admin (vmEntraAdmin) username and Password you create when setting up the virtual machine.
>     
>     *   If prompted, say yes to allow access to the virtual machine or RDP session.
> 7.  Wait for the virtual machine to open and all the software to load.
>     
> 8.  Select the **Start button** in the virtual machine.
>     
> 9.  Type **Control Panel** and launch the control panel app.
>     
> 10.  Select **System and Security** from the list of settings.
>     
> 11.  From the **System** setting, select the **Allow remote access** option.
>     
> 12.  At the bottom of the dialog box that opens you will see a **Remote Desktop** section.
>     
> 13.  **Uncheck** the box labeled **Allow connections only from computers running Remote Desktop with Network Level Authentication**.
>     
> 14.  Select **Apply** and then **OK**.
>     
> 15.  **Exit** the virtual machine RDP session.
>     

#### Task 4 - Modify your RDP file to support the Microsoft Entra ID login

# 

> 1.  Open the **Downloads** folder in file manager.
>     
> 2.  **Make a copy** of the RDP file and add **\-EntraID** to the end of the filename.
>     
> 3.  Edit the new version of the RDP file you just copied using **Notepad**. Add the these two lines of text to the bottom of the of the file:
>     
>     TypeCopy
>     
>         `enablecredsspsupport:i:0     authentication level:i:2`
>     
>     1.  **Save** the RDP file. You should now have two versions of the file:
>         *   <\>.RDP
>         *   <\>-EntraID.RDP

#### Task 5 - Connect to the Windows virtual machine using Microsoft Entra ID login

# 

> 1.  Open the \*\*<\>-EntraID.RDP
>     
> 2.  Select **Connect** when the dialog opens.
>     
> 3.  Instead of getting prompted on what User Account to log in with, you should get a message prompting on whether you want to connect to the remote computer.
>     
> 4.  Select **Yes** from the bottom of the screen.
>     
>     > The UI might bring you straight to the login page skipping steps 5 and 6.
>     
> 5.  The Remote Desktop session should open; and show the Windows Server login screen. **Other User** with an OK button should be displayed.
>     
> 6.  Select **OK**.
>     
> 7.  In the login dialog enter the following information:
>     
>     *   Username = AzureAD\\User2-55648697@LODSPRODMCA.onmicrosoft.com
>         
>     *   Password = NJ-5EM\*U
>         
>     
>     > User2 is the pre-created user we granted access to log in as administrator during Task 1.
>     
> 8.  Windows Server should confirm the login and open to the normal Server Manager Dashboard.
>     

#### Task 6 -- Optional testing to explore the Microsoft Entra ID login

# 

> 1.  Check to see that JoniS was the only user added to the Administrators group.
>     
> 2.  Use the secondary mouse click on the START button, then select **Computer Management** in the popup menu.
>     
> 3.  Open **Local Users and Groups** then navigate to **Groups, Administrators**.
>     
> 4.  You should see **Azure\\JoniSherman….** in the list.
>     
> 5.  Check to see if other Microsoft Entra ID members can log in.
>     
> 6.  Exit out of the remote desktop session.
>     
> 7.  Launch the **<\>-AzureAD.RDP** file again.
>     
> 8.  Try to log in as other Azure AD members like AdeleV or AlexW or DiegoS.
>     
> 9.  You should notice that each of these users are denied access.
>     

### Optional Exercise 2 - Login to Linux Virtual Machines in Azure with Microsoft Entra ID

#### Task 1 - Create a Linux VM with system assigned managed identity

# 

> > When creating the **Ubuntu** VM, please use thew following settings:
> 
> | Field | Value to use |
> | --- | --- |
> | Subscription | Accept the default |
> | Resource Group | rgEL |
> | Virtual machine name | ubuntu55648697 |
> | Region | eastus |
> | Availability options | No infrastructure redundancy required |
> | Security Type | Standard |
> | Size | Standard_D2s_v3 |
> | Username | vmEntraAdmin |
> | Password | Pa55w.rd55648697 |
> 
> 1.  Browse to the https://portal.azure.com
>     
> 2.  Select **\+ Create a resource**.
>     
> 3.  Search for **Ubuntu**.
>     
> 4.  Select on **Create** under **Ubuntu Server 22.04 LTS**. You may use other Linux servers for this test lab.
>     
> 5.  On the **Management** tab, check the box to enable **Login with Microsoft Entra ID**.
>     
> 6.  Ensure **System assigned managed identity** is checked.
>     
> 7.  Go through the rest of the experience of creating a virtual machine. During this preview, you’ll have to create an administrator account with username and password or SSH public key.
>     

#### Task 2 - Microsoft Entra ID login for existing Azure Virtual Machines

# 

> > Please note because of restrictions in Cloud Slice, the user, **User2-55648697@LODSPRODMCA.onmicrosoft.com**, has been created for you with the role of **Virtual Machine Administrator Login** already assigned.
> > 
> > To verify the role has been assigned to **user2**, please skip steps 4-6 and selecting the **Access Control (IAM)**, select **Role assignments** under the top panel, within the search bar for username/email, type user2- and verify the **Virtual Machine Administrator Login** role is assigned to **user2**.
> 
> 1.  Browse to **Virtual Machines** in the [Azure Portal](https://portal.azure.com/).
>     
> 2.  Select **Access control (IAM)**.
>     
> 3.  Select Add > Add role assignment to open the Add role assignment page.
>     
> 4.  Assign the following role.
>     
>     *   **Role**: Virtual Machine Administrator Login or Virtual Machine User Login
>     *   **Assign access to**: User, group, service principal, or managed identity
> 5.  For detailed steps, see Assign Azure roles using the Azure portal.
>     

### Congratulations

# 

> You have successfully completed this lab. Click **End** to mark the lab as **Complete**.
