select
	e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    t.title,
    s.salary,
    t.from_date
from employees as e
join titles as t
join salaries as s
on e.emp_no = t.emp_no
and t.emp_no = s.emp_no
and e.emp_no = 35789;

create view view_ysd as(
select
	e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    t.title,
    s.salary,
    t.from_date
from employees as e
join titles as t
join salaries as s
on e.emp_no = t.emp_no
and t.emp_no = s.emp_no
and e.emp_no = 35789
);

select * from view_ysd;

drop view view_ysd;