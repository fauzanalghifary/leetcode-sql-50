SELECT
    q.query_name,
    ROUND(AVG(q.rating / q.position), 2) as quality,
    ROUND(COUNT(IF(q.rating < 3, 1, NULL)) / COUNT(*) * 100, 2) as poor_query_percentage
FROM queries q
GROUP BY q.query_name