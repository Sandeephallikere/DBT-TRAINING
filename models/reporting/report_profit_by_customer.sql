select
    customerid,
    customername,
    segment,
    country,
sum(orderprofit) as profit_by_cust
from {{ ref('stage_order') }}
group by
    customerid,
    customername,
    segment,
    country