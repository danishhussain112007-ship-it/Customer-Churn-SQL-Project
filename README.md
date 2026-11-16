# Customer Churn Analysis Using SQL

## Project Overview

This project uses SQL and PostgreSQL to explore customer churn data,
clean the dataset, analyze customer behavior, and prepare a final
dataset for future machine-learning work.

Customer churn refers to customers stopping their use of a company's
services. Understanding patterns in churn can help identify customer
groups that may need better support or retention efforts.

## Project Objectives

-   Explore the customer churn dataset and understand its structure.
-   Check data quality, including missing values, duplicates, and
    inconsistent text values.
-   Analyze churn across customer and service categories.
-   Create useful customer segments and calculated features.
-   Export a final dataset for further analysis or machine-learning
    preparation.

## Tools Used

-   **PostgreSQL** -- SQL database and query execution.
-   **pgAdmin 4** -- Database management and SQL query editor.
-   **CSV** -- Dataset import and final dataset export.

## Dataset Description

The project uses a customer churn dataset stored in a PostgreSQL table
named `customer_churn`.

The dataset includes customer and service information such as:

-   Gender and senior-citizen status
-   Partner and dependents status
-   Tenure
-   Phone and internet service details
-   Contract and payment method
-   Monthly charges and total charges
-   Churn status

## Work Completed

### Phase 1 -- Basic Data Exploration

-   Inspected the dataset structure and columns.
-   Reviewed records and checked basic dataset information.

### Phase 2 -- Data Cleaning

-   Checked columns for missing values.
-   Checked for duplicate records.
-   Reviewed and standardized text values using SQL string functions
    such as `TRIM()`, `LOWER()`, and `INITCAP()`.

### Phase 3 -- Data Analysis

-   Compared churn counts across customer groups, including gender,
    senior-citizen status, contract type, internet service, payment
    method, partner status, and dependents status.
-   Compared average tenure, monthly charges, and total charges for
    customers who churned and those who stayed.

### Phase 4 -- ML Feature Preparation

Created calculated customer categories using `CASE WHEN`, including: -
Tenure groups - Monthly charges groups - Total charges groups - Internet
service groups - Customer categories based on tenure and churn -
Customer loyalty categories

### Phase 5 -- Final Dataset Export

-   Created a final table named `customer_churn_final`.
-   Checked the final record count and column information.
-   Exported the final table to `customer_churn_final.csv`.

## SQL Concepts Used

-   `SELECT`, `WHERE`, `ORDER BY`, and `DISTINCT`
-   Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and
    `MAX()`
-   `GROUP BY` and `HAVING`
-   Conditional aggregation with `FILTER`
-   String functions: `TRIM()`, `LOWER()`, and `INITCAP()`
-   `CAST()` for data type conversion
-   `CASE WHEN` for feature creation
-   `information_schema.columns` for table metadata
-   `CREATE TABLE AS SELECT` for creating the final table

## Final Output

The cleaned and prepared dataset was exported as:

`customer_churn_final.csv`

The final PostgreSQL table is:

`customer_churn_final`

## Future Scope

-   Build visualizations to communicate churn patterns.
-   Use the prepared dataset for machine-learning experiments.
-   Train and evaluate classification models to predict customer churn.

## Author

Danish Hussain Shaikh
