-- Article Views I
-- https://leetcode.com/problems/article-views-i/

SELECT DISTINCT viewer_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY id;