CREATE TABLE TotalSuccessfulOrdersPerRestaurantPerDay AS
SELECT o.date_local, o.vendor_id, COUNT(*) AS total_successful_orders
FROM Order o
WHERE o.is_successful_order = TRUE
GROUP BY o.date_local, o.vendor_id;
