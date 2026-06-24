SELECT 
    ROUND(SUM(IF(t.order_date = t.customer_pref_delivery_date, 1, NULL)) / COUNT(*) * 100, 2) AS immediate_percentage
FROM (
    SELECT *,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) rn
    FROM delivery d
) t 
WHERE t.rn = 1



SELECT ROUND(AVG(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
FROM delivery
WHERE (customer_id, order_date) IN (
  SELECT customer_id, min(order_date) 
  FROM delivery
  GROUP BY customer_id
);