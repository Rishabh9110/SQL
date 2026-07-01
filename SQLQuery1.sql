--CHAPTER 6-2 SET OPERATOR
SELECT firstname,lastname FROM
sales.customers
UNION
SELECT firstname,lastname FROM 
sales.employees

--Task-1-combine the data from customers and employees into one table
SELECT firstname,lastname FROM sales.customers 
UNION 
SELECT firstname,lastname FROM sales.employees