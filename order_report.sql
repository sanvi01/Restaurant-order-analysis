-- 1. View the order_details table
select * from order_details;

-- 2. Find order date range
select min(date),max(date) from order_details;

-- 3. Numbers of order in this date range
select count(distinct order_id) from order_details;

-- 4. Number of items ordered
select sum(quantity) from order_details;

-- 5. Orders with most number of items
select order_id, quantity from order_details
where quantity = (select max(quantity) from order_details);

-- 6. Orders with more than 12 items
select count(*) from
(select order_id, quantity from order_details
where quantity > 12) as num_orders;
