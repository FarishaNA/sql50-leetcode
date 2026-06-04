-- Exchange_Seats
-- https://leetcode.com/problems/exchange-seats/

SELECT
    CASE
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 = 1
             AND EXISTS (
                 SELECT 1
                 FROM Seat s2
                 WHERE s2.id = s1.id + 1
             ) THEN id + 1
        ELSE id
    END AS id,
    student
FROM Seat s1
ORDER BY id;
