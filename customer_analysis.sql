-- 1. Combine order_details and menu_details table
select * from
order_details od left join menu_details md
on od.item_name = md.item_name;

-- 2. least and most ordered items, also specify category(beverage/fastfood)
select od.item_name, md.item_type, sum(od.quantity) as num_purchases
from order_details od left join menu_details md
on od.item_name = md.item_name
group by od.item_name, md.item_type
order by num_purchases;