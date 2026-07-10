# 1. Employees Having Salary Greater Than Average Salary :subquery + avg()
select * from employees where salary > (select avg(salary) from employees); 

# 2. Highest Budget Project : subquery + max()
select * from projects where budget = (select max(budget)from projects);

# 3. Employees Working on Projects : in + subquery
select * from employees where employee_id in
(select employee_id from projects);

# 4. Completed Projects status
select * from projects where project_id in
(select project_id from project_status where status = 'completed');
--  select * from project_status;

# 5. Create and Use a View
create view employee_details as select
employee_id, employee_name, department, salary from employees;

select * from employee_details; 

# CONCEPTS COVERED
-- subquery
-- avg()
-- max()
-- in
-- create view
-- select from view

