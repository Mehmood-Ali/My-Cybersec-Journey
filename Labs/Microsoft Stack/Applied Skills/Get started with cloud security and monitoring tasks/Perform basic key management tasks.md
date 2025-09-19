
[Watch this video before anything else](https://youtu.be/AA3yYg9Zq9w)


# Index:

Manage keys

Manage secrets

Authorize users to access keys

Gather Key vault information


## Manage Keys

To get some quick experience with Azure Key Vault, let's create a new Key Vault and do the most basic operation available: store a secret. Creating a vault in the Azure portal requires no initial configuration. Your signed-in user identity is automatically granted the full set of secret management permissions, and you can start adding secrets immediately. Once you have a vault, adding and managing secrets can be done from any Azure administrative interface, including the Azure portal, the Azure CLI, and Azure PowerShell.

Create a new Azure Key Vault
Let's start by creating a new Key Vault in the Azure portal.

Sign in to the Azure portal using the same credentials you used to activate the Azure Sandbox.

Select Create a resource. The Create a resource pane appears.

In the Search services and marketplace, search for and select Key Vault to find the Azure Key Vault service. The Key Vault pane appears.

<img width="1124" height="985" alt="image" src="https://github.com/user-attachments/assets/7329aba3-5f21-4041-bd10-502adb38ccc1" />

Select Create. The Create key vault pane appears.

On the Basics tab, enter the following values for each setting.

Setting	Value
Project details	
Subscription	From the dropdown, select Concierge Subscription.
Resource group	From the dropdown, select [sandbox resource group name].
Instance details	
Key vault name	Enter a globally unique name for the new vault. Vault names must be 3-24 characters long and contain only alphanumeric characters and dashes. The exercise uses the example name of VaultamortDiary for the new vault.
Region	Accept default.
Pricing tier	Accept default.
Select Review + create.

<img width="622" height="875" alt="image" src="https://github.com/user-attachments/assets/1538dfa6-410d-457d-9ab0-921aa2339db2" />







After validation passes, select Create to create the Azure Key Vault.

After the deployment is complete, select Go to resource. Your Key vault pane appears.

Add a secret
Next, add a new secret to the vault.

<img width="1341" height="941" alt="image" src="https://github.com/user-attachments/assets/1af6a467-c978-4846-90f1-f4587381f532" />
<img width="955" height="835" alt="image" src="https://github.com/user-attachments/assets/1b7442ec-e66b-4783-bc62-772f3c889cc9" />
<img width="598" height="986" alt="image" src="https://github.com/user-attachments/assets/7acfcc75-52ef-4504-a467-77e5ab958ad1" />
<img width="967" height="639" alt="image" src="https://github.com/user-attachments/assets/aefdb709-9eb2-4850-a278-4f88f242dcba" />



In the left menu pane, under Objects, select Secrets. The Secrets pane appears for your key vault.

In the top menu bar, select Generate/Import. The Create a secret pane appears.

Enter a name, value, and (optional) content type. An example follows.

Screenshot showing the Create a secret pane in the Azure portal for Azure Key Vault.

Select Create to add the secret. The Secrets pane reappears.

<img width="1049" height="786" alt="image" src="https://github.com/user-attachments/assets/3fb39747-c17c-470e-a39d-4c1313d13c6e" />
<img width="1016" height="814" alt="image" src="https://github.com/user-attachments/assets/e65e1e04-8f62-49e5-9150-95dde33613e0" />



Show the secret
Finally, verify that the secret value has been set.

Select your secret from the list. The Versions pane appears for your secret.

Select the CURRENT VERSION of the secret. The Secret Version pane appears.

Select Show Secret Value to see the value assigned to the secret.

Screenshot showing the secret value in the Azure portal.

Other ways to consume the secret
You can create and retrieve secrets from the Azure Key Vault as long as you're authenticated with Microsoft Entra ID using the REST API, native SDKs, Azure CLI, or Azure PowerShell. For example, here's the same process using Azure PowerShell.

PowerShell

<img width="1837" height="833" alt="image" src="https://github.com/user-attachments/assets/4ee04d1e-efd7-457a-91fb-acc748521667" />



Get-AzKeyVault
This command returns the created vault with the name VaultamortDiary.

Output

Copy
PS /home/azureuser> get-azkeyvault

Vault Name          : Keyvault-Al123456
Resource Group Name : learn-a2990acf-b5c9-40ca-8b4e-da608ddddd02
Location            : australiaeast
Resource ID         : /subscriptions/8b6001cd-a329-4999-8dbb-3b3261bb100a/resourceGroups/learn-a2990acf-b5c9-40ca-8b4e-da608ddddd02/providers/Microsoft.KeyVault/vaults/Keyvault-Al123456
Tags                : 

With the name of the vault and the key, you can retrieve the secret value:

PowerShell

Copy
Get-AzKeyVaultSecret -VaultName 'VaultamortDiary' -Name 'HiddenLocation'
This command returns our set value:

Output

Vault Name                          : Keyvault-Al123456
Resource Group Name                 : learn-a2990acf-b5c9-40ca-8b4e-da608ddddd02
Location                            : australiaeast
Resource ID                         : /subscriptions/8b6001cd-a329-4999-8dbb-3b3261bb100a/resourceGroups/learn-a2990acf-b5c9-40ca-8b4e-da608ddddd02/providers/Microsoft.KeyVault/vaults/Keyvault-Al123456
Vault URI                           : https://keyvault-al123456.vault.azure.net/
Tenant ID                           : 604c1504-c6a3-4080-81aa-b33091104187
SKU                                 : Standard
Enabled For Deployment?             : False
Enabled For Template Deployment?    : False
Enabled For Disk Encryption?        : False
Enabled For RBAC Authorization?     : True
Soft Delete Enabled?                : True
Soft Delete Retention Period (days) : 90
Purge Protection Enabled?           : 
Public Network Access               : Enabled
Access Policies                     : 
Network Rule Set                    : 
                                      Default Action                             : Allow
                                      Bypass                                     : None
                                      IP Rules                                   : 
                                      Virtual Network Rules                      : 


Manage Certificates


<img width="1242" height="684" alt="image" src="https://github.com/user-attachments/assets/adf86226-9e50-4aa4-b9c8-c2d267c70344" />

<img width="1415" height="910" alt="image" src="https://github.com/user-attachments/assets/2d86ace6-722e-4583-8230-d44bc974ebc8" />
<img width="654" height="919" alt="image" src="https://github.com/user-attachments/assets/d2977ea9-b837-487a-938e-3442abe060ef" />
<img width="1242" height="684" alt="image" src="https://github.com/user-attachments/assets/9f9358d3-654a-47b5-ad25-f11cb1c99f9d" />

Use Certificates in web apps

Azure App Service integration
Once you have a public/private key pair certificate in your Azure Key Vault, you can easily associate it to your web app through the Azure portal.

Select TLS/SSL settings under Settings.

Select the Private Key Certificate (.pfx) tab.

Select Import Key Vault Certificate as shown in the following screenshot.

<img width="1440" height="652" alt="image" src="https://github.com/user-attachments/assets/65b55042-deb3-41c2-80e2-1e1f26a18361" />


Screenshot of the Azure portal where you can load a Key Vault certificate to an Azure App Service web app.

You can then select the vault, which must be in the same subscription, and the secret containing the certificate.

The certificate must be an X.509 cert with a content type of application/x-pkcs12 and can't have a password.
Finally, once the certificate is in place, you want to set up a custom domain. There's already a built-in certificate for *.azurewebsites.net. You can then associate your custom domain with the certificate you've assigned so the server uses your certificate to secure the connection to the browser.




