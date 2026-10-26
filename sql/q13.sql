
-- Q13: Compare sales representative revenue against monthly targets
SELECT
    r.rep_name,
    o.order_month,
    r.monthly_target,
    SUM(o.amount) AS revenue,
    CASE
        WHEN SUM(o.amount) < r.monthly_target
            THEN 'Below Target'
        WHEN SUM(o.amount) < r.monthly_target * 1.10
            THEN 'On Target'
        ELSE 'Above Target'
    END AS performance_tier
FROM orders AS o
JOIN reps AS r
    ON o.rep_id = r.rep_id
WHERE o.status = 'completed'
GROUP BY
    r.rep_id,
    r.rep_name,
    o.order_month,
    r.monthly_target
ORDER BY r.rep_name ASC, o.order_month ASC;
