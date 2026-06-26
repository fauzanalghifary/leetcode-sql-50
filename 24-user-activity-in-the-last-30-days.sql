SELECT a.activity_date AS day, COUNT(DISTINCT a.user_id) AS active_users
FROM activity a
WHERE a.activity_date BETWEEN '2019-07-27'::DATE + INTERVAL '-29 DAY' AND '2019-07-27'
GROUP BY a.activity_date
ORDER BY a.activity_date


SELECT
    a.activity_date AS day,
    COUNT(DISTINCT a.user_id) AS active_users
FROM activity a
WHERE a.activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
                          AND '2019-07-27'
GROUP BY a.activity_date
ORDER BY a.activity_date;