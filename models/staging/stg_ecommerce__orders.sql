select 
    cast(orders.order_id as varchar) as order_id,
    cast(orders.customer_id as varchar) as customer_id,
    cast(orders.order_status as varchar) as order_status,
    cast(orders.order_purchase_timestamp as timestamp) as order_purchase_timestamp,
    cast(orders.order_approved_at as date) as order_approved_at,
    cast(orders.order_delivered_carrrier_date as date) as order_delivered_carrier_date,
    cast(orders.order_delivered_customer_date as date) as order_delivered_customer_date,
    cast(orders.order_estimated_delivery_date as date) as order_estimated_delivery_date

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'orders') }} as orders