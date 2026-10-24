1.select * from teachers;

2.select name,salary from teachers;

3.select distinct genders from teachers;

4.select * from teachers
  order by salary ASE;--(error)

5.select * from teachers
  order by salary desc
  limit 10;

6.select * from teachers
  where salary >50000;

7.select * from teachers
  where gender='female';

8.select * from teachers
  where salary between 30000 and 70000;

9.select * from teachers 
  where gender in ('male','female');--(confuse)

10.select * from teachers
  where salary is null;--(error)

11.select * from teachers
  where salary is not null;

12.select * from teachers
   where name like 'M%';

13.select * from teachers
   where name like '%a';

14.select * from teachers
   where name like '%son%';

15.select * from teachers
   where email like '%.com';

16.update teachers
   set salary=60000
   where id=5;

17.update teachers
   set gender='other'
   where gender='Genderfluid';

18.update teachers
   set salary=25000
   where salary<20000;

19.alter table teachers
   add department varchar(50);

20.alter table teachers
   modify salary BIGINT;

21.alter table teachers
   rename column name to teacher_name;--(error)

22.alter table teachers
   drop column department;

23.select count(*) from teachers;

24.select avg(salary) from teachers;

25.select max(salary) from teachers;

26.select min(salary) from teachers;

27.select sum(salary) from teachers;

28.select count(*) from teachers
    where salary is not null;--(error)

29.select gender,count(*) from teachers
   group by gender;

30.select gender,avg(salary) from teachers
   group by gender;

31.select gender,max(salary) from teachers
   group by gender;

32.select gender,min(salary) from teachers
   group by gender;

33.select gender,sum(salary) from teachers
   group by gender;

34. select gender ,avg(salary) from teachers
    group by gender
    having avg(salary)>50000;

35.select gender,count(*) from teachers
   group by gender
   having count(*)>10;

36. select gender,max(salary) from teachers
    group by gender
    having max(salary)>80000;

37.select teacher_name,salary from teachers
   order by salary desc
   limit 1 offset 1;

38.select * from teachers
   order by salary desc
   limit 1;

39.select * from teachers
    where salary>(
        select avg(salary) from teachers
    );

40.select count(*) from teachers
    where salary is null;

41.select name,salary from teachers
   order by salary desc
   limit 2,1;

42.select * from teachers
   where salary>(
    select avg(salary) 
    from teachers
   );

43.select gender,count(*) from teachers
   where salary>50000
   group by gender ;

44.select gender,sum(salary) from teachers
   where salary>50000
   group by gender;

45.select * from teachers
   where teacher_name like '_____';

46. select * from teachers
    where Email like '%google%';

47. select salary,count(*) from teachers
    group by salary
    having count(*)>1;

48.select * from teachers
   where salary =(
    select max(salary) from teachers
   );

49. update teachers
    set salary= salary +(salary *0.1)
    where salary <30000;

50.alter table teachers
   add column Experience INT default '0';
