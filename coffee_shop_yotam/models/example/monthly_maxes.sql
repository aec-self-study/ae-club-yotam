SELECT DATE_TRUNC(first_order_at, month) AS signup_month
, MAX(number_of_orders) AS most_orders
FROM {{ ref('customers') }}
GROUP BY 1
