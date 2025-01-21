with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,         -- Remplace 'id' par 'order_id'
        customer as customer_id, -- Remplace 'customer' par 'customer_id'
        ordered_at as order_date, -- Remplace 'ordered_at' par 'order_date'
        'active' as status       -- Ajoutez une valeur par défaut pour 'status' si nécessaire
    from source
)
select * from renamed

