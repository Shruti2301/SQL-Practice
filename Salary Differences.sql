-- find the max salary in marketing department
with t1 as (
  select d.department, max(e.salary) as max_mkt
  from db_employee e
  inner join db_dept d on d.id = e.department_id
  where d.department = 'marketing'
  group by d.department
),
-- find the max salary in engineering department
t2 as (
  select d.department, max(e.salary) as max_engg
  from db_employee e
  inner join db_dept d on d.id = e.department_id
  where d.department = 'engineering'
  group by d.department
)
-- subtract the salaries
select t1.max_mkt - t2.max_engg as salary_difference
from t1, t2;
