with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        cast(date_date as date) as date_date,
        product_id,
        cast(quantity as int) as qty

    from source

)

select * from renamed
