https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=5
  
select count(*) as admin_employee_count
from worker
where department = 'ADMIN' and datepart(month, joining_date) >= 4
group by department
