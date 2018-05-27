
DELETE FROM employees WHERE department IN
    (SELECT code FROM departments WHERE budget >= 60000);