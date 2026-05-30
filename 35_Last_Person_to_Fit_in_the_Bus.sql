-- Last_Person_to_Fit_in_the_Bus.sql
-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/

SELECT person_name
FROM (
    SELECT
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS weight_sum
    FROM Queue
) q
WHERE weight_sum <= 1000
ORDER BY weight_sum DESC
LIMIT 1;
