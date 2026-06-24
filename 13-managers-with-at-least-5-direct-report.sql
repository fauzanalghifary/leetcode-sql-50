SELECT m1.name
FROM employee e1
JOIN (
    SELECT *
    FROM employee
) m1 ON e1.managerId = m1.id
GROUP BY m1.id
HAVING COUNT(m1.id) >= 5