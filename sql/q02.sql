
-- Q2: Find the total sales amount for each product category

SELECT
    category,
    SUM(quantity * unit_price) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;
