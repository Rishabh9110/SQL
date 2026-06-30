--CHAPTER-5 DATA FILTERING AND TYPES OF OPERATORS

--comparison operators
--Task 1- retrieve all customers from germany
SELECT * FROM customers WHERE country='GERMANY';
-- TASK 2-retrieve two customers who are not from germany
SELECT * FROM customers WHERE country!='germany';
                 --OR
SELECT * FROM customers WHERE country <> 'germany'  ;
--Task 3-retrieve all customers with a score greater than 500
SELECT * FROM customers WHERE SCORE >500;
--Task 4-retrieve all customers with a score of 500 or more
SELECT * FROM customers WHERE score >=500;
--Task 5- retrieve all customers with a score less than 500
SELECT * FROM customers WHERE SCORE <500;
--Task 6- retrieve all customers with a score less than or equal to 500
SELECT * FROM customers WHERE SCORE <=500;

--LOGICAL OPERATORS

--TASK 1 -retrieve all customers who are from usa and have a score > 500
SELECT * FROM customers WHERE country='usa' AND score>500;
--Task 2-retrieve all customers who are either from usa or have a score greater than 500;
SELECT * FROM customers WHERE score >500 OR country='usa';
--Task 3- retrieve all customers with a score not less than 500
SELECT * FROM customers WHERE NOT score < 500

--RANGE OPERATOR BETWEEN

--TASK 1- retrieve all customers who score falls between range 100 and 500
SELECT * FROM customers WHERE score BETWEEN 100 AND 500;
   
--MEMBERSHIP OPERATOR IN AND NOT IN

--Task 1-retrieve all customers from either germany or usa
SELECT * FROM customers WHERE country IN ('USA','GERMANY');
 

--SEARCH OPERATOR LIKE
--Task 1- find all customers whose first name starts with capital M
SELECT * FROM customers WHERE first_name LIKE 'M%';


