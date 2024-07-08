https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=5
  
select top 5 product_id, sum(cost_in_dollars*units_sold) as revenue
from online_orders
where date >= '2022-01-01' and date <= '2022-06-30'
group by product_id
order by revenue desc;
