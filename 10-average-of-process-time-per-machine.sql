SELECT
    a1.machine_id,
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
FROM activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id



---------------------------------------------------------------------------------------------------------------------
SELECT *
FROM activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
| machine_id | process_id | activity_type | timestamp | machine_id | process_id | activity_type | timestamp |
| ---------- | ---------- | ------------- | --------- | ---------- | ---------- | ------------- | --------- |
| 0          | 0          | end           | 1.52      | 0          | 0          | start         | 0.712     |
| 0          | 0          | start         | 0.712     | 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.52      | 0          | 0          | end           | 1.52      |
| 0          | 0          | start         | 0.712     | 0          | 0          | end           | 1.52      |
| 0          | 1          | end           | 4.12      | 0          | 1          | start         | 3.14      |
| 0          | 1          | start         | 3.14      | 0          | 1          | start         | 3.14      |
| 0          | 1          | end           | 4.12      | 0          | 1          | end           | 4.12      |
| 0          | 1          | start         | 3.14      | 0          | 1          | end           | 4.12      |
| 1          | 0          | end           | 1.55      | 1          | 0          | start         | 0.55      |
| 1          | 0          | start         | 0.55      | 1          | 0          | start         | 0.55      |
| 1          | 0          | end           | 1.55      | 1          | 0          | end           | 1.55      |
| 1          | 0          | start         | 0.55      | 1          | 0          | end           | 1.55      |
| 1          | 1          | end           | 1.42      | 1          | 1          | start         | 0.43      |
| 1          | 1          | start         | 0.43      | 1          | 1          | start         | 0.43      |
| 1          | 1          | end           | 1.42      | 1          | 1          | end           | 1.42      |
| 1          | 1          | start         | 0.43      | 1          | 1          | end           | 1.42      |
| 2          | 0          | end           | 4.512     | 2          | 0          | start         | 4.1       |
| 2          | 0          | start         | 4.1       | 2          | 0          | start         | 4.1       |
| 2          | 0          | end           | 4.512     | 2          | 0          | end           | 4.512     |
| 2          | 0          | start         | 4.1       | 2          | 0          | end           | 4.512     |
| 2          | 1          | end           | 5         | 2          | 1          | start         | 2.5       |
| 2          | 1          | start         | 2.5       | 2          | 1          | start         | 2.5       |
| 2          | 1          | end           | 5         | 2          | 1          | end           | 5         |
| 2          | 1          | start         | 2.5       | 2          | 1          | end           | 5         |



SELECT *
FROM activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start' AND a2.activity_type = 'end'
| machine_id | process_id | activity_type | timestamp | machine_id | process_id | activity_type | timestamp |
| ---------- | ---------- | ------------- | --------- | ---------- | ---------- | ------------- | --------- |
| 0          | 0          | start         | 0.712     | 0          | 0          | end           | 1.52      |
| 0          | 1          | start         | 3.14      | 0          | 1          | end           | 4.12      |
| 1          | 0          | start         | 0.55      | 1          | 0          | end           | 1.55      |
| 1          | 1          | start         | 0.43      | 1          | 1          | end           | 1.42      |
| 2          | 0          | start         | 4.1       | 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.5       | 2          | 1          | end           | 5         |


SELECT *
FROM activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id
| machine_id | process_id | activity_type | timestamp | machine_id | process_id | activity_type | timestamp |
| ---------- | ---------- | ------------- | --------- | ---------- | ---------- | ------------- | --------- |
| 0          | 0          | start         | 0.712     | 0          | 0          | end           | 1.52      |
| 1          | 0          | start         | 0.55      | 1          | 0          | end           | 1.55      |
| 2          | 0          | start         | 4.1       | 2          | 0          | end           | 4.512     |


SELECT
    a1.machine_id,
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
FROM activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id
| machine_id | processing_time |
| ---------- | --------------- |
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |