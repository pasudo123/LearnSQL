SELECT 
    p.name, p.price, m.name
FROM 
    products p, manufacturers m
WHERE
    p.manufacturer = m.code;

+-----------------+-------+-----------------+
| name            | price | name            |
+-----------------+-------+-----------------+
| Monitor         |   240 | Sony            |
| DVD drive       |   180 | Creative Labs   |
| CD drive        |    90 | Creative Labs   |
| DVD burner      |   180 | Creative Labs   |
| Printer         |   270 | Hewlett-Packard |
| Toner cartridge |    66 | Hewlett-Packard |
| ZIP drive       |   150 | Iomega          |
| Hard drive      |   240 | Fujitsu         |
| Memory          |   120 | Winchester      |
| Floppy disk     |     5 | Winchester      |
+-----------------+-------+-----------------+