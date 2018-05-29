-- 181
/*
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. 
For the above table, Joe is the only employee who earns more than his manager.
*/

TRUNCATE table Employee;

Create table Employee (Id int, Name varchar(255), Salary int, ManagerId int);

insert into Employee (Id, Name, Salary, ManagerId) values (1, 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values (2, 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId) values (3, 'Sam', '60000', NULL);
insert into Employee (Id, Name, Salary, ManagerId) values (4, 'Max', '90000', NULL);

-- [ Solution ]
SELECT 
    e1.Name AS Employee
FROM 
    Employee e1, Employee e2
WHERE
    e1.ManagerId = e2.Id
AND
    e1.Salary > e2.Salary;