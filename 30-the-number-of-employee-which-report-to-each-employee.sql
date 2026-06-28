SELECT m.employee_id, m.name, COUNT(*) as reports_count, ROUND(AVG(e.age), 0) AS average_age
FROM employees m
JOIN employees e
    ON e.reports_to = m.employee_id
GROUP BY m.employee_id
ORDER BY m.employee_id