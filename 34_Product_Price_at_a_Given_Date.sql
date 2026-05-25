-- Product_Sales_Analysis_IV.sql
-- https://leetcode.com/problems/product-price-at-a-given-date/

SELECT DISTINCT
    p.product_id,
    IFNULL(p2.new_price, 10) AS price
FROM Products p
LEFT JOIN Products p2
    ON p.product_id = p2.product_id
    AND p2.change_date = (
        SELECT MAX(change_date)
        FROM Products p3
        WHERE p3.product_id = p.product_id
          AND p3.change_date <= '2019-08-16'
    );
