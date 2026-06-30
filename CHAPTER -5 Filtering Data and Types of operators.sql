--CHAPTER-5 DATA FILTERING AND TYPES OF OPERATORS

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
--Task 6- retrieve all customers with a score than or equal to 500

