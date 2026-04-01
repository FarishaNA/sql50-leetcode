-- Game Play Analysis IV
-- https://leetcode.com/problems/game-play-analysis-iv/

SELECT 
    ROUND(
        COUNT(DISTINCT CASE 
            WHEN DATEDIFF(a.event_date, a2.first_day) = 1 
            THEN a.player_id 
        END) 
        / COUNT(DISTINCT a.player_id),
    2) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_day
    FROM Activity
    GROUP BY player_id
) a2
ON a.player_id = a2.player_id;
