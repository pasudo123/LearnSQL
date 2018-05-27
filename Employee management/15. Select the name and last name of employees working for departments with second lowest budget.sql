
-- USE OFFSET
SELECT 
    Name, LastName
FROM
    employees
WHERE 
    department = (
        SELECT 
            code 
        FROM 
            departments 
        ORDER BY budget ASC LIMIT 1 OFFSET 1);

SELECT 
    Name, LastName
FROM
    employees
WHERE 
    department = (
        SELECT 
            code 
        FROM 
            departments 
        ORDER BY budget ASC LIMIT 1, 1);

/*
+--------+-----------+
| Name   | LastName  |
+--------+-----------+
| George | O'Donnell |
| David  | Smith     |
+--------+-----------+
*/