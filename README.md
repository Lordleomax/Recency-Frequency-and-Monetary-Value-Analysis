# Recency-Frequency-and-Monetary-Value-Analysis

![RFM Analysis Dashboard](https://github.com/Lordleomax/Recency-Frequency-and-Monetary-Value-Analysis/assets/131598329/979cad28-25cc-4c98-8153-9fcecaf205c3)

## Overview
RFM analysis is a valuable customer segmentation and profiling technique that empowers businesses to gain deeper insights into their customer base. It leverages three key factors:
1. Recency (R): This metric assesses how recently a customer made a purchase, assigning higher scores to more recent transactions.
2. Frequency (F): It evaluates how often a customer makes purchases, granting higher scores to more frequent buyers.
3. Monetary Value (M): This metric analyzes how much money a customer spends on purchases, favouring those who make higher-value transactions.

## Business Case
This analysis aims to categorize its customers into six distinct segments based on their purchasing habits and engagement levels. This segmentation strategy would enable the company to tailor its marketing efforts effectively to each group. This comprehensive RFM analysis will enable NeighborMart to make informed decisions and refine its marketing strategies to maximize customer satisfaction and revenue.

## Methodology for RFM Analysis
NeighborMart aimed to categorize its customers into six distinct segments based on their purchasing habits and engagement levels. This segmentation strategy would enable the company to tailor its marketing efforts effectively to each group.

### Methodology for RFM Analysis at NeighborMart:
For this project, we will be using SQL for cleaning and aggregation and Microsoft Excel for further analysis and visualization.

1. Data Cleaning:
address missing values, rectified incorrectly spelt entries, and eliminated duplicates.
2. Data Aggregation:
create new columns based on existing data, including calculating customer age from the birth year, introducing a column for the total number of children, and computing the total monetary value spent by each customer along with purchase frequency.
3. Feature Selection:
identify and select pertinent features (columns) from the dataset to be utilized for customer segmentation.
4. Percentrank:
introduce a new column for Percentrank to normalize metrics for monetary value, frequency, and recency.
5. RFM Score Calculation:
compute an RFM score based on percent rank values, summing the three columns created in the previous step. A new column, Percentrank.inc, will be established from the RFM score to segment customers based on their combined RFM values.
6. Customer Segmentation:
Create a new column named "Customer Segment" and categorize customers based on the RFM score using VLOOKUP.
7. Pivot Chart for Customer Segments:
Create a pivot chart displaying the count of customers in each segment, including top customers, loyal customers, those at risk, and those needing immediate attention.
8. Visualization and Analysis:
Develop visualizations explaining each segment and incorporated key performance indicators (KPIs). Demographic values such as average age, income, number of children, and marital status will be included for the different customer segments to deepen the understanding of customer profiles.



## Dataset
The project utilized a dataset from Kaggle comprising information on 2,240 customers, with each customer’s details organized in 27 columns. Noteworthy columns include customer ID, year of birth, education level, marital status, yearly household income, and various purchasing behaviours and preferences.

### Data Dictionary:
ID: Unique customer identifier

Year of Birth: The customer's birth year

Education: The customer's education level

Marital Status: The customer's marital status

Income: Yearly household income

Kidhome: Number of children in the household

Teenhome: Number of teenagers in the household

Dt Customer: Enrollment Date

Recency: Days since last purchase

Complain: 1 if the customer complained in the last 2 years, 0 otherwise.

MntWines: Amount spent on wine in the last 2 years

MntFruits: Amount spent on fruits in the last 2 years

MntMeatProducts: Amount spent on meat in the last 2 years

MntFishProducts: Amount spent on fish in the last 2 years

MntSweetProducts: Amount spent on sweets in the last 2 years

MntGoldProds: Amount spent on gold in the last 2 years

NumDealsPurchases: number of purchases made with a discount

AcceptedCmp1: 1 if the customer accepted the offer in the first campaign, 0 otherwise.

AcceptedCmp2: 1 if the customer accepted the offer in the second campaign, 0 otherwise.

AcceptedCmp3: 1 if the customer accepted the offer in the 3rd campaign, 0 otherwise.

AcceptedCmp4: 1 if the customer accepted the offer in the 4th campaign, 0 otherwise.

AcceptedCmp5: 1 if the customer accepted the offer in the 5th campaign, 0 otherwise.

Response: 1 if the customer accepted the offer in the last campaign, 0 otherwise.

NumWebPurchases: Number of purchases made through the company's website

NumCatalogPurchases: Number of purchases made using a catalogue

Number of Store Purchases: Number of purchases made directly in stores

NumberWebVisitsMonth: Number of visits to the company's website in the last month

