--this is a single line comment
/*this is a multiline comment*/
select * from customers; --this will retrieve all the customers data
select * from orders;    -- this will retrieve all the orders data

--TASK 1- RETRIEVE EACH CUSTOMER  NAME ,COUNTRY,SCORE
SELECT first_name,country,score
FROM customers;
--TASK 2 - RETRIEVE CUTSOMERS WITH A SCORE !=0
SELECT * FROM customers WHERE score!=0;
--Task 3 - retrieve customers from Germany
SELECT  * FROM customers WHERE  country='Germany';
--Task 4 -  RETRIEVE ALL THE CUSTOMERS AND sort the result by highest score first 
SELECT * FROM customers ORDER BY score DESC;