SELECT customer_id, name, dob, TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age
FROM customers;

CALL ApplySeniorDiscount();

SELECT * FROM loans;

DROP PROCEDURE IF EXISTS ApplySeniorDiscount;

DROP PROCEDURE IF EXISTS ApplySeniorDiscount;

CREATE PROCEDURE ApplySeniorDiscount()
BEGIN
    DECLARE cust_id INT;
    DECLARE cust_dob DATE;
    DECLARE done INT DEFAULT FALSE;

    DECLARE cust_cursor CURSOR FOR
        SELECT CUSTOMER_ID, DOB FROM CUSTOMERS;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cust_cursor;

    read_loop: LOOP
        FETCH cust_cursor INTO cust_id, cust_dob;
        IF done THEN
            LEAVE read_loop;
        END IF;

        IF TIMESTAMPDIFF(YEAR, cust_dob, CURDATE()) > 60 THEN
            UPDATE LOANS
            SET INTEREST_RATE = INTEREST_RATE - 1.00
            WHERE CUSTOMER_ID = cust_id;
        END IF;
    END LOOP;

    CLOSE cust_cursor;
END;


CALL ApplySeniorDiscount();

SELECT * FROM LOANS;
