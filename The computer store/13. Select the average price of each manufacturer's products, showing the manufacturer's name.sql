
SELECT 
    AVG(p.Price), m.NAME
FROM
    products p, manufacturers m
WHERE
    p.Manufacturer = m.code
GROUP BY
    m.Name;

-- Inner Join
SELECT 
    AVG(p.price), m.name
FROM
    products p 
INNER JOIN 
    manufacturers m
ON
    p.manufacturer = m.code
GROUP BY
    m.name;

/**
+--------------+-----------------+
| AVG(p.Price) | NAME            |
+--------------+-----------------+
|     150.0000 | Creative Labs   |
|     240.0000 | Fujitsu         |
|     168.0000 | Hewlett-Packard |
|     150.0000 | Iomega          |
|     240.0000 | Sony            |
|      62.5000 | Winchester      |
+--------------+-----------------+
**/