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
SELECT * FROM customers full join orders on id=customer_id WHERE id is null OR customer_id is null;
--CHALLENGE-get all customers along with their orders but only for customer who have placed an order 
SELECT c.id,c.first_name,o.order_id,o.order_date,o.sales,O.customer_id
FROM Customers AS C LEFT JOIN orders AS O ON c.id=o.customer_id WHERE  customer_id is not null 
--task-7-generate all possible combination of customers and orders
SELECT * FROM customers CROSS JOIN orders
/*task-8-using sales db retrieve a list of all orders,along with the related customer,product and employee details
for each order display:
order_id
customer name
product name 
sales
 price
sales person name*/
select o.orderid,o.sales,c.firstname from sales.orders AS O left join sales.customers AS C ON O.CUSTOMERID=C.CUSTOMERID 
SELECT * FROM sales.employees
SELECT * FROM sales.orders
SELECT * FROM sales.ordersarchive
SELECT * FROM sales.products


