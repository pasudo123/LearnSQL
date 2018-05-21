SELECT 
    AVG(Price), Manufacturers.name
FROM
    Products, Manufacturers
WHERE 
    Products.manufacturer = Manufacturers.code
GROUP BY
    Manufacturers.name
HAVING 
    AVG(Price) >= 150;

-- Inner Join
SELECT
    AVG(Price), Manufacturers.name
FROM
    Products
INNER JOIN
    Manufacturers
ON
    Products.manufacturer = Manufacturers.code
GROUP BY
    Manufacturers.name
HAVING
    AVG(Price) >= 150;

/**
+------------+-----------------+
| AVG(Price) | name            |
+------------+-----------------+
|   150.0000 | Creative Labs   |
|   240.0000 | Fujitsu         |
|   168.0000 | Hewlett-Packard |
|   150.0000 | Iomega          |
|   240.0000 | Sony            |
+------------+-----------------+
**/
