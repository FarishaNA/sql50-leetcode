-- Consecutive Numbers
-- https://leetcode.com/problems/consecutive-numbers/

SELECT DISTINCT
    IF(l1.num IS NOT NULL, l1.num, 0) AS ConsecutiveNums
FROM logs l1
JOIN logs l2 ON l2.id = l1.id + 1
JOIN logs l3 ON l3.id = l2.id + 1
WHERE l1.num = l2.num
  AND l2.num = l3.num;
