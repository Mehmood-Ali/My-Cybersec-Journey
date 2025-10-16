# https://youtu.be/sEtHz6d4kLI

### Exercise 2 - Setup alerts in Microsoft Defender for Cloud Apps

#### Task 1 - Access Microsoft Defender for Cloud Apps and create Conditional Access App Control

Registering your application establishes a trust relationship between your app and the Microsoft identity platform. The trust is unidirectional: Your app trusts the Microsoft identity platform—not the other way around.

1.  Sign in to https://security.microsoft.com using a Global Administrator account.
    
2.  On the left menu, scroll to and select **Polices** in the **Cloud Apps** section of the menu on the left..
    
3.  In the **Policies** menu, locate and select **Policy Management**.
    
4.  Select **\+ Create policy**. Select **Access policy**.
    
5.  Enter a name for the policy, such as **Monitor Microsoft Forms access.**.
    
6.  Leave the **Category** as **Access control**.
    
7.  Under **Activities matching all of the following**, select the drop-down for **Intune compliant, Microsoft Entra Hybrid joined** and unselect **Microsoft Entra Hybrid joined**.
    
8.  Select the drop-down for **Select apps**. Select **Microsoft Forms**.
    
9.  Leave **Actions** as **Test**.
    
10.  Under **Alerts**, leave **Create an alert…** checked and select **Send alert as email**.
    
11.  Enter the lab admin email address and select **Enter** on your keyboard.
    
12.  Select **Create** to create the access policy.
    

#### Task 2 - Log in as Pradeep to Forms to trigger activity

1.  Launch a new **InPrivate browsing** window.
2.  Connect to https://forms.microsoft.com.
3.  Select the login in the upper-right corner of the page.
4.  Log in as Pradeep Gupta.
    *   Username = PradeepG@<<\>>
    *   Password = the password from your resources tab
5.  Confirm that Pradeep has access and that you get a new message:
    *   Your company is monitoring the usage of this application.
6.  Close the InPrivate browsing window.

#### Task 3 - Review the Activity in Defender for Cloud Apps

1.  Return to the browswer running Defender for Cloud Apps.
2.  Refresh the browser to ensure the most recent data is downloaded.
3.  From the **Cloud Apps** menu, select **Activity log**.
4.  Using the **App: filter** pick **Microsoft Forms** from the list.
5.  Notice the sign-on records for Pradeep.

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

# Lab 19 - Register an application

### Login type = Microsoft 365 admin

#### Estimated time: 30 minutes

### Exercise 1 - Register an application

#### Task 1 - App registration

### 

Registering your application establishes a trust relationship between your app and the Microsoft identity platform. The trust is unidirectional: Your app trusts the Microsoft identity platform—not the other way around.

1.  Sign in to https://entra.microsoft.com using a Global Administrator account.
    
2.  Open the portal menu and then select **Microsoft Entra ID**.
    
3.  On the **Identity** menu, under **Applications**, select **App registrations.**
    
4.  On the **App registrations** page, on the menu, select **\+ New registration**.
    
5.  On the **register an application** blade, register an app named **Demo app** using the default values. You do not need to enter the redirect URI.
    
    ![Screen image displaying the Register an application page with the name and default settings highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod3-register-an-application.png)
    
6.  Select the **Register** button.
    
7.  When complete, you will be directed to the **Demo app** page.
    

#### Task 2 - Configure platform settings

### 

Settings for each application type, including redirect URIs, are configured in **Platform configurations** in the Azure portal. Some platforms, like **Web** and **Single-page applications**, require you to manually specify a redirect URI. For other platforms, like mobile and desktop, you can select from redirect URIs generated for you when you configure their other settings.

To configure application settings based on the platform or device you're targeting:

Add and modify redirect URIs for your registered applications by configuring their platform settings.

1.  Select your application in **App registrations** in the Microsoft Entra admin center.
    
2.  Under **Manage**, select **Authentication**.
    
3.  Under **Platform configurations**, select **\+ Add a platform**.
    
