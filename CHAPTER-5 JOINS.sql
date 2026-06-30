-- CHAPTER 6-1 JOINS

--task 1-retrieve all data from customers and orders in  two different results
SELECT * FROM customers;
SELECT * FROM orders;

--INNER JOIN RETURNS ONLY THE MATCHING ROWS FROM BOTH THE TABLE
--Task 1- get all customers along with their order  but only for customer who have placed an order
SELECT C.id,o.order_id,o.order_date FROM customers AS C INNER JOIN ORDERS AS O ON c.ID=o.CUSTOMER_ID ;


