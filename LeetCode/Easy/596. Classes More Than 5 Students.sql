-- 596
/*
There is a table courses with columns: student and class
Please list out all classes which have more than or equal to 5 students.
*/

Create table courses (student varchar(255), class varchar(255));

Truncate table courses

insert into courses (student, class) values ('A', 'Math');
insert into courses (student, class) values ('B', 'English');
insert into courses (student, class) values ('C', 'Math');
insert into courses (student, class) values ('D', 'Biology');
insert into courses (student, class) values ('E', 'Math');
insert into courses (student, class) values ('F', 'Computer');
insert into courses (student, class) values ('G', 'Math');
insert into courses (student, class) values ('H', 'Math');
insert into courses (student, class) values ('I', 'Math');

-- [ Solution ]
SELECT 
    class
FROM
    courses
GROUP BY 
    class
HAVING 
    COUNT(DISTINCT(student)) >= 5;

-- [ Solution2 ]
SELECT 
    class
FROM
    (
        SELECT
            class, COUNT(DISTINCT student) AS num
        FROM
            courses
        GROUP BY 
            class
    ) AS temp_table
WHERE
    num >= 5;