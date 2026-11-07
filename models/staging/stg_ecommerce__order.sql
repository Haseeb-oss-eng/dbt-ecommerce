select 
    orders.order_id,
from {{ source('ECOMMERCE_SNOW_SCHEMA', 'orders') }} as orders