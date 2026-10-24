--Deleting duplicates from tables?

select * from employees;

insert into employees
values
(11,'Surya',101,70000,5),
(12,'Krishna',102,95000,NULL),
(13,'John',104,45000,6),
(14,'Surya',101,70000,5),
(15,'Krishna',102,95000,NULL),
(16,'John',104,45000,6);


--using sub query
delete from employees
where emp_id not in(
                    select min_id 
                    from(
                        select emp_name,dept_id,min(emp_id) min_id from employees
                        group by emp_name,dept_id
                        ) t
);


--using self join 
delete e1 from employees e1
inner join employees e2
on e1.emp_name=e2.emp_name
and e1.dept_id=e2.dept_id
and e1.emp_id>e2.emp_id;


--Find department with minimum employees.
 
select department
       ,count(t.name) as employee_count
from teachers t
join departments d
on t.id=d.id
group by department
having employee_count=
                    (select min(highest_count)
                    from 
                        (select department,count(t.name) as highest_count
                        from teachers t
                        join departments d
                        on d.id=t.id
                        group by department) f);

--with limit
select d.department dept,count(*) Total from teachers t
join departments d
on d.id=t.id
group by dept
order by Total
limit 1;


--3rd highest salary usin window function

select id,name,email,gender,salary
from (select *,
    dense_rank() over(order by salary desc ) as salary_rank
    from teachers) as r
where salary_rank=3;
    
--Departments Without Employees
select d.department,count(*) from departments d
left join teachers t
on d.id=t.id
group by department;
