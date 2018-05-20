SELECT 
    Name, Price 
FROM 
    products 
WHERE 
    Price >= 180 
ORDER BY 
    Price DESC, Name ASC;

+------------+-------+
| Name       | Price |
+------------+-------+
| Printer    |   270 |
| Hard drive |   240 |
| Monitor    |   240 |
| DVD burner |   180 |
| DVD drive  |   180 |
+------------+-------+