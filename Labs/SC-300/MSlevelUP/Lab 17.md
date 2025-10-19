# https://youtu.be/XvRaONGdynQ

# Lab 17 - Defender for Cloud Apps application discovery and enforcing restrictions

### Login type = Microsoft 365 admin

## Lab scenario

# 

Microsoft Defender for Cloud Apps utilizes logs from network traffic to identify the applications that users are accessing.  Traffic logs from on-premises firewalls will provide a snapshot report on the most common applications and the users that are accessing these apps.  Traffic from managed devices will be fed into the Microsoft Defender for Cloud Apps discovery overview dashboard

#### Estimated time: 10 minutes

### Exercise 1 - Defender for Cloud Apps discovery

#### Task 1 - Discovery apps in Defender for Cloud Apps

# 

1.  Sign in to https://security.microsoft.com using a Global Administrator account.
    
2.  On the left menu, scroll to the heading named **Cloud Apps** and click **Cloud App Catalog**.
    
3.  In **Browse by category** pane, select **Cloud storage**.
    
4.  In the list of apps, note the **Risk score** next to the app name.
    
5.  Open another browser tab and navigate to **www.dropbox.com**.
    
6.  You will be able to access this website.
    
7.  Close the tab for Dropbox.
    
8.  Return to the Defender for Cloud Apps screen, and select the three-dot to the right of Dropbox.
    
9.  Choose **Sanctioned** and then the **Next** button.
    

#### Task 2 - Restrict Apps in Defender for Cloud Apps

# 

1.  Return to the **Discovered apps** tile and select the **Tag as unsanctioned** for Dropbox. **Note**: This is located next to the circled check-mark.
    
2.  Click **Save**
    
3.  This process allows you to block applications that are not sanctioned within your company policy, limiting Shadow IT within your organization.
    

**Note**: There is a delay when sactioning and unsanctioning an application and that application. You may have to wait up to 5 minutes.

Once the application has been blocked as unsanctioned, the application will not be accessible through browser, in-private browser, or store download on a Client that is onboarded to MDE (Microsoft Defender for Endpoint) integrated with Microsoft Defender for Cloud Apps.

### Congratulations!

# 

You have successfully completed this Lab. Click **Next** to advance to the next **Lab**.
