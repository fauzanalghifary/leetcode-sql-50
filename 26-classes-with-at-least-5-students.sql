SELECT c.class
FROM courses c
GROUP BY c.class
HAVING COUNT(*) >= 5