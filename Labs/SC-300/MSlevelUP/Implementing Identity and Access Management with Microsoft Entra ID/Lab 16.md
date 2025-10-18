# Lab 16 - Using Azure Key Vault for Managed Identities

### Login type = Azure Resource login

## Lab scenario

# 

When you use managed identities for Azure resources, your code can get access tokens to authenticate to resources that support Microsoft Entra authentication.  However, not all Azure services support Microsoft Entra authentication. To use managed identities for Azure resources with those services, store the service credentials in Azure Key Vault, and use the managed identity to access Key Vault to retrieve the credentials.

#### Estimated time: 20 minutes

### Exercise 1 - Use Azure Key Vault to manage Virtual Machine identities

#### Task 1 - Create a Key Vault

# 

1.  Sign in to the https://portal.azure.com using a Global administrator account.
    
2.  At the top of the left navigation bar, select **\+ Create a resource**.
    
3.  In the Search the Services and Marketplace box type in **Key Vault**.
    
4.  Select **Key Vault** from the results.
    
5.  Select **Create**.
    
6.  Fill out all required information as shown below. Make sure that you choose the subscription that you're using for this lab. **Note** The Key vault name must be unique. Look for a green checkmark to the right of the field.
    
    *   **Resource group** \- rgSC300KeyVault
    *   **Key vault name** \- keyVault55681627
    *   **Region** \- westus
    *   On the **Access Configuration** page, select the **Vault Access Policy** radio button.
7.  Select **Review + create**.
    
8.  Select **Create**.
    

#### Task 2 - Create a Windows Virtual Machine

# 

1.  Select **\+ Create a resource**.
    
2.  Type **Windows 11** in Search the Marketplace search bar.
    
3.  Select **Windows 11** and from the plan dropdown choose **Windows 11 Enterprise, version 22H2**. Then choose **Create**.
    
    | Field | Value to use |
    | --- | --- |
    | Subscription | Accept the default |
    | Resource Group | rgSC300KeyVault |
    | Virtual machine name | vmKeyVault |
    | Region | westus |
    | Availability options | No infrastructure redundancy required |
    | Security Type | Standard |
    | Size | Standard_D2s_v3 |
    | Username | vmAdmin |
    | Password | Pa55w.rd55681627 |
    
4.  Use the **Next** button to get to the **Management** tab.
    
5.  On the **Management** tab, check the box next to **Enable system assigned managed identity**.
    
6.  Go through the rest of the experience of creating a virtual machine.
    
7.  Choose **Review + Create** then select **Create**.
    

#### Task 3 - Create a secret

# 

1.  Navigate to your newly created Key Vault.
    
2.  Open **Objects** on the left menu then Select **Secrets**.
    
3.  Select **\+ Generate/Import**.
    
4.  In the Create a secret screen, from Upload options leave **Manual** selected.
    
5.  Enter a name and value for the secret. The value can be anything you want.
    
6.  Leave the activation date and expiration date clear, and leave Enabled as Yes.
    
7.  Select **Create** to create the secret.
    

#### Task 4 - Grant access to Key Vault

# 

1.  Navigate to your newly created Key Vault
    
2.  Select **Access Policies** from the menu on the left side.
    
3.  Select **\+ Create**.
    
4.  In the **Permissions** section, under Configure from template (optional), choose **Secret Management** from the pull-down menu.
    
5.  Use the Next button to move to the **Principal** tab.
    
6.  In the search field enter the name of the VM you created in task 2 - **vmKeyVault**. Select the VM in the result list and choose Select.
    
7.  Use the Next button to move to the **Review + Create** tab.
    
8.  Select **Create**.
    

#### Task 5 - Access data with Key Vault secret with PowerShell

# 

1.  Go to **vmKeyVault** and use RDP to connect to your virtual machine as **adminKeyVault**.
    
2.  In the lab virtual machine, open PowerShell.
    
3.  In PowerShell, invoke the web request on the tenant to get the token for the local host in the specific port for the VM.
    
    TypeCopy
    
    `$Response = Invoke-RestMethod -Uri 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net' -Method GET -Headers @{Metadata="true"}`
    
4.  Next, extract the access token from the response.
    
    TypeCopy
    
    `$KeyVaultToken = $Response.access_token`
    
5.  Use PowerShell’s Invoke-WebRequest command to retrieve the secret you created earlier in the Key Vault, passing the access token in the Authorization header. You’ll need the URL of your Key Vault, which is in the Essentials section of the Overview page of the Key Vault. Reminder - URI for Key Vault is on the Overview tab.
    
    *   Key Vault URI -- get from Key Vaults Overview page in Azure Portal
    *   Secrete Name -- get from Objects - Secrets page in the Key Vault
    
    TypeCopy
    
    `Invoke-RestMethod -Uri https://<your-key-vault-URI>/secrets/<secret-name>?api-version=2016-10-01 -Method GET -Headers @{Authorization="Bearer $KeyVaultToken"}`
    
6.  You should receive a response that looks like the following: `'My Secret' https://mi-lab-vault.vault.azure.net/secrets/mi-test/50644e90b13249b584c44b9f712f2e51 @{enabled=True; created=16…`
    
7.  This secret can be used to authenticate to services that require a name and password.
    

### Congratulations

# 

You have successfully completed this lab. Click **End** to mark the lab as **Complete**.
