SELECT 
    p.Price, p.Name, m.Name
FROM
    products p, manufacturers m
WHERE
    p.manufacturer = m.code
AND
    Price = 
        (SELECT 
            Max(Price) 
        FROM
            products
        WHERE 
            products.manufacturer = m.code);

-- Inner Join
SELECT 
   p.Price, p.Name, m.Name
FROM
    products p
INNER JOIN 
    manufacturers m
ON
    p.manufacturer = m.code
AND
    Price = 
        (SELECT 
            Max(Price) 
        FROM
            products
        WHERE 
            products.manufacturer = m.code);

/**
+-------+------------+-----------------+
| Price | Name       | Name            |
+-------+------------+-----------------+
|   240 | Monitor    | Sony            |
|   180 | DVD drive  | Creative Labs   |
|   180 | DVD burner | Creative Labs   |
|   270 | Printer    | Hewlett-Packard |
|   150 | ZIP drive  | Iomega          |
|   240 | Hard drive | Fujitsu         |
|   120 | Memory     | Winchester      |
+-------+------------+-----------------+
**/