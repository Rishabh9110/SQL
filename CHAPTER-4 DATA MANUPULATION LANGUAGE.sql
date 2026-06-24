--CHAPTER 4 - DATA MANUPULATION LANGUAGE

--METHOD 1 OF INSERTING DATA INTO TABLES
INSERT INTO customers  (id,first_name,country,score)
VALUES (6,'Anna','USA',NULL),
       (7,'Sam',NULL,100),
      (8,'USA','MAX',NULL),
       (9,'Andreas','Germany',null),
       (10,'Sahra',null,null)
--METHOD 2- INSERTING DATA INTO TABLES FROM ANOTHER TABLE CALLED SOURCE TABLE
INSERT INTO persons (id,persons_name,birth_date,phone)
SELECT id,first_name,null,'unknown' from customers

--TASK 1-CHANGE THE SCORE OF CUSTOMER 6 TO 0
UPDATE customers SET score=0 WHERE ID =6;
--TASK 2- CHANGE THE SCORE OF CUSTOMER WITH ID 10 TO 0 AND UPDATE THE COUNTRY TO UK
UPDATE customers SET score=0,country='UK' WHERE id=10






