select

    cast(order_items.order_id as varchar) as order_id,
    cast(order_items.order_item_id as int) as order_item_id,
    cast(order_items.product_id as varchar) as product_id,
    cast(order_items.seller_id as varchar) as seller_id,
    cast(order_items.shipping_limit_date as date) as shipping_limit_date,
    cast(order_items.price as decimal(10,2)) as price,
    cast(order_items.freight_value as decimal(10,2)) as freight_value

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'order_items') }} as order_items