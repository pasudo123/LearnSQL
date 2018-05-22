UPDATE
    products 
SET
    Price = Price - (Price * 0.1)
WHERE
    Price >= 120;