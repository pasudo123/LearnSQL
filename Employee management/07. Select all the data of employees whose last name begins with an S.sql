SELECT 
    *
FROM
    employees
WHERE  
    LastName LIKE 'S%';

/*
+-----------+-------+----------+------------+
| SSN       | Name  | LastName | Department |
+-----------+-------+----------+------------+
| 222364883 | Carol | Smith    |         37 |
| 326587417 | Joe   | Stevens  |         37 |
| 631231482 | David | Smith    |         77 |
| 845657246 | Kumar | Swamy    |         14 |
+-----------+-------+----------+------------+
*/