# 18 - Defender for Cloud Apps Access and Session Policies

### Login type = Microsoft 365 admin

## Lab scenario

# 

Microsoft Defender for Cloud Apps allows us to create additional Conditional Access policies specific to the cloud apps that we are monitoring. Creating these policies can be done from within the Control menu within the Microsoft Defender for Cloud Apps portal.

#### Estimated time: 20 minutes

### Exercise 1 - Create and test the Conditional Access App Contol policy

#### Task 1 - Confirm that PradeepG has unconditional access to FORMS

# 

1.  Launch a new **InPrivate browsing** window.
2.  Connect to https://forms.microsoft.com.
3.  Select the login in the upper-right corner of the page.
4.  Log in as Pradeep Gupta.
    *   Username = PradeepG@<<\>>
    *   Password = the password from your resources tab
5.  Confirm that Microsoft Forms opens and that you do not get any warning messages.
6.  Close the InPrivate browsing window.

#### Task 2 - Configure Microsoft Entra ID to work with Defender for Cloud Apps

# 

1.  Navigate to https://entra.microsoft.com and go to Microsoft Entra ID.
    
2.  Under **Identity**, select **Protection**.
    
3.  Then select **Conditional Access**.
    
4.  Select **\+ Create new policy**.
    
5.  Enter a policy name, such as **Monitor Pradeep using Forms**.
    
6.  Under **Assignments**, choose **0 users and groups selected**, select **Specific users included**, select **Select users and groups** and mark the **Users and groups**.
    
7.  Choose the **Pradeep Gupta** account for the lab tenant and select **Select**.
    
8.  Under **Target resources**, select **No target resources selected**.
    
9.  Select **Select resources**, and then click **none** under **Select** to be able to choose **Microsoft Forms**..
    
10.  Under **Access controls**, select **Session** and **0 controls selected**.
    
11.  Select the **Use Conditional Access App Control** box, leave the default of **Monitor only**, and select **Select**.
    
12.  Under **Enable policy**, select **On**, and select **Create**.
    

#### Task 3 - Log into Forms and validate that conditional access is monitoring

# 

1.  Launch a new **InPrivate browsing** window.
2.  Connect to https://forms.microsoft.com.
3.  Select the login in the upper-right corner of the page.
4.  Log in as Pradeep Gupta.
    *   Username = PradeepG@<<\>>
    *   Password = the password from your resources tab
5.  Confirm that Pradeep has access and that you get a new message:
    *   Your company is monitoring the usage of this application.
6.  Close the InPrivate browsing window.
