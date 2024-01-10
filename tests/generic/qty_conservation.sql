{% test qty_conservation(model, column_name, another_model, another_column) %}

with leftie as (
select
    0 as id,
    sum({{ column_name }}) as qty
from
    {{ model }}
),
rightie as (
select
    0 as id,
    sum({{ another_column }}) as qty
from
    {{ another_model }}
)
select
    leftie.qty as leftie_qty,
    rightie.qty as rightie_qty
from leftie
join rightie
using (id)
where leftie.qty != rightie.qty

{% endtest %}