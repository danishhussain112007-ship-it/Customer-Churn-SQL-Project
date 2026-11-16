CREATE TABLE customer_churn
(
"customerID" varchar(50) PRIMARY KEY,
"gender" char(50) NOT NULL,
"SeniorCitizen" numeric,
"Partner" char (50),
"Dependents"char(50) NOT NULL,
"tenure"int8 NOT NULL,
"PhoneService"char(50) NOT NULL,
"MultipleLines" varchar(50) NOT NULL,
"InternetService"char(50) NOT NULL,
"OnlineSecurity" char(50) NOT NULL,
"OnlineBackup" char(50) NOT NULL,
"DeviceProtection" VARCHAR(50),
"TechSupport" VARCHAR(50),
"StreamingTV" VARCHAR(5),
"StreamingMovies" VARCHAR(5),
"Contract" VARCHAR(20),
"PaperlessBilling" VARCHAR(5),
"PaymentMethod" VARCHAR(50),
"MonthlyCharges"DECIMAL(10,2),
"TotalCharges" VARCHAR(20),
"Churn" VARCHAR(5)
);

SELECT * FROM customer_churn

SELECT COUNT(customerID) FROM customer_churn

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_name = 'customer_churn'
AND table_schema = 'public';

SELECT COUNT("Churn") FROM customer_churn
WHERE "Churn"='Yes'

SELECT COUNT("Churn")FROM customer_churn
WHERE "Churn"='No'

SELECT 
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') * 100.0
    / COUNT(*) AS churn_percentage
FROM customer_churn;

SELECT 
     COUNT(*) FILTER(WHERE "OnlineSecurity"='NO') * 100.0
	 /COUNT(*) AS onlinesecurity_perecentage
FROM customer_churn;

SELECT COUNT("gender") FROM customer_churn
WHERE "gender"='Female'

SELECT COUNT("gender") FROM customer_churn
WHERE "gender"='Male'

SELECT COUNT("gender")
FROM customer_churn
WHERE "gender"='Female'
GROUP BY ("gender")

SELECT COUNT("gender")
FROM customer_churn
WHERE "gender"='Male'
GROUP BY ("gender")

SELECT "gender", COUNT(*) AS total_customers
FROM customer_churn
GROUP BY "gender";

SELECT "SeniorCitizen",COUNT(*)AS total_seniorcitizen
FROM customer_churn
GROUP BY "SeniorCitizen"

SELECT ("Contract"),COUNT(*) AS total_contract
FROM customer_churn
GROUP BY "Contract"

SELECT ("InternetService"),COUNT(*) AS total_internetservice
FROM customer_churn
GROUP BY "InternetService"

SELECT ("PaymentMethod"),COUNT(*) AS total_paymentmethod
FROM customer_churn
GROUP BY "PaymentMethod"

SELECT ("tenure"),COUNT(*) AS total_tenure
FROM customer_churn
GROUP BY "tenure"

SELECT MAX("tenure") FROM customer_churn AS maxx

SELECT
       MAX("tenure") AS "max",
       MIN("tenure") AS "min",
       AVG("tenure") AS "avg"
FROM customer_churn;

SELECT
      MAX("MonthlyCharges")AS "MAX-Monthly Charges",
	  MIN("MonthlyCharges")AS "MIN-Monthly Charges",
	  AVG("MonthlyCharges")AS "AVG-Monthly Charges"
FROM customer_churn;

SELECT
    MAX(CAST("TotalCharges" AS NUMERIC)) AS "MAX_TotalCharges",
    MIN(CAST("TotalCharges" AS NUMERIC)) AS "MIN_TotalCharges",
    AVG(CAST("TotalCharges" AS NUMERIC)) AS "AVG_TotalCharges"
FROM customer_churn;


SELECT "Contract",COUNT(*)AS contract_type
FROM customer_churn
WHERE "Churn"='Yes'
GROUP BY "Contract"

SELECT "PaymentMethod",COUNT(*)AS internet_service
FROM customer_churn
WHERE "Churn"='Yes'
GROUP BY "PaymentMethod"

SELECT
    "PaymentMethod",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No",
    COUNT(*) AS "Total_Customers"
FROM customer_churn
GROUP BY "PaymentMethod";

SELECT COUNT(*)ISNULL FROM customer_churn

SELECT COUNT(*) FROM customer_churn
WHERE "customerID" IS NULL;

SELECT COUNT(*)
FROM customer_churn
WHERE "customerID" IS NULL;

SELECT COUNT(*) FROM customer_churn
WHERE "gender" IS NULL;

SELECT COUNT(*) FROM customer_churn
WHERE "tenure" IS NULL;

