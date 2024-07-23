select
    productid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as profit
from {{ ref('stage_order') }}
group by
    productid,
    productname,
    category,
    subcategory