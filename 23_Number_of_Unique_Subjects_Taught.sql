-- User Activity for the Past 30 Days I
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

SELECT 
    teacher_id, 
    COUNT(DISTINCT subject_id) AS cnt
FROM teacher
GROUP BY teacher_id;
