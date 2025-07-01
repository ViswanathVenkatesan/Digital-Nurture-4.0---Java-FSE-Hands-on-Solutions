CREATE TABLE IF NOT EXISTS accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    balance DECIMAL(10,2)
);


CREATE PROCEDURE TransferFunds(
    IN from_account INT,
    IN to_account INT,
    IN amount DECIMAL(10,2)
)
BEGIN
    DECLARE from_balance DECIMAL(10,2);

    -- Get the current balance of the source account
    SELECT balance INTO from_balance
    FROM accounts
    WHERE account_id = from_account;

    -- Check if the balance is sufficient
    IF from_balance >= amount THEN
        -- Deduct from source
        UPDATE accounts
        SET balance = balance - amount
        WHERE account_id = from_account;

        -- Add to destination
        UPDATE accounts
        SET balance = balance + amount
        WHERE account_id = to_account;
    ELSE
        -- Insufficient balance
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient balance for transfer';
    END IF;
END

CALL TransferFunds(101, 102, 2000);

SELECT * FROM accounts;
