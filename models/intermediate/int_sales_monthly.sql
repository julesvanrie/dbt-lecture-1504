select
    -- extract(year from date_date) || '-' || extract(month from date_date) as yearmonth
    {{ yearmonth('date_date') }} as yearmonth
    , sum(qty) as qty

from
    {{ ref("int_stock_sales")}}

group by
     {{ yearmonth('date_date') }}
