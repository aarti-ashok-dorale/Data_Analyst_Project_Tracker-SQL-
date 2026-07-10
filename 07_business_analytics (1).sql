# 1. Total Number of Employees
select count(*) as total_employees from employees;

# 2. Total Number of Projects
select count(*) as total_projects from projects;

# 3. Department-wise Employee Count
select department, count(*) as total_employees from employees
group by department;

# 4. Employee-wise Project Count : left join + group by
select e.employee_name, count(p.project_id) as total_projects from employees e 
left join projects p on e.employee_id = p.employee_id group by e.employee_name;

# 5. Client-wise Total Budget
select c.company, sum(p.budget) as total_budget from clients c
inner join projects p on c.client_id = p.client_id group by c.company;

# 6. Highest Budget Project : order bty + limit
select project_name, budget from projects
order by budget desc limit 1;

# 7. Completed Projects : inner join + where
select p.project_name, ps.status from projects p
inner join project_status ps on p.project_id = ps.project_id where ps.status = 'completed';

# 8. Pending Projects : inner join + where
select p.project_name, ps.status from projects p
inner join project_status ps on p.project_id = ps.project_id where ps.status = 'pending';

# 9. Average Salary by Department : avg() + group by
select department, round(avg(salary),2) as average_salary from employees group by department;

# 10. Complete Project Report : multiple inner join
select
p.project_name,
e.employee_name,
c.company,
ps.status,
p.budget
from projects p
inner join employees e
on p.employee_id = e.employee_id
inner join clients c
on p.client_id = c.client_id
inner join project_status ps
on p.project_id = ps.project_id; 

