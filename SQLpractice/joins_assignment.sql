1.select e.emp_name empName ,d.dept_name deptName from departments d
  inner join employees e
  on d.dept_id=e.dept_id;

2.select e.emp_name,d.dept_name from departments d
    -> inner join employees e
    -> on d.dept_id=e.dept_id
    -> where d.dept_name='IT';

3.select e.emp_name,d.dept_name from departments d
    right join employees e
    on e.dept_id=d.dept_id
    order by e.emp_name asc;

4. select e.emp_name employee from employees e
    -> left join departments d
    -> on e.dept_id=d.dept_id
    -> where d.dept_name is null;

5. select e.emp_name ,d.dept_name from employees e
    -> left join departments d
    -> on d.dept_id=e.dept_id;

6.select d.dept_name ,count(e.emp_id) from employees e
  right join departments d
  on d.dept_id=e.dept_id
  group by d.dept_name;

10. select e.emp_name from employees e
    -> inner join employees m
    -> on m.emp_id=e.manager_id
    -> where m.emp_name ='satya';

11. select m.emp_name ,count(e.emp_name) from employees e
    -> inner join employees m
    -> on e.manager_id=m.emp_id
    -> group by m.emp_name
    -> having count(e.emp_name)>1;

--12.one to many because one department compares empolye names and there managers.

--13.employees have foreign key which id dept_id because iam using emp_id as primary key.

16.select d.dept_name ,count(e.emp_name) from employees e
   right join departments d
   on d.dept_id=e.dept_id
   group by dept_name;

17. select d.department ,avg(salary) from departments d
    -> left join teachers t
    -> on t.id=d.id
    -> group by d.department;

18.select d.department ,avg(salary) from departments d
    -> left join teachers t
    -> on t.id=d.id
    -> group by d.department
    -> having avg(salary) > 50000;

19. select d.department ,count(t.name) from teachers t
    -> right join departments d
    -> on d.id= t.id
    -> group by d.department
    -> order by count(t.name) desc
    -> limit 1;

20. select m.emp_name Manager,count(e.emp_name) TotalEmployees from employees e
    -> inner join employees m
    -> on m.emp_id=e.manager_id
    -> group by m.emp_name;