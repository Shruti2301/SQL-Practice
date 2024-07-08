# https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=5

select substring(shipment_date,0,8)as year_month, count(*) as no_of_shipments
from amazon_shipment
group by substring(shipment_date,0,8)
