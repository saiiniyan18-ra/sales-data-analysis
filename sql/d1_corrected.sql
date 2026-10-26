-- D1: Correct the regional revenue analysis
-- Use the actual schema and completed orders only.
-- Apply the revenue threshold after grouping with HAVING.

SELECT
    c.region,
    SUM(o.amount) AS total_revenue
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
HAVING SUM(o.amount) > 80000
ORDER BY total_revenue DESC;
