-- EXPLORATORY QUERIES

-- 1. Count total records
SELECT COUNT(*) AS total_records
FROM cafe_sales_final;

-- 2. Total reevenue by item
SELECT item, SUM(total_spent) AS total_revenue
FROM cafe_sales_final
GROUP BY item
ORDER BY total_revenue DESC;

-- 3.Average sale amount by payment method
SELECT payment_method, AVG(total_spent) AS avg_sale
FROM cafe_sales_final
GROUP BY payment_method;

-- 4.Top 5 items by revenue
SELECT item, SUM(total_spent) AS total_revenue
FROM cafe_sales_final
GROUP BY item
ORDER BY total_revenue DESC
LIMIT 5;


-- 5. Revenue by location
SELECT location, SUM(total_spent) AS total_revenue
FROM cafe_sales_final
GROUP BY location
ORDER BY total_revenue DESC;


-- 6. Sales by date
SELECT transaction_date, SUM(total_spent) AS daily_sales
FROM cafe_sales_final
GROUP BY transaction_date
ORDER BY transaction_date;