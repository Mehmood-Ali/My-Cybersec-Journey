# Create a custom sensitive information type that uses a regular expression

To create a custom sensitive information type (SIT) with a regular expression in Microsoft Purview, navigate to the Microsoft Purview portal > Information Protection > Classifiers > Sensitive info types, click Create sensitive info type, provide a name and description, and then click Create pattern. 

Choose Regular Expression as the primary element, enter your pattern in the provided field, select the desired match type (string or word), and configure any supporting elements and confidence levels. Finally, click Done and follow the remaining steps to finish creating the custom SIT. 

Step-by-Step Guide

Sign in to the Microsoft Purview portal: (purview.microsoft.com) and navigate to Information Protection > Classifiers > Sensitive info types. 

Click Create sensitive info type. 

Fill in the details: for your custom SIT, including a unique Name and a descriptive Description. 

Click Next. 

On the "Define patterns" page, click Create pattern. 

Add a primary element: by selecting Regular Expression from the "+ Add primary element" dropdown. 

In the Regular Expression field, paste your specific regex pattern. 

Choose the Match Type:

String Match: Allows matches within other text, such as "ID:1234567891Number" matching "1234567891". 

Word Match: Only matches instances where the pattern stands alone as a complete word. 

(Optional) You can add Supporting Elements like keyword lists to improve accuracy and reduce false positives. 

Set the Confidence Level for the pattern. A higher confidence level requires more supporting elements or stricter matching criteria. 

Click Done. 

Configure Character Proximity (how close supporting elements must be to the primary element) and click Next. 

Review the Confidence level and other settings for the overall SIT. 

Click Create to finalize and save your new custom sensitive information type.

# Create a custom sensitive information type

To create a custom sensitive information type, you need to:

Sign in to the Microsoft Purview portal.

In the Microsoft Purview portal, navigate to Solutions > Information Protection.

On the Microsoft Information Protection page, on the left sidebar, expand Classifiers then select Sensitive info types.

On the Sensitive info types page, select + Create sensitive info type.

Fill in values for Name and Description, then select Next.

On the Define patterns for this sensitive info type page, select Create pattern.

You can create multiple patterns, each with different elements and confidence levels, as you define your new sensitive information type.

A flyout panel appears to define your new pattern. Choose the default confidence level for the pattern. The values are Low confidence, Medium confidence, and High confidence.

In the flyout panel, choose one of these options as your Primary element:

Regular expression
Keyword list
Keyword dictionary
Functions
In the flyout panel, fill in a value for Character proximity.

(Optional) Add supporting elements if your data needs extra context to strengthen detection. Supporting elements can be a regular expression with or without a validator, a keyword list, keyword dictionary, or one of the predefined functions. These elements help refine the match by adding corroborating details.

(Optional) In the flyout panel, add any additional checks. These checks can include validation processes such as checksums to further ensure that the detected data is valid and meets your criteria.

At the bottom of the flyout panel, select Create.

Screenshot showing the new pattern options when creating a sensitive info type.

Back on the Define patterns for this sensitive info type page, select Next.

Choose the recommended confidence level for this sensitive information type, then select Next.

On the Review settings and finish page review the settings and select Create. When successfully created select Done.

The Sensitive info types tab of the Classifiers page, lists all of the sensitive information types. select Refresh and then or use the search tool or browse the list to find your new SIT.

## how to Create a custom sensitive information type that uses a keyword list or keyword dictionary in purview

To create a custom sensitive information type (SIT) using a keyword list or dictionary in the Microsoft Purview portal, navigate to Information Protection > Classifiers > Sensitive info types and click Create sensitive info type. 

Fill in the name and description, then click Next to create a pattern. Under the pattern details, select Keyword list or Keyword dictionary as the primary element.

For keyword lists, enter keywords on separate lines, with a 50-character limit per keyword. For keyword dictionaries, you manage a larger set of keywords for better scalability.

Choose a confidence level and finalize the creation of your custom SIT. 

Steps to Create a Custom Sensitive Information Type

Sign in to the Microsoft Purview portal . 

In the left-hand navigation pane, select Solutions, then expand Information Protection and click on Sensitive info types. 

Create a new SIT: Click the Create sensitive info type button. 

Provide SIT Details:

Name: Give your custom SIT a descriptive name. 

Description: Add a description for clarity. 

Click Next. 

