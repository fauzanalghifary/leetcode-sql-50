SELECT *
FROM cinema c
WHERE c.description != 'boring' && c.id % 2 = 1
ORDER BY c.rating DESC