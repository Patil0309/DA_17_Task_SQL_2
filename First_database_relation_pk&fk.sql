create table empoyees(
emp_id int primary key,
emp_name varchar,
gender varchar(10),
mob bigint,
address varchar
)
select * from empoyees

insert into empoyees (emp_id,emp_name,gender,mob,address)values(103,'mncd','female',6556232154,'add3'),(102,'efgh','male',9956232154,'add2'),
(104,'klcd','male',8956232154,'add4'),
(105,'nmcd','female',3756232154,'add5')

--second table of database first(i.e empoyees)
create table orders(order_id serial primary key,
emp_id int not null,
order_date timestamp default current_timestamp,
total_amount decimal(10,2),
order_name varchar,
constraint empoyees_orders foreign key (emp_id) references empoyees(emp_id))

select * from orders

insert into orders(order_id,emp_id,order_date,total_amount,order_name) 
values(1003,102,'2025-11-05',5000.00,'headphone'),(1002,104,'2024-12-05',12000.00,'mobile')

insert into ()
--Second_database

create database second_database




