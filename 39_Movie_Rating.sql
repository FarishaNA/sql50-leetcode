-- Movie Rating
-- https://leetcode.com/problems/movie-rating/

(
    SELECT name AS results
    FROM Users u
    JOIN MovieRating r
        ON u.user_id = r.user_id
    GROUP BY r.user_id
    ORDER BY COUNT(*) DESC, name ASC
    LIMIT 1
)

UNION ALL

(
    SELECT title AS results
    FROM Movies m
    JOIN MovieRating r
        ON m.movie_id = r.movie_id
    WHERE r.created_at >= '2020-02-01'
      AND r.created_at < '2020-03-01'
    GROUP BY m.movie_id
    ORDER BY AVG(rating) DESC, title ASC
    LIMIT 1
);
