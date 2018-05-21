
SELECT 
    Price, Name
FROM
    products
ORDER BY
    price ASC
LIMIT 1;

-- sub query

SELECT 
    Price, Name
FROM
    products   
WHERE 
    Price = (SELECT Min(Price) FROM products);

/**
+-------+-------------+
| Price | Name        |
+-------+-------------+
|     5 | Floppy disk |
+-------+-------------+
**/