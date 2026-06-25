SELECT ROUND( 
    COUNT(DISTINCT a1.player_id) /
    (
        SELECT COUNT(DISTINCT(player_id))
        FROM activity
    )
    , 2) AS fraction
FROM activity a1
JOIN activity a2
    ON a1.player_id = a2.player_id
   AND a2.event_date = DATE_ADD(a1.event_date, INTERVAL 1 DAY)
WHERE (a1.player_id, a1.event_date) IN (
    SELECT player_id, MIN(event_date)
    FROM activity
    GROUP BY player_id
)