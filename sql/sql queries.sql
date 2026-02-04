CREATE TABLE raw_telco_data (
    customerID VARCHAR,
    gender VARCHAR,
    SeniorCitizen INT,
    Partner VARCHAR,
    Dependents VARCHAR,
    tenure INT,
    PhoneService VARCHAR,
    MultipleLines VARCHAR,
    InternetService VARCHAR,
    OnlineSecurity VARCHAR,
    OnlineBackup VARCHAR,
    DeviceProtection VARCHAR,
    TechSupport VARCHAR,
    StreamingTV VARCHAR,
    StreamingMovies VARCHAR,
    Contract VARCHAR,
    PaperlessBilling VARCHAR,
    PaymentMethod VARCHAR,
    MonthlyCharges NUMERIC,
    TotalCharges VARCHAR,
    Churn VARCHAR
);




SELECT COUNT(*) FROM raw_telco_data;


INSERT INTO customers
SELECT
    customerID,
    gender,
    SeniorCitizen,
    tenure,
    Contract,
    PaymentMethod
FROM raw_telco_data;




SELECT COUNT(*) FROM customers;

INSERT INTO services
SELECT
    customerID,
    InternetService,
    StreamingTV,
    OnlineSecurity,
    TechSupport
FROM raw_telco_data;


INSERT INTO billing
SELECT
    customerID,
    MonthlyCharges,
    CAST(NULLIF(TRIM(TotalCharges), '') AS NUMERIC)
FROM raw_telco_data;

SELECT COUNT(*) FROM billing;

SELECT COUNT(*)
FROM billing
WHERE total_charges IS NULL;


INSERT INTO status
SELECT
    customerID,
    Churn
FROM raw_telco_data;


SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM services;
SELECT COUNT(*) FROM billing;
SELECT COUNT(*) FROM status;


SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


SELECT *
FROM billing
WHERE total_charges IS NULL;





