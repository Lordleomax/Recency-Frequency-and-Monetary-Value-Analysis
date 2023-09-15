--DATA CLEANING
-- Handline Missing Values

Select *
From [dbo].[NeighborMart]
Where Income is null

--By doing this, we noticed 24 missing values in the income column.
--These missing values constitute 1.07% of our entire dataset, 
--so removing the rows that contain these missing values will not cause harm to our analysis. 

--Deleting Null Values from the data

Delete From [dbo].[NeighborMart]
Where Income is null

--Standardinzing the nomeclature in the Education Column 
UPDATE [dbo].[NeighborMart]
SET Education = 
    REPLACE(
        REPLACE(
            REPLACE(Education, 'Graduation', 'Graduate'),
            '2n Cycle', 'Undergraduate'
        ),
        'Basic', 'Undergraduate'
    )

UPDATE [dbo].[NeighborMart]
SET Education = REPLACE (Education, 'PhD', 'Postgraduate')

UPDATE [dbo].[NeighborMart]
SET Education = REPLACE (Education, 'Master', 'Postgraduate')

Select Education, count (Education) Edu
From[dbo].[NeighborMart]
Group By Education

--Standardinzing the nomeclature in the Marital Status Column 
UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Married', 'Partner')
UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Together', 'Partner')

UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Single', 'Alone')

UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Divorced', 'Alone')

UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Widow', 'Alone')

UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'Absurd', 'Undisclosed')

UPDATE [dbo].[NeighborMart]
SET Marital_Status = REPLACE (Marital_Status, 'YOLO', 'Undisclosed')



--Checking results

Select Marital_Status, count (Marital_Status) Edu
From[dbo].[NeighborMart]
Group By Marital_Status

Select *
From NeighborMart

--Change the year of birth to age

Alter Table[dbo].[NeighborMart]
 Add Age Int

 Update [dbo].[NeighborMart]
 Set Age = YEAR(GETDATE())-Year_Birth


-- Create a new column for the total number of children

Alter Table[dbo].[NeighborMart]
Add Number_of_Children Int

 Update [dbo].[NeighborMart]
 Set Number_of_Children = (Kidhome)+(Teenhome)

 --Create a column for monetary value
 Alter Table[dbo].[NeighborMart]
Add Monetary_Value Int

 Update [dbo].[NeighborMart]
 Set Monetary_Value = [MntWines]+[MntFruits]+[MntMeatProducts]+[MntFishProducts]+
[MntSweetProducts]+[MntGoldProds]
 
 --Create a column for Frequency
  Alter Table[dbo].[NeighborMart]
Add Frequency Int

 Update [dbo].[NeighborMart]
 Set Frequency = [NumWebPurchases]+[NumCatalogPurchases]+[NumStorePurchases]



 --Getting the final dataset for analysis that would be exported to excel
 Select Age,Education,Marital_Status,Income,Number_of_Children, Recency,Monetary_Value, Frequency
 From[dbo].[NeighborMart]
 
   