SELECT 
    DATE_FORMAT(t.trans_date, '%Y-%m') AS month,
    t.country,
    COUNT(*) AS trans_count,
    COUNT(IF(t.state = 'approved', 1, NULL)) AS approved_count,
    SUM(t.amount) AS trans_total_amount,
    SUM(IF(t.state = 'approved', t.amount, 0)) AS approved_total_amount
FROM transactions t
GROUP BY YEAR(t.trans_date), MONTH(t.trans_date), t.country