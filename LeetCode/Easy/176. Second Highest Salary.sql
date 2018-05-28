-- 176

/*
the query should return 200 as the second highest salary. 
If there is no second highest salary, then the query should return null
*/

-- [ SQL Schema ]
Truncate table Employee;

Create table Employee (Id int, Salary int);

insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');

-- [ Solution ]
SELECT 
    (
        SELECT 
            DISTINCT(Salary)
        FROM 
            Employee
        ORDER BY 
            Salary DESC LIMIT 1, 1
    )
AS 'SecondHighestSalary';

-- [ Solution2 ]
SELECT 
    IFNULL
    (
        (
            SELECT 
                DISTINCT(Salary)
            FROM   
                Employee
            ORDER BY 
                Salary DESC LIMIT 1, 1
        ),
        NULL
    )
AS 'SecondHighestSalary';