
# 1. Total Number of Employees (count)
select count(*) as total_employees from employees;

# 2. Average Salary (avg)
select round(avg(salary),3) as average_salary from employees;

# 3. Highest Salary(max)
select max(salary) as highest_salary from employees;

# 4. lowest Salary(min)
select min(salary) as lowest_salary from employees;

# 5. Department-wise employee count
select department, count(*) as total_employees from employees
group by department;

# 6. Departments Having More Than 3 Employees (having)
select department,count(*) as total_employees from employees
group by department having count(*) > 3;

# 7. Employee Name with Project Name (inner join)
select e.employee_name, p.project_name from employees e 
inner join projects p on e.employee_id = p.employee_id;

# 8. Project Name with Client Company (inner join)
select p.project_name, c.company from projects p
inner join clients c on p.client_id = c.client_id;

# 9. All Employees with Their Projects (left join)
select e.employee_name, p.project_name from employees e
left join projects p on e.employee_id = p.employee_id;

# CONCEPTS COVERED
-- count()
-- avg()
-- max()
-- min()
-- group by
-- having
-- inner join
-- left join
