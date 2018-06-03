-- 184
/*
(1) Every employee has an Id, a salary, and there is also a column for the department Id.
(2) The Department table holds all departments of the company.

Write a SQL query to find employees 

who have the highest salary in each of the departments. 
For the above tables, 
Max has the highest salary in the IT department 
and Henry has the highest salary in the Sales department.
*/

Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, DepartmentId int);
Create table If Not Exists Department (Id int, Name varchar(255));

Truncate table Employee;

Truncate table Department;

insert into Employee (Id, Name, Salary, DepartmentId) values (1, 'Joe', 70000, 1);
insert into Employee (Id, Name, Salary, DepartmentId) values (2, 'Henry', 80000, 2);
insert into Employee (Id, Name, Salary, DepartmentId) values (3, 'Sam', 60000, 2);
insert into Employee (Id, Name, Salary, DepartmentId) values (4, 'Max', 90000, 1);

insert into Department (Id, Name) values (1, 'IT');
insert into Department (Id, Name) values (2, 'Sales');

-- [ Solution ]
SELECT 
    d.Name AS Department,
    e.Name AS Employee,
    e.Salary AS Salary 
FROM 
    department d,
    Employee e
WHERE 
    d.Id = e.DepartmentId 
    AND
    (e.DepartmentId, Salary) IN(
        SELECT
            DepartmentId, MAX(Salary) AS Salary
        FROM 
            Employee
        GROUP BY 
            DepartmentId
    )
ORDER BY
    Salary DESC;