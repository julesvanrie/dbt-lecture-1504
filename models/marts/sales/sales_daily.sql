{{ config(materialized='view') }}

select 
    date_date
    , sum(qty) as qty

from
    {{ ref("int_stock_sales") }}

group by
    date_date