SELECT o.customer_id
, c.name
, c.email
, MIN(o.created_at) AS first_order_at
, COUNT(*) AS number_of_orders
FROM analytics-engineers-club.coffee_shop.customers AS c
JOIN analytics-engineers-club.coffee_shop.orders AS o
ON o.customer_id = c.id
GROUP BY 1, 2, 3
ORDER BY first_order_at
LIMIT 5
