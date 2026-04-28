-- Biggest Single Number
-- https://leetcode.com/problems/biggest-single-number/

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
);
