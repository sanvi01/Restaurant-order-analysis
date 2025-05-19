SET GLOBAL local_infile = 1;

create table order_details (
order_id int primary key,
date date,
time_of_sale varchar(40),
item_name varchar(40),
quantity int
);

create table menu_details (
item_name varchar(40),
item_type varchar(40),
item_price int
);


create table transaction_details (
transaction_amount int,
transaction_type varchar(40),
received_by varchar(10),
date date,
time_of_sale varchar(40),
order_id int
);


create table restaurant (
order_id int,
date date,
item_name varchar(40),
item_type varchar(40),
item_price int,
quantity int,
transaction_amount int,
transaction_type varchar(40),
received_by varchar(10),
time_of_sale varchar(40)
);

LOAD DATA LOCAL INFILE 'C:\Users\admin\Desktop\SQL\Balaji.csv'
INTO TABLE restaurant
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

Select * from restaurant;

INSERT IGNORE INTO order_details (order_id, date, time_of_sale, item_name,quantity)
SELECT DISTINCT order_id, date, time_of_sale, item_name,quantity
FROM restaurant;

INSERT IGNORE INTO menu_details (item_name , item_type, item_price)
SELECT DISTINCT item_name , item_type, item_price
FROM restaurant;

INSERT IGNORE INTO transaction_details (transaction_amount ,transaction_type ,received_by , date,time_of_sale,order_id)
SELECT DISTINCT transaction_amount ,transaction_type ,received_by , date,time_of_sale,order_id
FROM restaurant;

Drop table restaurant