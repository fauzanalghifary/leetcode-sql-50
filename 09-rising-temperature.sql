SELECT w1.id
FROM weather w1
JOIN weather w2
    ON w1.recordDate = w2.recordDate + INTERVAL 1 DAY
WHERE w1.temperature > w2.temperature


SELECT w1.id
FROM weather w1
JOIN weather w2
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

SELECT id
FROM (
    SELECT
        id,
        temperature,
        recordDate,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp,
        LAG(recordDate)  OVER (ORDER BY recordDate) AS prev_date
    FROM weather
) t
WHERE temperature > prev_temp
  AND DATEDIFF(recordDate, prev_date) = 1;
