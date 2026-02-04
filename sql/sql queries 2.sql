CREATE TABLE customers (
    customer_id VARCHAR PRIMARY KEY,
    gender VARCHAR,
    senior_citizen INT,
    tenure INT,
    contract_type VARCHAR,
    payment_method VARCHAR
);


CREATE TABLE services (
    customer_id VARCHAR,
    internet_service VARCHAR,
    streaming VARCHAR,
    security VARCHAR,
    tech_support VARCHAR
);

CREATE TABLE billing (
    customer_id VARCHAR,
    monthly_charges NUMERIC,
    total_charges NUMERIC
);

CREATE TABLE status (
    customer_id VARCHAR,
    churn VARCHAR
);

