select

    stg_p.product_id,
    stg_p.product_category_name,
    stg_p.product_name_lenght,
    stg_p.product_description_lenght,
    stg_p.product_photos_qty,
    stg_p.product_weight_g,
    stg_p.product_length_cm,
    stg_p.product_height_cm,
    stg_p.product_width_cm

from {{ ref('stg_ecommerce__products') }} as stg_p 