
SELECT 
    * 
FROM 
    departments 
WHERE 
    budget > (select AVG(budget) FROM departments);

/*
+------+-----------------+--------+
| Code | Name            | Budget |
+------+-----------------+--------+
|   59 | Human Resources | 240000 |
+------+-----------------+--------+
*/