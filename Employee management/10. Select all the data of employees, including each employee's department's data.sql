
SELECT 
    employees.*, departments.Name, departments.Budget
FROM 
    employees
INNER JOIN 
    departments
ON 
    employees.department = departments.code;

/*
+-----------+-----------+-----------+------------+-----------------+--------+
| SSN       | Name      | LastName  | Department | Name            | Budget |
+-----------+-----------+-----------+------------+-----------------+--------+
| 123234877 | Michael   | Rogers    |         14 | IT              |  65000 |
| 152934485 | Anand     | Manikutty |         14 | IT              |  65000 |
| 332154719 | Mary-Anne | Foster    |         14 | IT              |  65000 |
| 845657245 | Elizabeth | Doe       |         14 | IT              |  65000 |
| 845657246 | Kumar     | Swamy     |         14 | IT              |  65000 |
| 222364883 | Carol     | Smith     |         37 | Accounting      |  15000 |
| 326587417 | Joe       | Stevens   |         37 | Accounting      |  15000 |
| 546523478 | John      | Doe       |         59 | Human Resources | 240000 |
| 654873219 | Zacary    | Efron     |         59 | Human Resources | 240000 |
| 745685214 | Eric      | Goldsmith |         59 | Human Resources | 240000 |
| 332569843 | George    | O'Donnell |         77 | Research        |  55000 |
| 631231482 | David     | Smith     |         77 | Research        |  55000 |
+-----------+-----------+-----------+------------+-----------------+--------+
*/