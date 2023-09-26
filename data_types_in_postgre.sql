CREATE TABLE temperature_logs (
  id integer,
  timestamp_val timestamp,
  temperature real
);

INSERT INTO temperature_logs (id,timestamp_val,temperature)
VALUES (1, '2022-01-01 12:00:00', 23.4)

select * from temperature_logs;

create table customer(
	id integer,
	name varchar(255),
	email varchar(255)
)
insert into customer (id,name,email)
values (13, 'Gab', 'gabrieljerdhy.lapuz@gmail.com')

select * from customer;