
SELECT 
    * 
FROM   
    employees
WHERE 
    department = 37 OR department = 77;

/*
+-----------+--------+-----------+------------+
| SSN       | Name   | LastName  | Department |
+-----------+--------+-----------+------------+
| 222364883 | Carol  | Smith     |         37 |
| 326587417 | Joe    | Stevens   |         37 |
| 332569843 | George | O'Donnell |         77 |
| 631231482 | David  | Smith     |         77 |
+-----------+--------+-----------+------------+
*/