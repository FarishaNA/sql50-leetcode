-- Count Salary Categories
-- https://leetcode.com/problems/count-salary-categories/

WITH TEMP AS (
    SELECT
        SUM(income < 20000) AS Low_Salary,
        SUM(income <= 50000 AND income >= 20000) AS Average_Salary,
        SUM(income > 50000) AS High_Salary
    FROM Accounts
)

SELECT 'Low Salary' AS category,
       Low_Salary AS accounts_count
FROM TEMP

UNION

SELECT 'Average Salary' AS category,
       Average_Salary AS accounts_count
FROM TEMP

UNION

SELECT 'High Salary' AS category,
       High_Salary AS accounts_count
FROM TEMP

ORDER BY category;
