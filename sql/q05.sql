
-- Q5: Find the average order value for each customer

SELECT
    customer_id,
    ROUND(AVG(quantity * unit_price), 2) AS average_order_value
FROM orders
GROUP BY customer_id
ORDER BY average_order_value DESC;
