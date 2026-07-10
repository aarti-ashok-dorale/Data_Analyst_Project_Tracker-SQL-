# 1. Add new column (alter)
alter table employees add email varchar(100);
describe employees;

# 2. Update email of one employee
update employees set email = 'rahul@gmail.com' where employee_id = 101;


# 3. Update salary
update employees set salary = 45000 where employee_id = 103;

# 4. Modify column size
alter table employees modify email varchar(150);

# 5. Insert a new eployee
insert into employees values
(    116,
	'manish patil',
	'data analytics',
	'data analyst',
	 48000,
	'2025-01-15',
	'manish@gmail.com'
);

# 6. Delete an employee
delete from employees where employee_id = 116;

select * from employees;

-- CONCEPTS COVERED
-- alter table add
-- alter table modify
-- update
-- insert
-- delete
-- desc
-- select