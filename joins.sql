CREATE TABLE orders (
	id INT PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	product VARCHAR(50) NOT NULL,
	quantity INTEGER NOT NULL,
	price DECIMAL(10,2) NOT NULL
);

CREATE TABLE customers (
	id INT PRIMARY KEY, 
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL
);

INSERT into orders (id, customer_id, product, quantity, price)
VALUES (1, 1, 'iphone', 2, 1000),
	  (2, 2, 'macbook', 1, 1500),
	  (3, 3,'ipad', 1, 800),
	  (4, 5, 'imac', 1, 2000);
	  
select * from orders;

INSERT INTO customers (id, name, email)
VALUES (1, 'Gab', 'gab@example.com'),
	   (2, 'Gre', 'gre@example.com'),
	   (3, 'Rein', 'rein@example.com'),
	   (4, 'Gem', 'gem@example.com'),
	   (5, 'Vic', 'vic@example.com');
	   
select * from customers;

select count(o.id) as num_orders, c.name
from customers as c
left join orders as o
	on o.customer_id = c.id
group by c.name
order by num_orders desc;


select * 
from customers c
left join orders o
	on o.customer_id = c.id;
	
select * 
from orders as o
right join customers as c
	on o.customer_id = c.id;
	
select sum(o.price * o.quantity) as total_revenue, o.product
from orders o 
group by o.product
order by total_revenue desc;

select c.email, c.name
from customers c
left join orders o
	on c.id = o.customer_id
where o.id is null;