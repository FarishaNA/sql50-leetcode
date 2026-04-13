-- Product Sales Analysis III
-- https://leetcode.com/problems/product-sales-analysis-iii/

SELECT 
    s1.product_id,
    s1.year AS first_year,
    s1.quantity,
    s1.price
FROM Sales s1
JOIN (
    SELECT 
        MIN(year) AS first_year,
        product_id
    FROM Sales
    GROUP BY product_id
) s2
ON s1.year = s2.first_year
AND s1.product_id = s2.product_id;
