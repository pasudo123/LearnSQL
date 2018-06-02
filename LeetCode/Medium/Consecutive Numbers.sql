-- 180
/*
Write a SQL query to find all numbers 
that appear at least three times consecutively.
*/
Create table If Not Exists Logs (Id int, Num int);

Truncate table Logs;

insert into Logs (Id, Num) values (1, 1);
insert into Logs (Id, Num) values (2, 1);
insert into Logs (Id, Num) values (3, 1);
insert into Logs (Id, Num) values (4, 2);
insert into Logs (Id, Num) values (5, 1);
insert into Logs (Id, Num) values (6, 1);
insert into Logs (Id, Num) values (7, 1);

-- [ Solution1 ]
SELECT 
    Distinct Num AS ConsecutiveNums
FROM 
    Logs log
WHERE 
    Num = 
        (
            SELECT Num FROM Logs WHERE Logs.Id = log.Id - 1
        )
    AND

    Num = 
        (
            SELECT Num FROM Logs WHERE Logs.Id = log.Id + 1
        );

-- [ Solution2 ]
SELECT 
    DISTINCT log1.Num AS ConsecutiveNums
FROM
    Logs log1,
    Logs log2,
    Logs log3
WHERE 
    log1.Id = log2.Id - 1 
    AND
    log2.Id = log3.Id - 1
    AND
    log1.Num = log2.Num AND log2.Num = log3.Num;