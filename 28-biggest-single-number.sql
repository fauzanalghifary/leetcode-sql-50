SELECT MAX(num) AS num
FROM myNumbers
WHERE (num) IN (
    SELECT num
    FROM myNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
    ORDER BY num DESC
)