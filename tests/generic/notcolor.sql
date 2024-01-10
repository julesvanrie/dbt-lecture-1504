{% test notcolor(model, column_name) %}

select
    *
from
    {{model}}
where
    {{column_name}} LIKE 'BL'

{% endtest %}