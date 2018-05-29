-- 183
/*
Suppose that a website contains two tables, 
the Customers table and the Orders table. 
Write a SQL query to find all customers who never order anything.
*/
Truncate table Customers;
Truncate table Orders;

Create table Customers (Id int, Name varchar(255));
Create table Orders (Id int, CustomerId int);

insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');

insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');

SELECT
    Name AS Customers
FROM 
    Customers
WHERE 
    Id
NOT IN
    (
        SELECT 
            CustomerId
        FROM
            Orders
    );