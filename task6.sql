-- TASK 6: Monthly Revenue and Order Volume Analysis


use gauri;
SHOW TABLES;
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'  -- Adjust range if needed
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;


