select

    *


from {{ ref('stg_ecommerce__order_items') }} as order_items

where order_items.price < 0