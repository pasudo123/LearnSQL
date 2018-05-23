
-- OR
SELECT 
    *
FROM 
    employees
WHERE 
    LastName = 'Smith' OR LastName = 'Doe';

-- IN 
SELECT 
    *
FROM   
    employees
WHERE
    LastName IN ('Smith', 'Doe');

/*
+-----------+-----------+----------+------------+
| SSN       | Name      | LastName | Department |
+-----------+-----------+----------+------------+
| 222364883 | Carol     | Smith    |         37 |
| 546523478 | John      | Doe      |         59 |
| 631231482 | David     | Smith    |         77 |
| 845657245 | Elizabeth | Doe      |         14 |
+-----------+-----------+----------+------------+
*/