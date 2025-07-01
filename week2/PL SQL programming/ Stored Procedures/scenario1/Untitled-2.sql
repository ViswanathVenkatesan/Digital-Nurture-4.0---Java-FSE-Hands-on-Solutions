
CREATE PROCEDURE ProcessMonthlyInterest()
BEGIN
    UPDATE savings_accounts
    SET balance = balance + (balance * 0.01);
END 

CALL ProcessMonthlyInterest();

SELECT * FROM savings_accounts;

SHOW TABLES;

SELECT * FROM savings_accounts;
SELECT * FROM employees;
SELECT * FROM accounts;


