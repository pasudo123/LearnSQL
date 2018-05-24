SELECT 
    e.Name, e.LastName
FROM 
    employees e, departments d
WHERE
    e.department = d.code
AND
    d.budget > 60000;

-- IN
SELECT
    Name, LastName
FROM
    employees
WHERE
    department 
IN
    (SELECT code FROM departments WHERE budget > 60000);

/*
+-----------+-----------+
| Name      | LastName  |
+-----------+-----------+
| Michael   | Rogers    |
| Anand     | Manikutty |
| Mary-Anne | Foster    |
| Elizabeth | Doe       |
| Kumar     | Swamy     |
| John      | Doe       |
| Zacary    | Efron     |
| Eric      | Goldsmith |
+-----------+-----------+
*/