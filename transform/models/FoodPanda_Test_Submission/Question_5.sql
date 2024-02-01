CREATE TABLE CustomersWithReordersInLast7Days AS
SELECT DISTINCT customer_id
FROM Order
WHERE is_successful_order = TRUE
AND EXISTS (
    SELECT 1
    FROM Order o2
    WHERE o2.customer_id = Order.customer_id
      AND o2.is_successful_order = TRUE
      AND o2.date_local >= CURRENT_DATE - INTERVAL '7' DAY
);
