
-- Q4: Find the top 5 customers by total spending

SELECT
    customer_id,
    SUM(quantity * unit_price) AS total_spending
FROM orders
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 5;
