create database employee_work_pattern;
use employee_work_pattern;

select * from employee;

-- Total Number Of employees
select count(*) as total_emp from employee;

-- Average age of employee
select avg(age) as average_age_employee from employee;

-- Employee Working Remote
select * from employee
where work_mode = 'Remote';

-- Employees with Performance score  > 90
select employee_id,name,department,gender,performance_score from employee
where performance_score > 90;

-- Department with highest average performance 
select department,avg(performance_score) as average_performance from employee
group by department
order by average_performance desc
limit 1;

-- Average daily hours by department
select department,avg(avg_daily_hours) as average_daily_hours from employee
group by department
order by average_daily_hours desc;

-- Top 5 employees with highest productivity
select employee_id,name,sum(productivity_index) as total_productivity from employee
group by employee_id,name
order by total_productivity desc
limit 5;

-- Count Employess by Work Mode
select work_mode,count(*) as total_employee from employee
group by work_mode;

-- Highest job satisfaction department
select department,avg(job_satisfaction) as Avg_satisfaction from employee
group by department
order by Avg_satisfaction desc
limit 1;

-- Average Performance By Gendewr
select gender,avg(performance_score) as average_performnace from  employee
group by gender;

