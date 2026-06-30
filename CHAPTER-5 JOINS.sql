-- CHAPTER 6-1 JOINS

--task 1-retrieve all data from customers and orders in  two different results
SELECT * FROM customers;
SELECT * FROM orders;

--INNER JOIN RETURNS ONLY THE MATCHING ROWS FROM BOTH THE TABLE
--Task 1- get all customers along with their order  but only for customer who have placed an order
SELECT C.id,o.order_id,o.order_date FROM customers AS C INNER JOIN ORDERS AS O ON c.ID=o.CUSTOMER_ID ;
--task-2-get all customers along with thier order including those without order
SELECT c.first_name,o.order_id,o.order_date FROM customers AS c left join orders AS o
ON C.ID=O.CUSTOMER_ID
--TASK-3 Get all customers along with their orders, including orders without matching customers
SELECT c.first_name,o.order_id,o.order_date,o.sales FROM customers AS c right join orders AS o
ON C.ID=O.CUSTOMER_ID
--task-4-get all customers and all orders even if there is no match
SELECT c.first_name,o.order_id,o.order_date FROM customers AS c full join orders AS o
ON C.ID=O.CUSTOMER_ID
--task-5-get all customers who have not placed any order
SELECT * FROM customers LEFT JOIN orders ON id=customer_id WHERE customer_id is NULL;
--Task6--get all orders without matching customers
SELECT * FROM CUSTOMERS RIGHT JOIN ORDERS ON id=customer_id WHERE id is null;
--task-6-find customers without order and orders without customer
SELECT * FROM customers join orders on id=customer_id WHERE id is null and customer_id is null;



