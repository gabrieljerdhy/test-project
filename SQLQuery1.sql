CREATE DATABASE employee_details;

CREATE TABLE emp (
	id INT,
	name VARCHAR(20)
);

SELECT * FROM emp;

CREATE TABLE sales (
	id INT,
	sale_date DATE,
	product VARCHAR(50),
	quantity INT,
	revenue DECIMAL(10,2)
);