Create a Pattern: Click Create Pattern. 

Define the Primary Element:

Choose a confidence level: Select a default confidence level (Low, Medium, or High) for the pattern. 

Choose your element type: From the options, select Keyword list or Keyword dictionary as the primary element. 

Enter your keywords:

Keyword List: Add each keyword or phrase on a new line. Keywords are limited to 50 characters. 

Keyword Dictionary: Use this for managing larger lists of keywords. 

Click Done when you have finished adding keywords. 

Finalize and Create: Review the details and create your custom sensitive information type. 

Key Considerations

Confidence Levels: A higher confidence level typically means more supporting elements must be found near the primary element, leading to more accurate results. 

Keyword Dictionary vs. Keyword List: Keyword dictionaries offer easier management for larger lists of keywords compared to keyword lists. 

Supporting Elements: You can add supporting elements to your SIT to increase the confidence level and accuracy of the detection. 

Existing Keyword Lists: You can also choose to use an existing keyword list by selecting its ID if it already exists in your environment. 

## how to Create a custom sensitive information type from a built-in sensitive information type in purview

To create a custom sensitive information type (SIT) in Microsoft Purview from a built-in SIT, navigate to the Information Protection section, select Sensitive info types, and click Create sensitive info type to define your new SIT by selecting patterns, which can include keywords, regex, or EDM classifiers to identify sensitive data.

You can also copy and modify an existing SIT by exporting its XML definition and then uploading the modified XML as a new rule, as per the Microsoft Learn documentation. 

Using the Purview Portal (UI)

Sign in: to the Microsoft Purview portal at purview.microsoft.com. 

Navigate to Information Protection > Classifiers > Sensitive info types. 

Select Create sensitive info type. 

Fill in the Name and Description for your new SIT. 

Choose Create pattern to define the elements that will identify your sensitive information. 

Define your pattern by choosing a Primary element, such as:

Regular expression: Use text patterns to detect information. 

Keyword list: A collection of words or phrases to identify. 

Keyword dictionary: For easier, larger-scale keyword management. 

Function: A built-in component to help identify patterns. 

Add Supporting elements, such as keywords or other patterns, to improve the accuracy and reduce false positives. 

Assign a Confidence level (Low, Medium, or High) to indicate how certain Purview should be when flagging a match.

Choose Done and then Create pattern if you need to define additional patterns for your SIT. 

Select Next to set the recommended confidence level for the SIT. 

Review your configuration and Submit to save your custom SIT. 

Copying and Modifying an Existing SIT (XML) 

Locate the XML file for the rule you want to modify.

Copy: the XML definition from the file.

Create a new sensitive information type.

Paste: the copied XML into the template for the new rule.

Modify: the necessary values within the XML to create your custom definition.

Upload: the modified XML to save it as a new rule.

## how to Create a document fingerprint classifier in purview

To create a document fingerprint classifier in Microsoft Purview, navigate to Data Loss Prevention (or Information Protection) > Classifiers > Sensitive info types, and then select + Create Fingerprint based SIT.

You will then name and describe the new classification, upload the template file that will serve as the "fingerprint," optionally adjust confidence level requirements, and then review and create the sensitive information type. 

Step-by-Step Guide:

Navigate to Classifiers: In the Microsoft Purview portal, go to Data Loss Prevention (or Information Protection).

Access Sensitive Info Types: On the left-hand navigation menu, select Classifiers and then Sensitive info types. 

Start Fingerprint Creation: On the Sensitive info types page, select the + Create Fingerprint based SIT option. 

Provide Basic Information:

Enter a Name for your new sensitive information type (SIT).

Provide a clear Description for the SIT to explain its purpose. 

Upload the Template:

Click the option to Upload the file you want to use as the document fingerprint. This document will act as the unique signature for future documents you want to classify. 

Configure Confidence Levels (Optional):

You can adjust the requirements for each confidence level (low, medium, high) if desired. This controls how closely a document must match the fingerprint to be identified as sensitive. 

Review and Create:

Choose Next to move to the review screen. 

Review your settings and then select Create to finalize the process. 

Confirm Completion: A confirmation page will display when the creation is complete. 

After creation, the Microsoft 365 search crawler will recrawl your content to identify documents that match this new document fingerprint, and you can then use it in DLP policies. 

This video demonstrates the process of creating a document fingerprint:
