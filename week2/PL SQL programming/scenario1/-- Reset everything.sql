-- Reset everything
DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS customers;
DROP PROCEDURE IF EXISTS ApplySeniorDiscount;

-- Recreate tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    interest_rate DECIMAL(5,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data
INSERT INTO customers VALUES 
(1, 'John Smith', '1950-04-15'),
(2, 'Mary Johnson', '1980-08-25'),
(3, 'Robert Lee', '1945-11-10');

INSERT INTO loans VALUES 
(101, 1, 7.50),
(102, 2, 6.75),
(103, 3, 8.00);

-- Create procedure
CREATE PROCEDURE ApplySeniorDiscount();
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE cid INT;
    DECLARE dob DATE;
    DECLARE cur CURSOR FOR SELECT customer_id, dob FROM customers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO cid, dob;
        IF done THEN
            LEAVE read_loop;
        END IF;

        IF TIMESTAMPDIFF(YEAR, dob, CURDATE()) > 60 THEN
            UPDATE loans 
            SET interest_rate = interest_rate - 1.00 
            WHERE customer_id = cid;
        END IF;
    END LOOP;
    CLOSE cur;
END;

-- Call it
CALL ApplySeniorDiscount();

-- View results
SELECT * FROM loans;
