-- creating table
CREATE TABLE sales (
	id INT,
	sale_date DATE,
	product VARCHAR(255),
	quantity INT,
	revene DECIMAL(10,2)
);

-- insert values to table
INSERT INTO sales (id, sale_date, product, quantity, revene)
VALUES 
	(1, '2021-01-01', 'Product A', 10, 100.00),
	(2, '2021-01-02', 'Product B', 5, 50.00),
  	(3, '2021-01-03', 'Product C', 15, 150.00),
  	(4, '2021-01-04', 'Product A', 8, 80.00),
  	(5, '2021-01-05', 'Product B', 12, 120.00),
  	(6, '2021-01-06', 'Product C', 20, 200.00),
 	(7, '2021-01-07', 'Product A', 6, 60.00),
  	(8, '2021-01-08', 'Product B', 18, 180.00),
  	(9, '2021-01-09', 'Product C', 10, 100.00),
  	(10, '2021-01-10', 'Product A', 4, 40.00);
	
-- explore
SELECT * FROM public.sales;

SELECT * FROM sales
WHERE product = 'Product A';

SELECT sale_date, SUM(revene) AS total_revenue
FROM sales
GROUP BY sale_date;

SELECT product, SUM(revene) AS total_revenue
FROM sales
GROUP BY product;

SELECT product, SUM(quantity)
FROM sales
GROUP BY product
ORDER BY SUM(quantity) DESC;

SELECT * FROM sales
WHERE sale_date = '2021-01-02';

SELECT SUM(revene) AS total_revenue FROM sales
WHERE product = 'Product C';

SELECT sale_date FROM sales
WHERE revene > 150.00;

SELECT product
FROM sales
GROUP BY product HAVING SUM(quantity) > 30;

SELECT AVG(revene) FROM sales
WHERE product = 'Product B';

SELECT product, SUM(revene) AS total_revenue 
FROM sales
GROUP BY product HAVING AVG(revene) > 15;




