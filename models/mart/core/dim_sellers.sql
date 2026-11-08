select

    stg_s.seller_id,
    stg_s.seller_zip_code_prefix,
    stg_s.seller_city,
    stg_s.seller_state


from {{ ref('stg_ecommerce__sellers') }} as stg_s