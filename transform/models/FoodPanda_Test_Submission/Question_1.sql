SELECT date_local, COUNT(*) AS total_successful_orders
FROM `foodpanda-test-412907.DataAnalystTest.order_data`
WHERE is_successful_order = TRUE
GROUP BY date_local;
