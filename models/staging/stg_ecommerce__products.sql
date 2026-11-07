select

    cast(products.product_id as varchar) as product_id,
    cast(products.product_category_name as varchar) as product_catgeory_name,
    cast(products.product_name_length as decimal(10,2)) as product_name_length,
    cast(products.product_description_length as decimal(10,2)) as product_description_length,
    cast(products.product_photos_qty as int) as product_photos_qty,
    cast(products.product_weight_gram as decimal(10,2)) as product_weight_gram,
    cast(products.product_length_cm as decimal(10,2)) as product_length_cm,
    cast(products.product_height_cm as decimal(10,2)) as product_height_cm,
    cast(products.product_width_cm as decimal(10,2)) as product_width_cm

from {{ source('ECOMMERCE_SNOW_SCHEMA', 'products') }} as products