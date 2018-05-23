SELECT 
    department, count(*)
FROM 
    employees
GROUP BY
    department;

/*
+------------+----------+
| department | count(*) |
+------------+----------+
|         14 |        5 |
|         37 |        2 |
|         59 |        3 |
|         77 |        2 |
+------------+----------+
*/