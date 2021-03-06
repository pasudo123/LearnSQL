-- 197
/*
Given a Weather table, 
write a SQL query to find all dates' Ids 
with higher temperature compared to its previous (yesterday's) dates.
*/

Truncate table Weather;

Create table Weather (Id int, RecordDate date, Temperature int);

insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30');

SELECT 
    w.Id  
FROM
    Weather w
WHERE 
    w.Temperature > (
        SELECT
            Temperature
        FROM 
            Weather
        WHERE 
            RecordDate = w.RecordDate - INTERVAL 1 DAY
    );