4.  In **Configure platforms**, select the tile for your application type (platform) to configure its settings.
    
    ![Screenshot of the Platform configuration pane in the Azure portal](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/configure-platforms.png)
    
    | Platform | Configuration settings |
    | --- | --- |
    | Web | Enter a Redirect URI for your app, the location where Microsoft identity platform redirects a user's client and sends security tokens after authentication. Select this platform for standard web applications that run on a server. |
    | Single-page application | Enter a Redirect URI for your app, the location where Microsoft identity platform redirects a user's client and sends security tokens after authentication. Select this platform if you're building a client-side web app in JavaScript or with a framework like Angular, Vue.js, React.js, or Blazor WebAssembly. |
    | iOS/macOS | Enter the app Bundle ID, found in XCode in Info.plist or Build Settings. A redirect URI is generated for you when you specify a Bundle ID. |
    | Android | Enter the app Package name, which you can find in the AndroidManifest.xml file, and generate and enter the Signature hash. A redirect URI is generated for you when you specify these settings. |
    | Mobile and desktop applications | Select one of the Suggested redirect URIs or specify a Custom redirect URI. For desktop applications, we recommend: https://login.microsoftonline.com/common/oauth2/nativeclient. Select this platform for mobile applications that aren't using the latest Microsoft Authentication Library (MSAL) or are not using a broker. Also select this platform for desktop applications. |
    
5.  Select **Web** as your platform.
    
6.  Enter `https://localhost` for the Redirect URI.
    
7.  Select **Configure** to complete the platform configuration.
    

#### Task 3 - Add credentials, certificate and client secret

### 

Credentials are used by confidential client applications that access a web API. Examples of confidential clients include web apps, other web APIs, and service-type and daemon-type applications. Credentials allow your application to authenticate as itself, requiring no interaction from a user at runtime.

You can add both certificates and client secrets (a string) as credentials to your confidential client app registration.

![Screenshot of Azure portal showing the Certificates and secrets pane in app registration](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/portal-05-app-reg-04-credentials.png)

**Note**: Sometimes called a _public key_, certificates are the recommended credential type, because as they provide a higher level of assurance than a client secret. When using a trusted public certificate, you can add the certificate using the Certificates & secrets feature. Your certificate must be one of the following file types: .cer, .pem, .crt.

**Note**: The client secret, also known as an _application password_, is a string value your app can use in place of a certificate to identity itself. It's the easier of the two credential types to use. It's often used during development, but is considered less secure than a certificate. You should use certificates in your applications running in production.

1.  Select your application in **App registrations** in the Azure portal.
    
2.  Select **Certificates & secrets**, then **\+ New client secret**.
    
3.  Add a description for your client secret and duration
    

*   Description = SC300 lab secret
*   Duration = 90 days (3 months)

1.  Select **Add**.
    
2.  **Save the secret's value in notepad** for use in your client application code; The Certificate & Secrets page will display the new secret value. It's important you copy this value as it's only shown this one time; if you refresh your page and come back, it will only show as a masked value.
    

With your web App registered, you're ready to add the scopes that your API's code can use to provide granular permission to consumers of your API.

#### Task 5 - Add a scope

### 

The code in a client application requests permission to perform operations defined by your web API by passing an access token along with its requests to the protected resource (the web API). Your web API then performs the requested operation only if the access token it receives contains the scopes (also known as application permissions) required for the operation.

First, follow these steps to create an example scope named Employees.Read.All:

1.  Select **Identity**, then **Applications** and finally select **App registrations**, and then select your API's app registration.
    
2.  Select **Expose an API**, then **\+ Add a scope**.
    
    ![An app registration](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/portal-02-expose-api.png)
    
3.  You're prompted to set an **Application ID URI**. Set the value to **api://DemoAppAPI**
    
    *   Note - The App ID URI acts as the prefix for the scopes you'll reference in your API's code, and it must be globally unique. You can use the default value provided, which is in the form api://<application-client-id>, or specify a more readable URI like `https://contoso.com/api`.
4.  Select **Save and continue**.
    
5.  Next, specify the scope's attributes in the **Add a scope pane**. For this walk-through, use the values in the 3rd column - **Value**.
    
    | Field | Description | Value |
    | --- | --- | --- |
    | Scope name | The name of your scope. A common scope naming convention is resource.operation.constraint. | Employees.Read.All |
    | Who can consent | Whether this scope can be consented to by users or if admin consent is required. Select Admins only for higher-privileged permissions. | Admins and users |
    | Admin consent display name | A short description of the scope's purpose that only admins will see. | Read-only access to employee records |
    | Admin consent description | A more detailed description of the permission granted by the scope that only admins will see. | Allow the application to have read-only access to all employee data. |
    | User consent display name | A short description of the scope's purpose. Shown to users only if you set Who can consent to Admins and users. | Read-only access to your employee records |
    | User consent description | A more detailed description of the permission granted by the scope. Shown to users only if you set Who can consent to Admins and users. | Allow the application to have read-only access to your employee data. |
    
6.  Set the **State** to **Enabled**, and then select **Add scope**.
    
