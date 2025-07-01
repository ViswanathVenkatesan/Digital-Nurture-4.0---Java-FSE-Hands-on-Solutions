CREATE TABLE savings_accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    balance DECIMAL(10, 2)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    balance DECIMAL(10, 2)
);

INSERT INTO savings_accounts VALUES (1, 'Alice', 5000.00), (2, 'Bob', 10000.00);
INSERT INTO employees VALUES (1, 'John', 'HR', 50000), (2, 'Jane', 'IT', 60000);
INSERT INTO accounts VALUES (101, 'Alice', 8000.00), (102, 'Bob', 5000.00);

