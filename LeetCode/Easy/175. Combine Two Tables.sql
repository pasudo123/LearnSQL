-- 175

/*
Write a SQL query for a report that provides the following information for each person in the Person table,
regardless if there is an address for each of those people:
FirstName, LastName, City, State
*/

-- [ SQL Schema ]
TRUNCATE TABLE Person;
TRUNCATE TABLE Address;

Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255));
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));

insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York');

-- [ Solution ]
SELECT 
    p.FirstName, p.LastName, a.City, a.State
FROM 
    Person p
LEFT JOIN
    Address a
ON
    p.PersonId = a.PersonId;