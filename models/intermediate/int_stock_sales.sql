select
    product_id,
    date_date,
    qty,
    price
from
    {{ ref('stg_raw__sales') }}
join
    {{ ref('stg_raw__stock') }}
using
    (product_id)