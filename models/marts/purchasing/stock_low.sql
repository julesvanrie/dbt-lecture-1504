select
    *

from
    {{ ref("stg_raw__stock")}}

where
    stock < 10