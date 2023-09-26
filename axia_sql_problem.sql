CREATE TABLE real_estate_listings (
	property_id INT,
	city VARCHAR(20),
	sale_price DECIMAL(10,2)
);

INSERT INTO real_estate_listings (property_id, city, sale_price)
VALUES
    (1, 'New York', 750000.00),
    (2, 'Los Angeles', 620000.50),
    (3, 'Chicago', 450000.75),
    (4, 'San Francisco', 980000.25),
    (5, 'Miami', 550000.00),
    (6, 'Dallas', 420000.75),
    (7, 'Seattle', 850000.50),
    (8, 'Boston', 720000.00),
    (9, 'Denver', 600000.25),
    (10, 'Atlanta', 480000.50),
    (11, 'Atlanta', 580000.50),
    (12, 'Dallas', 320000.75),
    (13, 'New York', 370000.75);
	
SELECT * FROM real_estate_listings;

SELECT city, AVG(sale_price) AS average_sale_price
FROM real_estate_listings
GROUP BY city;
