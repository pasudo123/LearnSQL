
-- Use distinct
SELECT distinct LastName FROM employees;

-- Use Group BY
SELECT LastName FROM employees GROUP BY LastName;

/*
+-----------+
| LastName  |
+-----------+
| Rogers    |
| Manikutty |
| Smith     |
| Stevens   |
| Foster    |
| O'Donnell |
| Doe       |
| Efron     |
| Goldsmith |
| Swamy     |
+-----------+
*/