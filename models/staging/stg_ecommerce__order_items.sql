select

    cast(order_id as varchar) as order_id,
    cast(order_item_id as int) as order_item_id,
    cast(product_id as varchar) as product_id,
    cast(seller_id as varchar) as seller_id,
    cast(shipping_limit_date as date) as shipping_limit_date,
    cast(price as decimal(10,2)) as price,
    cast(freight_value as decimal(10,2)) as freight_value

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'order_items') }} as order_items