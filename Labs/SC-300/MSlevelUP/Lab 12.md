# https://youtu.be/2tGeEy2PPyU

Lab 12 - Manage Microsoft Entra smart lockout values
Login type = Microsoft 365 admin
Lab scenario
You must configure the additional password protection settings for your organization.

Estimated time: 5 minutes
Exercise 1 - Manage Microsoft Entra smart lockout values
Task - Add Smart Lockouts
Based on your organizational requirements, you can customize the Microsoft Entra smart lockout values. Customization of the smart lockout settings, with values specific to your organization, requires Microsoft Entra ID Premium P1 or higher licenses for your users.

Browse to https://entra.microsoft.com and sign in using a Global administrator account for the directory.

Open the portal menu and then select Identity.

On the Identity menu, open the Protection menu.

In the left navigation, select Authentication methods.

Then select Password protection.

Screen image displaying the Authentication methods page and the highlighted selections to browse to Password authentication

In the Password protection settings, in the Lockout duration in seconds box, set the value to 120.

Next to Mode, select Enforced.

Save your changes.

NOTE - When the smart lockout threshold is triggered, you will get the following message while the account is locked:

Your account is temporarily locked to prevent unauthorized use. Try again later, and if you still have trouble, contact your admin.
This can be tested by choosing a user in your Microsoft Entra tenant, navigate in a private browser to and enter an incorrect password until the account gets notification that it is locked out.

Congratulations!
You have successfully completed this Lab. Click Next to advance to the next Lab.
