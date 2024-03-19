select o.orderid
,o.orderdate
,o.shipdate
,o.shipmode,
o.ordersellingprice - o.ordercostprice as oroderprofit,
o.ordersellingprice,
 o.ordercostprice,
--from customer
c.customername,
c.segment,
c.country,
--From raw product
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid = p.productid