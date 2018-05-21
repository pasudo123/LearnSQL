SELECT 
    AVG(Price), Manufacturer
FROM 
    products
GROUP BY 
    Manufacturer;

+------------+--------------+
| AVG(Price) | Manufacturer |
+------------+--------------+
|   240.0000 |            1 |
|   150.0000 |            2 |
|   168.0000 |            3 |
|   150.0000 |            4 |
|   240.0000 |            5 |
|    62.5000 |            6 |
+------------+--------------+