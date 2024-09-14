drop database if exists employee;


--Creating Database and Tables --------------------------------------------------------
create database employee;
use employee;
create table departments(
		department_id int primary key,
		department_name varchar(100) unique not null
);
create table location(
		location_id int primary key auto_increment,
		location varchar(30) not null unique
);
create table employees(
		employee_id int primary key,
		employee_name varchar(50) not null,
		gender enum("M","F"),
		age int check(age>=18),
		hire_date date default(current_date()),
		designation varchar(100),
		department_id int,
		location_id int,
		salary decimal(10,2),
		foreign key (department_id) references departments(department_id),
		foreign key (location_id) references location(location_id)
);

-- Data Insertion  --------------------------------------------------------
insert into location(location_id, location) values 
		(1,"Chennai"),
		(2,"Bangalore"),
		(3,"Hyderbad"),
		(4,"Pune");
insert into departments(department_id, department_name) values
		(1,"Software Development"),
		(2,"Marketing"),
		(3,"Data Science"),
		(4,"Human Resources"),
		(5,"Product Management"),
		(6,"Content Creation"),
		(7,"Finance"),
		(8,"Design"),
		(9,"Research and Development"),
		(10,"Customer Support"),
		(11,"Business Development"),
		(12,"IT"),
		(13,"Operations");
insert into employees(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
values
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

-- Data Manipulation -----------------------------------------------------------
select * from departments;
select location from location;
select employee_name, designation from employees;

update employees set designation="Senior Data Analyst" where employee_id = 5001;
update employees set salary = salary*1.1 where department_id=7;

delete from employees where hire_date < date("2017-01-01");
delete from employees where employee_id = 5025;


-- Data Retrieval --------------------------------------------------------
select distinct salary from employees;

select age as Employee_Age, salary as Employee_Salary from employees;

select salary as Salary, salary*1.1 as Salary_With_Bonus from employees;
select * from employees where hire_date < date("2016-01-01") and salary > 50000;
select * from employees where designation = "Data Analyst" or designation = "Data Scientist";

update employees set designation="Data Scientist" where designation is null;
select * from employees where department_id in (1,3,4,9,12);
select * from employees where salary not between 50000 and 80000;
select * from employees 
where employee_name LIKE 'A%' 
   OR employee_name LIKE 'E%'
   OR employee_name LIKE 'I%'
   OR employee_name LIKE 'O%'
   OR employee_name LIKE 'U%'
   OR employee_name LIKE 'a%' 
   OR employee_name LIKE 'e%'
   OR employee_name LIKE 'i%'
   OR employee_name LIKE 'o%'
   OR employee_name LIKE 'u%';
select * from employees where employee_name like "_sh%";

-- Sorting and Grouping -----------------------------------------------
select * from employees where hire_date > date("2019-01-01") order by hire_date;
select * from employees order by department_id asc, salary desc;

select * from employees order by salary desc limit 10;
select * from employees where year(hire_date)=2018 order by hire_date asc limit 5;

select sum(salary) from employees where department_id = 7;
select min(age) from employees;

select location_id, max(salary) as SalaryMax from employees group by location_id;
select designation, avg(salary) from employees where designation like "%Analyst%" group by designation;

select department_id, count(*) CountEmployees from employees group by department_id having CountEmployees<3;
select location_id, avg(age) AverageAge from employees where gender="F" group by location_id having AverageAge<30;

-- Joins --------------------------------------------------------------
select e.employee_name as employee_name, 
e.designation as designation, 
d.department_name as department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id;

select d.department_name, count(e.employee_id) no_of_employees
from departments as d
left join employees as e
on d.department_id = e.department_id
group by department_name;

select l.location, e.employee_name
from employees as e
right join location as l
on l.location_id = e.location_id;

-- Functions ---------------------------------------------
select round(avg(age)) from employees;
select *,ceil(sqrt(salary)) bonus from employees;
select left(location,3) from location;
select concat(employee_name,"-",designation) employee_name_with_designation from employees;
select year(hire_date) hire_year from employees;
select datediff(now(),hire_date) no_of_days from employees;
select date_format(hire_date,"%d-%m-%Y") hire_date from employees;
select date_add(hire_date, interval 3 month) employement_confirmation from employees;

select l.location, count(e.employee_id) employees_count
from location as l
left join employees as e
on e.location_id = l.location_id
group by l.location;

select l.location, count(e.employee_id) employees_count
from location as l
left join employees as e
on e.location_id = l.location_id
group by l.location
having l.location = "Bangalore" or l.location = "Hyderbad";

-- Subqueries --------------------------------------------------------------
select * from employees where salary > (select avg(salary) from employees);
select * from employees where salary = (select max(salary) from employees);
select * from employees where department_id = (select department_id from employees 
where employee_name = "Arjun Kumar");
select * from employees where department_id in (select department_id from departments 
where department_name like "%Development%");

-- Stored procedures --------------------------------------------------------
delimiter //
create procedure GetEmployeesByDepartmentName(in dept_name varchar(100))
begin
		select * from employees where department_id in (select department_id from departments 
		where department_name = dept_name);
end //
delimiter ;
call GetEmployeesByDepartmentName("IT");
call GetEmployeesByDepartmentName("Human Resources");


delimiter //
create procedure FindEmployeeBirthYearByID(in emp_id int, out birth_year year)
begin
		declare age_ int;
		select age into age_ from employees where employee_id = emp_id;
		-- SINCE DOB IS NOT AVAILABLE IN THE DATASET, I TOOK current_date AND SUBTRACTED
		-- IT WITH AGE OF THE EMPLOYEE. AND IT WORKED.
		set birth_year = year(date_sub(current_date, interval age_ year));
end //
delimiter ;
drop procedure FindEmployeeBirthYearByID;
call FindEmployeeBirthYearByID(5004,@birth_year);
select @birth_year as birth_year;
call FindEmployeeBirthYearByID(5018,@birth_year);
select @birth_year as birth_year;
call FindEmployeeBirthYearByID(5029,@birth_year);
select @birth_year as birth_year;

-- Triggers --------------------------------------------------------
delimiter //
create trigger salary_average_if_not_provided
before insert on employees
for each row
begin	
		if new.salary is null then
			set new.salary = (select avg(salary) from employees);
		end if;
end //
delimiter ;
insert into employees(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id)
values (5031, 'Feros', 'M', 21, '2017-06-20', 'Financial Analyst', 7, 1);

delimiter //
create trigger prevent_deletion_of_latest_joined_employee
after delete on employees
for each row
begin
		if year(old.hire_date) = year(current_date()) then
				signal sqlstate '45000'
				set message_text = "Cannot delete Employee who joined in the most recent year !";
		end if;
end //
delimiter ;
insert into employees(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id)
values (5032, 'HaagRen', 'M', 21, '2024-06-20', 'Financial Analyst', 7, 1);
delete from employees where employee_id = 5032;
select * from employees;
