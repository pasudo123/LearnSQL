SELECT 
    e.Name, e.LastName, d.name, d.budget
FROM 
    employees e, departments d
WHERE
    e.department = d.code;

-- INNER JOIN
SELECT 
    e.Name, e.LastName, departments.name, departments.budget
FROM 
    employees e
INNER JOIN
    departments
ON
    e.department = departments.code;

/*
+-----------+-----------+-----------------+--------+
| Name      | LastName  | name            | budget |
+-----------+-----------+-----------------+--------+
| Michael   | Rogers    | IT              |  65000 |
| Anand     | Manikutty | IT              |  65000 |
| Mary-Anne | Foster    | IT              |  65000 |
| Elizabeth | Doe       | IT              |  65000 |
| Kumar     | Swamy     | IT              |  65000 |
| Carol     | Smith     | Accounting      |  15000 |
| Joe       | Stevens   | Accounting      |  15000 |
| John      | Doe       | Human Resources | 240000 |
| Zacary    | Efron     | Human Resources | 240000 |
| Eric      | Goldsmith | Human Resources | 240000 |
| George    | O'Donnell | Research        |  55000 |
| David     | Smith     | Research        |  55000 |
+-----------+-----------+-----------------+--------+
*/