-- 182
/*

Write a SQL query to find all duplicate emails in a table named Person.
*/

Truncate table Person;

Create table Person (Id int, Email varchar(255));

insert into Person (Id, Email) values (1, 'a@b.com');
insert into Person (Id, Email) values (2, 'c@d.com');
insert into Person (Id, Email) values (3, 'a@b.com');

-- [ Solution ]
SELECT 
    Email
FROM 
    Person 
GROUP BY 
    Email 
HAVING 
    count(Email) >= 2;
