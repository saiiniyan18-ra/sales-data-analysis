
-- Q3: Count the number of orders in each category

SELECT
    category,
    COUNT(*) AS order_count
FROM orders
GROUP BY category
ORDER BY order_count DESC;
