--Table
CREATE TABLE superstore (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(20),
    segment VARCHAR(20),
    country VARCHAR(30),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(30),
    sub_category VARCHAR(30),
    product_name TEXT,
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT,
    profit_margin FLOAT,
    order_year INT,
    order_month INT,
    order_month_name VARCHAR(15)
);

--Total Sales
SELECT SUM(sales) AS total_sales
FROM superstore;

--Total Profit
SELECT SUM(profit) AS total_profit
FROM superstore;

--Profit Margin
SELECT 
  SUM(profit) / SUM(sales) * 100 AS profit_margin
FROM superstore;

--Profit by Region
SELECT region, SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

--Top 10 Products by Profit
SELECT product_name, SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

--Bottom 10 Products by Profit
SELECT product_name, SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;



-- Added SQL KPI analysis queries
