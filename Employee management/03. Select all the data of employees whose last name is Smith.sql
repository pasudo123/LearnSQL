SELECT 
    *
FROM
    employees
WHERE 
    LastName = 'Smith';

/*
+-----------+-------+----------+------------+
| SSN       | Name  | LastName | Department |
+-----------+-------+----------+------------+
| 222364883 | Carol | Smith    |         37 |
| 631231482 | David | Smith    |         77 |
+-----------+-------+----------+------------+
*/