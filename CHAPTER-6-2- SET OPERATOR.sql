--CHAPTER-6-2- SET OPERATOR

--TASK-1-COMBINE THE DATA FROM TABLE CUSTOMERS AND EMPLOYEES INTO ONE TABLE AND REMOVE DUPLICATES
SELECT firstname,lastname FROM sales.customers
UNION
SELECT firstname,lastname FROM sales.employees
--TASK-2-COMBINE THE DATA FROM TABLE CUSTOMERS AND EMPLOYEES INTO ONE TABLE AND INCLUDE  DUPLICATES
SELECT firstname,lastname FROM sales.customers
UNION ALL
SELECT firstname,lastname FROM sales.employees
--TASK-3-FIND EMPLOYEES WHO ARE NOT CUSTOMER AT THE SAME TIME
SELECT firstname,lastname FROM sales.employees
EXCEPT
SELECT firstname,lastname FROM sales.customers
--TASK-4-find employees who are also customers
SELECT firstname,lastname FROM sales.employees
INTERSECT
SELECT firstname,lastname FROM sales.customers