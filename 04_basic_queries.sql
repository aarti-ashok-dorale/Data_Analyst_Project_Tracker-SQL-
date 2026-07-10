# 1. Display All Employees (select)
select * from employees;

# 2. Display Selected Columns : employee name, department (select)
select employee_name, department from employees;

# 3. Employees from Data Analytics Department (where)
select * from employees where department = 'data analytics'; 

# 4. Employees with Salary Greater Than 50000 (where)
select * from employees where salary > 50000;

# 5. Employees from Data Analytics and Salary Greater Than 50000 (where, and)
select * from employees where department = 'data analytics' and salary > 50000;

# 6. Employees from Data Analytics or Testing Department (where, or) 
select * from employees where department = 'data analytics' or department = 'testing';

# 7. Employee Name Starts with 'a' (like)
select * from employees where employee_name like 'a%';

# 8. Employees with Salary Between 40000 and 60000 (where, between)
select * from employees where salary between 40000 and 60000;

# 9. Employees from Multiple Departments (in)
select * from employees where department in ('data analytics','business intelligence');

# 10. Employees Sorted by Salary (Highest First)and (lowest first)
select * from employees order by salary desc;
select * from employees order by salary asc;

# CONCEPTS COVERED
-- select
-- where
-- and
-- or
-- like
-- between
-- in
-- order by

