use employees;

desc titles;
select * from titles;

select * from titles where to_date = '9999-01-01';

alter table titles 
add index idx_ysd (to_date);

select * from titles where to_date = '9999-01-01';