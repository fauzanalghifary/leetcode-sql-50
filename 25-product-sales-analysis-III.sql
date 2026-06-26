SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM sales s
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM sales
    GROUP BY product_id
)