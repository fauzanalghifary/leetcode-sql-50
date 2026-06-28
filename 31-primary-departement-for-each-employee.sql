SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(*) = 1

ORDER BY employee_id;

--

SELECT employee_id, department_id
FROM (
    SELECT employee_id, department_id, 1 AS source_order
    FROM Employee
    WHERE primary_flag = 'Y'

    UNION ALL

    SELECT employee_id, department_id, 2 AS source_order
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
) t
ORDER BY source_order, employee_id;