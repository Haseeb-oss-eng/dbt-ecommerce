select 
        cast(customers.customer_id as varchar) as customer_id,
        cast(customers.customer_unique_id as varchar) as customer_unq_id,
        cast(customers.customer_zip_code_prefix as int) as customer_zip_code_prefix,
        cast(customers.customer_city as varchar) as customer_city,
        cast(customers.customer_state as varchar) as customer_state

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'customers') }} as customers