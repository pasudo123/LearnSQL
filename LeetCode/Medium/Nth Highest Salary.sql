-- 177
CREATE TABLE Employee (Id int, Salary int);

INSERT INTO Employee (Id, Salary) VALUES (1, 100);
INSERT INTO Employee (Id, Salary) VALUES (2, 200);
INSERT INTO Employee (Id, Salary) VALUES (3, 300);

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N-1;
    RETURN
    (
        SELECT 
            DISTINCT Salary
        FROM 
            Employee
        ORDER BY
            Salary DESC
        LIMIT M, 1;
    )
END;