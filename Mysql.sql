//select database
USE database_name

//select table and show all column
SELECT * FROM table_name

//select table and show all column with limit field
SELECT * FROM table_name
LIMIT 10

//select table and show all column with sorting field ASC or DSC
SELECT * FROM table_name
ORDER BY id ASC

//select table and show all column with condition
SELECT * FROM table_name
WHERE id=1

//select join table and show column
SELECT t1.column1, t2.column2
FROM table1 as t1
INNER JOIN table2 as t2 on t1.id=t2.t1_id

//insert table
INSERT table1 (column1,column2,column3)
VALUES ('column1_field','column2_field','column3_field')

//insert table with other databse table field
USE database_name
INSERT INTO table1(field1, field2, field3)
SELECT field1, field2, field3
FROM database2.table2
WHERE (some condition)

//update field table
UPDATE table_name 
SET column1='ss', column2='ss@mail.com', column3='dasdasdasdasds' 
WHERE id=4

//delete all column
DELETE FROM table_name

//delete column with condition
DELETE FROM table_name
WHERE id=4

//delete foreign_key
ALTER TABLE Orders
DROP FOREIGN KEY fk_PerOrders

//drop primary_key
ALTER TABLE `user_logs`
DROP PRIMARY KEY

//add primary_key
ALTER TABLE `user_logs`
ADD PRIMARY KEY(`id`);