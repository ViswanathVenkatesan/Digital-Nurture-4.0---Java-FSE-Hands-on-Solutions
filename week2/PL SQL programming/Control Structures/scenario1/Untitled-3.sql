SELECT * FROM customers;
SELECT * FROM loans;

DROP PROCEDURE IF EXISTS ApplySeniorDiscount;

CREATE PROCEDURE ApplySeniorDiscount()
BEGIN
    -- Loop through all customers
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

        -- Check if age > 60
        IF TIMESTAMPDIFF(YEAR, dob, CURDATE()) > 60 THEN
            -- Apply 1% discount
            UPDATE loans
            SET interest_rate = interest_rate - 1.00
            WHERE customer_id = cid;
        END IF;
    END LOOP;
    CLOSE cur;
END;

CALL ApplySeniorDiscount();

SELECT * FROM loans;

SELECT customer_id, TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age FROM customers;