7.  (Optional) To suppress prompting for consent by users of your app to the scopes you've defined, you can _pre-authorize_ the client application to access your web API. Pre-authorize _only_ those client applications you trust since your users won't have the opportunity to decline consent.
    
    1.  Under **Authorized client applications**, select **Add a client application.**
        
    2.  Enter the **Application (client) ID** of the client application you want to pre-authorize. For example, that of a web application you've previously registered.
        
    3.  Under **Authorized scopes**, select the scopes for which you want to suppress consent prompting, then select **Add application**.
        
    4.  If you followed this optional step, the client app is now a pre-authorized client app (PCA), and users won't be prompted for their consent when signing into it.
        

#### Task 6 - Add a scope requiring admin consent

### 

Next, add another example scope named Employees.Write.All that only admins can consent to. Scopes that require admin consent are typically used for providing access to higher-privileged operations, often by client applications that run as backend services or daemons that don't sign in a user interactively.

1.  To add the Employees.Write.All example scope, follow the steps above and specify these values in the **Add a scope** pane:
    
    | Field | Example value |
    | --- | --- |
    | Scope name | Employees.Write.All |
    | Who can consent | Admins only |
    | Admin consent display name | Write access to employee records |
    | Admin consent description | Allow the application to have write access to all employee data. |
    | User consent display name | None (leave empty) |
    | User consent description | None (leave empty) |
    
2.  Make sure the State is set to **Enabled** then select **Add Scope**.
    
    *   **Note**: If you successfully added both example scopes described in the previous sections, they'll appear in the **Expose an API** pane of your web API's app registration, similar to this image:
    
    ![Screenshot of the Expose an API pane showing two exposed scopes.](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/portal-03-scopes-list.png)
    
    As shown in the image, a scope's full string is the concatenation of your web API's **Application ID URI** and the scope's **Scope name**.
    
    **Note**: For example, if your web API's application ID URI is `https://contoso.com/api` and the scope name is Employees.Read.All, the full scope is: `https://contoso.com/api/Employees.Read.All`
    
    **Note**: Next, you will configure a client app's registration with access to your web API and the scopes you defined by following the steps above. Once a client app registration is granted permission to access your web API, the client can be issued an OAuth 2.0 access token by the Microsoft identity platform. When the client calls the web API, it presents an access token whose scope (scp) claim is set to the permissions you've specified in the client's app registration. You can expose additional scopes later as necessary. Consider that your web API can expose multiple scopes associated with several operations. Your resource can control access to the web API at runtime by evaluating the scope (scp) claim(s) in the OAuth 2.0 access token it receives.
    

### Exercise 2 - Manage app registration with a custom role

#### Task 1 - Create a new custom role to grant access to manage app registrations

### 

You need to create a new custom role for app management. This new role should be limited to only the specific permissions required to perform credential management.

1.  Sign in to the https://entra.microsoft.com using a Global administrator account.
    
2.  Open the portal menu and then select **Microsoft Entra ID**.
    
3.  On the lefthand menu, under **Identity**, select **Roles and admins**.
    
4.  Then select **Roles & admins** item, then select **\+ New custom role**.
    
    ![Screen image displaying the Roles and administrators blade with the New custom role menu option highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod1-new-custom-role.png)
    
5.  In the New custom role dialog, on the Basics tab, in the name box, enter **My custom app role**.
    
6.  Review the remaining options and then select **Next**.
    
7.  On the Permissions tab, review the available permissions.
    
8.  In the **Search by permission name or description** box, enter **credentials**.
    
9.  In the results, select the **Manage** permissions and then select **Next**.
    
    TypeCopy
    
       `microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials  -   Manage password single sign-on credentials or service principals.    microsoft.directory/servicePrincipals/synchronizationCredentials/manage    -   Manage application provisioning secrets and credentials.`
    
    ![Screen image displaying the New custom role Permissions tab with search, manage permissions, and Next highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod1-custom-role-permissions.png)
    
    **Why pick those two** - For application provisionsing these two items are the bare minimum permissions needed to enable and enforce single sign-on for the application or service principal being created; and be able to assign the enterise application to a set of users or groups. Other permissions could also be granted. You can get a full list of available permissions at `https://docs.microsoft.com/azure/active-directory/roles/custom-enterprise-app-permissions`.
    
10.  Select **Next**.
    
11.  Review the changes and then select **Create**.
    

### Congratulations!

### 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

-----------

# Lab 20 - Implement access management for apps

### Login type = Microsoft 365 admin

## Lab scenario

# 

Your organization requires that only specific users or groups have access to enterprise applications. You must assign a user to a specific application.

#### Estimated time: 5 minutes

### Exercise 1 - Configure an Enterprise App

#### Task 1 - Add an app to your Microsoft Entra tenant