SELECT COUNT(*) FROM customer_churn
WHERE "MonthlyCharges" IS NULL;

---Check Missing Values in TotalCharges---
SELECT COUNT(*) FROM customer_churn
WHERE "TotalCharges" IS NULL;

SELECT COUNT(*) FROM customer_churn
WHERE "Contract" IS NULL;

---Check Missing Values in PaymentMethod---
SELECT COUNT(*) FROM customer_churn
WHERE "PaymentMethod" IS NULL;

---Check Missing Values in InternetService---
SELECT COUNT(*) FROM customer_churn
WHERE "InternetService" IS NULL;

SELECT COUNT(*) FROM customer_churn
WHERE "Churn" IS NULL;

SELECT "customerID" ,COUNT(*) FROM customer_churn
GROUP BY "customerID"
HAVING COUNT(*)>1;

---Check Blank Values in TotalCharges---
SELECT COUNT(*)
FROM customer_churn
WHERE TRIM("TotalCharges") = '';

SELECT COUNT(*) FROM customer_churn
WHERE TRIM("gender")='';

---Check Blank Values in Contract---
SELECT COUNT(*) FROM customer_churn
WHERE TRIM("Contract")='';

---Check Blank Values in PaymentMethod---
SELECT COUNT(*) FROM customer_churn
WHERE TRIM("PaymentMethod")='';

---Check Blank Values in InternetService---
SELECT COUNT(*) FROM customer_churn
WHERE TRIM("InternetService")='';

---Check Blank Values in InternetService---
SELECT COUNT(*) FROM customer_churn
WHERE TRIM("InternetService")='';

SELECT
    "customerID", "gender", "SeniorCitizen", "Partner",
    "Dependents", "tenure", "PhoneService", "MultipleLines",
    "InternetService", "OnlineSecurity", "OnlineBackup",
    "DeviceProtection", "TechSupport", "StreamingTV",
    "StreamingMovies", "Contract", "PaperlessBilling",
    "PaymentMethod", "MonthlyCharges", "TotalCharges", "Churn",
    COUNT(*) AS duplicate_count
FROM customer_churn
GROUP BY
    "customerID", "gender", "SeniorCitizen", "Partner",
    "Dependents", "tenure", "PhoneService", "MultipleLines",
    "InternetService", "OnlineSecurity", "OnlineBackup",
    "DeviceProtection", "TechSupport", "StreamingTV",
    "StreamingMovies", "Contract", "PaperlessBilling",
    "PaymentMethod", "MonthlyCharges", "TotalCharges", "Churn"
HAVING COUNT(*) > 1;


SELECT DISTINCT("Contract")FROM customer_churn

---Check Unique Values in PaymentMethod----
SELECT DISTINCT("PaymentMethod")FROM customer_churn

SELECT DISTINCT("InternetService")FROM customer_churn

---Check Unique Values in MultipleLines---
SELECT DISTINCT("MultipleLines")FROM customer_churn

---Check Unique Values in PaymentMethod and Contract---
SELECT DISTINCT("PaymentMethod","Contract")FROM customer_churn

SELECT "gender" FROM customer_churn
WHERE TRIM("gender")='';

SELECT TRIM("gender") AS "gender"
FROM customer_churn;

SELECT TRIM("Contract") AS "Contract"
FROM customer_churn

SELECT TRIM("PaymentMethod") AS "PaymentMethod"
FROM customer_churn

SELECT TRIM("InternetService") AS "InternetService"
FROM customer_churn

SELECT LOWER("gender") AS "gender"
FROM customer_churn

SELECT LOWER("Contract") AS "Contract"
FROM customer_churn

SELECT LOWER("InternetService") AS "InternetService"
FROM customer_churn

SELECT LOWER("PaymentMethod") AS "PaymentMethod"
FROM customer_churn

SELECT LOWER("InternetService") AS "InternetService"
FROM customer_churn

SELECT "gender" FROM customer_churn

SELECT "gender" FROM customer_churn

---Standardize gender Values to Proper Case.---
SELECT INITCAP("gender") AS "gender"
FROM customer_churn

---Standardize Contract Values to Proper Case---
SELECT INITCAP("Contract") AS "contract"
FROM customer_churn

---Standardize PaymentMethod Values to Proper Case---
SELECT INITCAP("PaymentMethod") AS "PaymentMethod"
FROM customer_churn

---Standardize InternetService Values to Proper Case---
SELECT INITCAP("InternetService") AS "InternetService"
FROM customer_churn

---Verify Cleaned Dataset---
SELECT COUNT(*) FROM customer_churn

---Analyze Churn by Gender---
SELECT
    "gender",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "gender";


