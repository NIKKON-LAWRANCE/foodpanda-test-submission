CREATE TABLE AvgProductsPerOrderPerDay AS
SELECT date_local, AVG(COUNT(product_id)) AS avg_products_per_order
FROM Order
WHERE is_successful_order = TRUE
GROUP BY date_local;
