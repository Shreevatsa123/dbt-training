select 
customerid,
segment,
country,
sum(oroderprofit) as profit
from {{ ref('stg_orders') }}
group by
customerid,
segment,
country