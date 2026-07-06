--CHAPTER-7-1 STRING FUNCTIONS

--TASK1-1-CONCATINATE FIRST NAME AND COUNTRY INTO ONE COLUMN
SELECT first_name,concat(first_name,' ',country) AS NAME_COUNTRY FROM customers
--Task-2-convert firstname to upper case
SELECT upper(first_name) AS name_capital FROM customers;
--Task-3-find customer whose first name contains leading and trailing spaces
SELECT first_name FROM customers WHERE first_name != TRIM(first_name)
--Task-4-Remove dashes from a static value 
SELECT '123-456-789' AS PHONE,REPLACE('123-456-789','-','/') AS CLEAN_PHONE