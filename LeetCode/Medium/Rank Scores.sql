-- 178
/*
 If there is a tie between two scores, 
 both should have the same ranking. 
 Note that after a tie, 
 the next ranking number should be the next consecutive integer value. 
 In other words, there should be no "holes" between ranks.
 */

Create table If Not Exists Scores (Id int, Score DECIMAL(3,2));

Truncate table Scores;

insert into Scores (Id, Score) values (1, '3.5');
insert into Scores (Id, Score) values (2, '3.65');
insert into Scores (Id, Score) values (3, '4.0');
insert into Scores (Id, Score) values (4, '3.85');
insert into Scores (Id, Score) values (5, '4.0');
insert into Scores (Id, Score) values (6, '3.65');

-- [ Solution1 ]
SELECT 
    Score,
    (
        SELECT 
            count(distinct Score)
        FROM
            scores 
        WHERE 
            Score >= s.score
    )
    AS Rank 
FROM 
    Scores s
ORDER BY
    Score DESC;

-- [ Solution2 ]
SELECT 
    Score,
    (
        SELECT 
            count(*)
        FROM   
            (SELECT distinct Score s FROM Scores) AS tmp
        WHERE 
            s >= Score
    ) 
    AS Rank
FROM 
    Scores
ORDER BY 
    Score DESC;