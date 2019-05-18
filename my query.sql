--select UPPER(substring(first_name,1,3)) from worker;
--SELECT REPLACE(first_name, 'A', 'a') from worker;
--select concat(first_name, ' ', last_name) as COMPLETE_NAME from worker;
--select * from worker where first_name like '-----h';
--select first_name from worker where salary > 50000 and salary < 100000;
--select count(*) , DEPARTMENT  from worker group by department order by count(*) desc;
--select DISTINCT  * from worker natural join title where WORKER_TITLE = 'Manager';
--select * from title where worker_title in (select worker_title  from title group by worker_title having(count(*) > 1));
--select * from worker where MOD (WORKER_ID, 2) != 0;
--CREATE TABLE new_worker AS (SELECT * FROM worker);
--create table new_table like worker;
--SELECT CURRENT_TIME;
--select count(*) , DEPARTMENT  from worker group by department having count(*) < 5;
--select first_name ,department from worker where salary in (select max(salary) from worker where department in (select department from worker group by department ))
--select department , sum(salary) from worker group by department
CREATE PROCEDURE MyInsert( _WORKER_ID integer,
  _FIRST_NAME CHAR(25),
  _LAST_NAME CHAR(25),
  _SALARY INT,
  _JOINING_DATE TIMESTAMP,
  _DEPARTMENT CHAR(25))
LANGUAGE SQL
AS $BODY$
   INSERT INTO worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES(_WORKER_ID, _FIRST_NAME, _LAST_NAME, _SALARY, _JOINING_DATE, _DEPARTMENT);   
$BODY$;