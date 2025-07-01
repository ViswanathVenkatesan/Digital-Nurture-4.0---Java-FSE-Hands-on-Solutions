

CREATE PROCEDURE SendLoanReminders()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE c_name VARCHAR(100);
  DECLARE l_due_date DATE;

  DECLARE cur CURSOR FOR
    SELECT c.name, l.due_date
    FROM LOANS l
    JOIN CUSTOMERS c ON c.customer_id = l.customer_id
    WHERE l.due_date BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN cur;

  reminder_loop: LOOP
    FETCH cur INTO c_name, l_due_date;
    IF done THEN
      LEAVE reminder_loop;
    END IF;

    SELECT CONCAT('Reminder: ', c_name, ', your loan is due on ', l_due_date) AS Message;
  END LOOP;

  CLOSE cur;
END

CALL SendLoanReminders();

SELECT CURDATE();

SELECT loan_id, customer_id, due_date FROM LOANS;

UPDATE LOANS
SET due_date = 
  CASE loan_id
    WHEN 101 THEN CURDATE() + INTERVAL 5 DAY
    WHEN 102 THEN CURDATE() + INTERVAL 15 DAY
    WHEN 103 THEN CURDATE() + INTERVAL 35 DAY
  END;

CALL SendLoanReminders();

