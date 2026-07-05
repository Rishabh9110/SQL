--CHAPTER-7-1 STRING FUNCTIONS

--TASK1-1-CONCATINATE FIRST NAME AND COUNTRY INTO ONE COLUMN
SELECT first_name,concat(first_name,' ',country) AS NAME_COUNTRY FROM customers
--Task-2-convert firstname to upper case
SELECT upper(first_name) AS name_capital FROM customers;