---Analyze Churn by Senior Citizen Status---
SELECT
    "SeniorCitizen",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "SeniorCitizen";

---Analyze Churn by Contract Type---
SELECT
    "Contract",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "Contract";

---Analyze Churn by Internet Service---
SELECT
    "InternetService",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "InternetService";

---Analyze Churn by Payment Method---
SELECT
    "PaymentMethod",
    COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "PaymentMethod";

---Analyze Churn by Tenure---
SELECT
    "Churn",
    AVG("tenure") AS "Average_Tenure"
FROM customer_churn
GROUP BY "Churn";

---Analyze Churn by Monthly Charges---
SELECT
    "Churn",
    AVG("MonthlyCharges") AS "monthly charges"
FROM customer_churn
GROUP BY "Churn";

---Analyze Churn by Total Charges---
SELECT
    "Churn",
    AVG(CAST("TotalCharges" AS NUMERIC)) AS "AVG_TotalCharges"
FROM customer_churn
GROUP BY "Churn";

---Analyze Churn by Partner Status---
SELECT
      "Partner",
	   COUNT(*) FILTER (WHERE "Churn" = 'Yes') AS "Churn_Yes",
    COUNT(*) FILTER (WHERE "Churn" = 'No') AS "Churn_No"
FROM customer_churn
GROUP BY "Partner";

---Analyze Churn by Dependents Status---
SELECT
     "Dependents",
	 COUNT(*) FILTER(WHERE "Churn"='Yes')AS "churn_yes",
	 COUNT(*) FILTER(WHERE "Churn"='No')AS "churn_No"
FROM customer_churn
GROUP BY "Dependents"

---Create a Tenure Group Feature---
SELECT
    "tenure",
    CASE
        WHEN "tenure" <= 12 THEN 'New customers'
        WHEN "tenure" <= 48 THEN 'Medium-term customers'
        ELSE 'Long-term customers'
    END AS "Tenure_Group"
FROM customer_churn;


---Create a Monthly Charges Group Feature---
SELECT
      "MonthlyCharges",
	  CASE
	      WHEN "MonthlyCharges"<=35 THEN ' Low Charges'
	      WHEN "MonthlyCharges"<=70 THEN 'Medium Charges'
	      ELSE 'High Charges'
	  END AS "CHARGES group"
FROM customer_churn


---Create a Total Charges Group Feature---
SELECT 
      "TotalCharges",
	  CASE
	      WHEN CAST("TotalCharges" AS NUMERIC)<=1000 THEN 'LOW CHARGES'
		  WHEN CAST("TotalCharges" AS NUMERIC)<=3000 THEN 'MEDIUM CHARGES'
		  ELSE 'HIGH CHARGES'
	 END AS "TOTALCHARGES_GROUP"
FROM customer_churn


---Customer Service Group Feature---
SELECT
      "InternetService",
	  CASE
	      WHEN "InternetService"='No' THEN 'no network'
	      WHEN "InternetService"='DSL' THEN 'DSL users'
	      ELSE 'Fiber Optic users'
	  END AS "Customer service group"
FROM customer_churn

---Customer Tenure Category Using Churn---
SELECT
      "tenure","Churn",
	  CASE
	      WHEN "tenure"<=12 AND "Churn"='Yes'THEN 'new customer'
		  WHEN "tenure">48 AND "Churn"='No'THEN 'loyal customer'
		  ELSE 'Other customers'
	 END AS "Customer_Category"
FROM customer_churn

---Monthly Charges Category Using Churn---
SELECT
      "MonthlyCharges","Churn",
	  CASE
	      WHEN "MonthlyCharges">70 AND "Churn"='Yes'THEN 'High risk'
		  WHEN "MonthlyCharges"<=70 AND "Churn"='No'THEN 'Low risk'
		  ELSE 'Other'
	 END AS "Churn_Charges_Category"
FROM customer_churn

---Customer Loyalty Category---
SELECT
    "tenure",
    CASE
        WHEN "tenure" <= 12 THEN 'New'
        WHEN "tenure" <= 48 THEN 'Regular'
        ELSE 'Loyal'
    END AS "Customer loyalty"
FROM customer_churn;


---Final Dataset Table---
CREATE TABLE customer_churn_final AS
SELECT *
FROM customer_churn;

---Verify Final Dataset---
SELECT COUNT(*) FROM customer_churn_final


---Final Dataset Columns---
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'customer_churn_final'
AND table_schema = 'public'
ORDER BY ordinal_position;

---Duplicate Records in Final Dataset---
SELECT *,
       COUNT(*)
FROM customer_churn_final
GROUP BY *
HAVING COUNT(*) > 1;



