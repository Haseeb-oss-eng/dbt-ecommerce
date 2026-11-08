select 

        CAST(sellers.seller_id as varchar) as seller_id,
        
        CAST(
                replace(sellers.seller_zip_code_prefix, '"','')
                         as int) as seller_zip_code_prefix,
        
        CAST(sellers.seller_city as varchar) as seller_city,
        CAST(sellers.seller_state as varchar) as seller_state

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'sellers') }} as sellers