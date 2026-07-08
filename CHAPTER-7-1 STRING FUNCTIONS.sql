--CHAPTER-7-1 STRING FUNCTIONS

--TASK1-1-CONCATINATE FIRST NAME AND COUNTRY INTO ONE COLUMN
SELECT CONCAT(first_name,country) AS NAME_COUNTRY FROM customers; 
--Task-2-convert firstname to upper case
SELECT UPPER(first_name) AS NAME_IN_CAPITAL FROM customers;
--Task-3-find customer whose first name contains leading and trailing spaces
SELECT first_name FROM Customers WHERE first_name!=TRIM(first_name);
--Task-4-Remove dashes from a static value 
SELECT '123-456-789' AS PHONE_NUMBER,REPLACE('123-456-789','-','/') AS new_phone_number;
--task-5-Calculate the length of each customer first name
SELECT first_name,LEN(first_name) AS NAME_LENGTH FROM customers; 
--task-6-retrieve the first two characters of each first name
SELECT  first_name,LEFT(first_name,2) AS FIRST_NAME_2_CHAR FROM customers;

