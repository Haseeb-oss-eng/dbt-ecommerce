select 

        stg_ot.order_id,
        stg_ot.order_item_id,
        stg_o.order_status,
        stg_o.order_purchase_timestamp,
        stg_o.order_delivered_customer_date,
        stg_o.customer_id,
        stg_ot.product_id,
        stg_ot.seller_id,
        stg_ot.shipping_limit_date,
        stg_ot.price,
        stg_ot.freight_value


from {{ ref('stg_ecommerce__order_items') }} as stg_ot
left join {{ ref('stg_ecommerce__orders') }} as stg_o
    on stg_ot.order_id = stg_o.order_id