# 

1.  Sign in to the https://entra.microsoft.com using a Global administrator account.
    
2.  Open the portal menu and then select **Microsoft Entra ID**.
    
3.  On the Identity menu, under **Applications**, select **Enterprise applications**.
    
4.  In the Enterprise applications pane, select **\+ New application**.
    
    ![Screen image displaying the Enterprise applications page with New application highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod1-new-enterprise-application.png)
    
5.  In the Browse Microsoft Entra Gallery page, in the **Search application** box, enter **GitHub**.
    
    ![Screen image displaying the Browse Microsoft Entra Gallery page with the search box highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod1-azure-ad-gallery-search.png)
    
6.  In the results, select **GitHub Enterprise Cloud – Enterprise Account**.
    
7.  In the **GitHub Enterprise Cloud – Enterprise Account**, review the settings and then select **Create**.
    
8.  Once created, you will be redirected to the GitHub Enterprise Cloud – Enterprise Account page.
    

#### Task 2 - Assign users to an app

# 

1.  On the GitHub Enterprise Cloud – Enterprise Account page, on the Overview page, under **Getting Started**, select **1\. Assign users and groups**.
    
2.  Alternatively, in the left navigation, under **Manage**, you can select **Users and groups**.
    
3.  On the Users and groups page, on the menu, select **\+ Add user/group**.
    
4.  On the Add Assignment page, select **None selected** in the **Users and groups** section.
    
5.  In the Users and groups pane, select Adele Vance and your MOD administrator account.
    
6.  Select **Select**.
    
    ![Screen image displaying adding a user account assignment to an app with the Select button highlighted ](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod1-add-app-assignment.png)
    
7.  Select **Assign**.
    

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

-------------

# Lab 21: Grant tenant-wide admin consent to an application

### Login type = Microsoft 365 admin

## Lab scenario

# 

For applications your organization has developed or for those that are registered directly in your Microsoft Entra tenant, you can grant tenant-wide admin consent from App registrations in the Azure portal.

#### Estimated time: 15 minutes

### Exercise 1 - Admin Consent

#### Task 1 - Grant admin consent in App registrations

# 

**Warning** \- Granting tenant-wide admin consent to an application will grant the app and the app's publisher access to your organization's data. Carefully review the permissions the application is requesting before granting consent.

The Global Administrator role is required in order to provide admin consent for application permissions to the Microsoft Graph API.

1.  In a previous exercise, you created an app named Demo app. If necessary, in Microsoft Entra admin center, browse to **Identity**, **Applications**, then select **App registrations**, and then select **Demo app**.
    
2.  On the **Demo app** page, locate and copy and save each **Application (client) ID** and **Directory (tenant) ID** values so that you can use them later.
    
    **Note** \- **Demo app** is created in the previous labs. Please complete these labs before this lab.
    
    ![Screen image displaying the Demo app page with the directory ID highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod3-demo-app-directory-id.png)
    
3.  In the left navigation, under **Manage**, select **API permissions**.
    
4.  Under **Configured permissions**, select **Grant admin consent**.
    
    ![Screen image displaying the API permission page with Grant admin consent for Contoso highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod3-api-permissions-admin-consent.png)
    
5.  Review the dialogue box, and then select **Yes.**
    
    **Warning** \- Granting tenant-wide admin consent through App registrations will revoke any permissions that had previously been granted tenant-wide. Permissions previously granted by users on their own behalf will not be affected.
    

#### Task 2 - Grant admin consent in Enterprise apps

# 

You can grant tenant-wide admin consent through Enterprise applications if the application has already been provisioned in your tenant.

1.  In Microsoft Entra admin center, browse to **Identity** and **Applications**.
    
2.  From the menu open **Enterprise applications**.
    
3.  From the list of Enterprise applications pick the **Demo app** that we registered earlier.
    
4.  On the **Demo app** page, in the left navigation, under **Security,** select **Permissions.**
    
5.  Under **Permissions,** select **Grant admin consent.**
    
    ![Screen image displaying the Demo app permissions page with Grant admin consent for Contoso highlighted](https://raw.githubusercontent.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/refs/heads/CloudSlice-and-M36tenant/Instructions/Labs/media/lp3-mod3-grant-admin-consent-in-enterprise-app.png)
    
    **Warning** - Granting tenant-wide admin consent through App registrations will revoke any permissions that had previously been granted tenant-wide. Permissions previously granted by users on their own behalf will not be affected.
    
6.  When prompted, sign in using your Global Administrator account.
    
7.  In the **Permissions requested** dialog box, review the information and then select **Accept**.
    

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.

-----------------

