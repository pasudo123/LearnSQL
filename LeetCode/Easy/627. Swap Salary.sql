-- 627
/*
Given a table salary, 
such as the one below, 
that has m=male and f=female values. Swap all f and m values 
(i.e., change all f values to m and vice versa) with a single update query and no intermediate temp table.
*/

create table salary(id int, name varchar(100), sex char(1), salary int);

Truncate table salary;

insert into salary (id, name, sex, salary) values (1, 'A', 'm', 2500);
insert into salary (id, name, sex, salary) values (2, 'B', 'f', 1500);
insert into salary (id, name, sex, salary) values (3, 'C', 'm', 5500);
insert into salary (id, name, sex, salary) values (4, 'D', 'f', 500);

UPDATE salary SET sex='m' WHERE sex='f';

-- [ Solution ]
UPDATE 
    salary
SET sex =
    CASE 
        WHEN sex = 'm' THEN 'f'
        WHEN sex = 'f' THEN 'm'
    END;