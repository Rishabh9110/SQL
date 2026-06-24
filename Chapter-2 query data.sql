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
--Task 5 - RETRIEVE ALL THE CUSTOMERS AND SORT THE RESULT BY LOWEST SCORE FIRST
SELECT * FROM customers ORDER BY score ASC;
--Task 6 - retrieve all customers and sort the result by first country  and then by the highest score
SELECT * FROM customers ORDER BY country ASC,Score DESC;
--Task 7 - find the total score for each country;
SELECT country,SUM(score) AS SCORE_SUM FROM customers GROUP BY country;
--Task 8- find the total score and total number of customers for each country
SELECT count(id) AS Total_Customers, country,SUM(score) AS Total_Score FROM customers GROUP BY country;
--Task 9 - find the average score of each country considering customers only with a score !=0 and return country with average score >430
SELECT country,AVG(score) AS average_score FROM customers WHERE  score!=0 GROUP BY country HAVING AVG(score)>430;
--Task 10- return unique list of all the country
SELECT DISTINCT country FROM customers;
--TASK 11- RETRIEVE ONLY THREE CUSTOMERS
SELECT TOP 3 * FROM customers;
--TASK 12-RETRIEVE TOP 3 CUSTOMERS WITH THE HIGHEST SCORE
SELECT TOP 3 * FROM customers ORDER BY score DESC;
--TASK 13-- RETRIEVE THE LOWEST 2 CUSTOMERS BASED ON THE SCORE
SELECT TOP 2 * FROM customers ORDER BY score asc;
--TASK 14-GET THE TWO MOST RECENT ORDERS
SELECT TOP 2 * FROM orders ORDER BY order_date desc;