select 
--from raw orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode, 
o.ordersellingprice - o.ordercostprice as orderprofit,
o.ordercostprice,
o.ordersellingprice,
--from raw customer
c.customerid,
c.customername,
c.segment,
c.country,
--from raw product
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} o
Left join {{ ref('raw_customers') }} c
ON o.customerid = c.customerid
left join {{ ref('raw_products') }} p
ON o.productid = p.productid