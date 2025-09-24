Sign in to the Microsoft Purview portal, then navigate to Solutions > Information Protection > Classifiers > EDM classifiers.

Make sure the New EDM experience toggle is set to On.

Screenshot showing the toggle to use the new EDM experience.

Select Create EDM classifier.

Review the Familiarize yourself with the steps needed to put your classifier to work page, then select Create EDM classifier.

On the Name and describe your EDM classifier page, name the SIT and add a description. The system uses this name, appended with the word schema, for the associated schema it generates.

Select Next.

On the Choose a method for defining your schema page, select the method you want to use for your schema: either Upload a file containing sample data, or Manually define your data structure.

Best practice is to upload a sample data file. The rest of this procedure assumes this option.

Select Next.

On the Upload your sample file page, select your sample file and then select Upload file. Select Next.

If errors display during the upload, address them and then try again.

On the Select primary elements page:

In the Primary element column, select your primary element. Each primary element must be mapped to a SIT. Best practice is to select fields that show Full match under the Match Validation column.

In the Match mode column for each field, designate which of the following matching options to apply:

Option 1: Do nothing to accept the system-suggested SIT.
Option 2: Expand the dropdown menu. Under Sensitive Info type (SIT), choose the pencil (Edit) icon and then select another existing SIT.
Option 3: Under Match mode select Single token.
Option 4: Under Match mode select Multi-token.
Select Next.

Configure settings for data in selected columns.

The toggle Use the same settings for all columns is set to On by default. If you want to use separate settings for each data field, set the toggle to Off.
The Data in columns are case-insensitive option is selected by default. To enforce case-sensitive detection, uncheck this box.
If needed, select the option to Ignore delimiters and punctuation for data in all columns You can then either select the delimiters and punctuation marks you want to ignore from a list or you can enter custom delimiters and punctuation marks to ignore.
On the Review settings and finish page, select Submit.

On the You successfully created an EDM classifier page, capture the Schema name. This name is required when hashing and uploading the sensitive information source table to ensure proper mapping of the data to the schema.

Once you've captured the schema name, select Done.

Once you create your EDM schema, the next step is to hash and upload your sensitive data. This ensures the data can be used securely for classification. For detailed steps on hashing and uploading your source table, see Hash and upload the sensitive information source table for exact data match sensitive information types
