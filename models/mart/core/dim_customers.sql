select

    stg_c.customer_id,
    stg_c.customer_unique_id,
    stg_c.customer_zip_code_prefix,
    stg_c.customer_city,
    stg_c.customer_state

from {{ ref('stg_ecommerce__customers') }} as stg_c