# Write your MySQL query statement below
SELECT ROUND(
    COUNT(*) /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) AS fraction
FROM (
    SELECT player_id,
           MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) f
JOIN Activity a
ON f.player_id = a.player_id
AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);