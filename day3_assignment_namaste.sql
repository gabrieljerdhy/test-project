-- orders where customers name has "a" as second character and "d" as fourth character
SELECT order_id, customer_name FROM public.orders
WHERE customer_name LIKE '_a_d%';

-- get all the orders placed in the month of dec 2020
SELECT order_id FROM public.orders
WHERE order_date BETWEEN '2020-12-1' AND '2020-12-31';

-- 
