-- Find Users With Valid E-Mails
-- https://leetcode.com/problems/find-users-with-valid-e-mails/

SELECT *
FROM Users
WHERE BINARY mail LIKE '%@leetcode.com'
  AND mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
