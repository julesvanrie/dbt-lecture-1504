with leftie as (
select
    0 as id,
    sum(qty) as qty
from
    {{ref("int_stock_sales")}}
),
rightie as (
select
    0 as id,
    sum(qty) as qty
from
    {{ref("stg_raw__sales")}}
)
select
    leftie.qty as leftie_qty,
    rightie.qty as rightie_qty
from leftie
join rightie
using (id)
where leftie.qty != rightie.qty