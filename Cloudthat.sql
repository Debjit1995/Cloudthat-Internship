use dbj;

SELECT TOP 10
    customer_city, 
    AVG(delivery_duration_days) AS avg_delivery_days,
    COUNT(order_id) AS total_orders
FROM dbo.merged_orders_customers
GROUP BY customer_city
ORDER BY avg_delivery_days DESC;

SELECT TOP 10
    courier,
    AVG(wait_time_days) AS avg_wait_days,
    COUNT(order_id) AS total_orders
FROM dbo.merged_orders_customers
GROUP BY courier
ORDER BY avg_wait_days DESC;


SELECT
    courier,
    SUM(CASE WHEN is_late = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS on_time_percentage,
    COUNT(order_id) AS total_orders
FROM dbo.merged_orders_customers
GROUP BY courier
ORDER BY on_time_percentage DESC;

SELECT
    courier,
    SUM(CASE WHEN is_late = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS on_time_percentage,
    SUM(CASE WHEN is_late = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS late_percentage,
    COUNT(order_id) AS total_orders
FROM dbo.merged_orders_customers
GROUP BY courier
ORDER BY late_percentage DESC;


SELECT 
    DATENAME(weekday, order_purchase_timestamp) AS day_of_week,
    AVG(delivery_duration_days) AS avg_delivery_days,
    SUM(CASE WHEN is_late = 1 THEN 1 ELSE 0 END) AS late_deliveries
FROM dbo.merged_orders_customers
GROUP BY DATENAME(weekday, order_purchase_timestamp),
         DATEPART(weekday, order_purchase_timestamp)
ORDER BY DATEPART(weekday, order_purchase_timestamp);

SELECT 
    customer_city,
    courier,
    COUNT(order_id) AS total_orders,
    AVG(delivery_duration_days) AS avg_delivery_days,
    SUM(CASE WHEN is_late = 1 THEN 1 ELSE 0 END) AS late_deliveries
FROM dbo.merged_orders_customers
GROUP BY customer_city, courier
ORDER BY avg_delivery_days DESC;