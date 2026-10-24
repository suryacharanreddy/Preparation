create table employee(
    Id INT PRIMARY KEY ,
    Name VARCHAR(50) ,
    Age INT NOT NULL,
    Salary BIGINT
);

INSERT INTO employee(Id,Name,Age,Salary)
VALUES
(1,'virat',37,12000),
(2,'rohit',37,11000),
(3,'dhoni',43,14000),
(4,'sachin',52,18000),
(5,'yuvraj',49,9000),
(6,'gambir',47,8500);

alter table employee
add column Experience INT ;

alter table employee
add CONSTRAINT chk_age
CHECK (Age>=25);

alter table employee
drop PRIMARY KEY;

