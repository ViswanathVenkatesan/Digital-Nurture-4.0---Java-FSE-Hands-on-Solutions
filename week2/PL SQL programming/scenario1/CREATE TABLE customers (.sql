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

INSERT INTO customers VALUES 
(1, 'John Smith', '1950-04-15'),
(2, 'Mary Johnson', '1980-08-25'),
(3, 'Robert Lee', '1945-11-10');

INSERT INTO loans VALUES 
(101, 1, 7.50),
(102, 2, 6.75),
(103, 3, 8.00);
