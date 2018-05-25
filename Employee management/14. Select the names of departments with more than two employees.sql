
SELECT
    Name 
FROM
    departments
WHERE 
    Code 
IN (SELECT department FROM employees GROUP BY department HAVING count(*) > 2);

-- INNER JOIN
SELECT 
    departments.name
FROM
    employees 
INNER JOIN
    departments
ON
    department = code
GROUP BY
    departments.name 
HAVING COUNT(*) > 2;

/*
+-----------------+
| Name            |
+-----------------+
| IT              |
| Human Resources |
+-----------------+
*/