# Restaurant Sales Analysis 🍴
CSV file [source](https://www.kaggle.com/datasets/rajatsurana979/fast-food-sales-report)

## Background
The client is a well-known local fast food store located in India. They offer a menu that includes fast food and beverages. To enhance their business operations, the client wants to gain insights into their sales and customer preferences. By analyzing this dataset, the project will uncover valuable insights into sales trends and customer preferences, helping the client make data-driven decisions to improve their business.

## Ask Phase
### Objective 1: Explore the Menu table 📜
1. View menu table and find the number of items on the menu.
2. What are the least and most expensive item on the menu?
3. How many items are in each category? What is the average dish price within each category?

### Objective 2: Explore the Orders table 📝
1. View the orders table. Find the date range of the table.
2. How many orders were made within thid date range? How many items were ordered within this date range?
3. Which orders had the most number of items?
4. How many orders had more than 12 items?

### Objective 3: Explore the Transactions table 💰
1. View the transactions table. Find the total sales in givendate range.
2. Find the highest and lowest transaction order.
3. Which payment method was preffered more by customers?

### Objective 3: Customer behaviour analysis 👩 👨
1. Join Menu and Orders table
2. What was the least and most ordered items? Specify category(beverage/fastfood).

## Prepare & Analysis Phase
### Date Format Adjustment in Excel for SQL Import
Changed date format from dd/mm/yyyy to yyyy-mm-dd using Excel before importing to SQL

### Data Normalization
I created three distinct tables: menu_details, order_details, and transaction_details -- in MySQL and imported the dataset separately into each table by column. This process normalize the data and improve query efficiency.

### Analysis
Performed analysis with appropriate objective to uncover valuable insights into sales trend and customer behaviour to help the client improve their business and make data driven decision.
