# https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=5

select datepart(month, time_id) as month, client_id, count(distinct user_id) as users_num
from fact_events
group by datepart(month, time_id),client_id
