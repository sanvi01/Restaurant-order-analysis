-- 1. View transaction table
select * from transaction_details;

-- 2. Total sale amount in this date range
select sum(transaction_amount) from transaction_details;

-- 3. Highest to lowest transaction orders
select order_id, transaction_type,transaction_amount from transaction_details
order by transaction_amount desc; 

-- 4. More preffered payment mode
select transaction_type, count(order_id) as num_payment
from transaction_details
group by transaction_type;