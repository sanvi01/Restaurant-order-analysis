USE restaurant;

-- 1. View menu_details table
select * from menu_details;

-- 2. Number of items in the menu
select count(*) from menu_details;

-- 3. Items on the menu
select distinct item_name from menu_details;

-- 4. Least and most expensive item on menu
select * from menu_details
order by item_price;

-- 5. Number of Beverages and Number of Fast food items on the menu
select item_type, count(item_name) as num_dish
from menu_details
group by item_type;

-- 5. Average price of dish in each category(Beverages/Fastfood)
select item_type, avg(item_price) as avg_price
from menu_details
group by item_type;


