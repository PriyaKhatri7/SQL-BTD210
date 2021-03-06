/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [country_id]
      ,[country_name]
      ,[region_id]
  FROM [HR].[dbo].[countries]

  select * from countries
  select * from departments
  select * from employees
  select * from job_grades
  select * from job_history
  select * from jobs
  select * from locations

  sp_helpfile

  BEGIN TRANSACTION;

  UPDATE employees SET job_id = 'HR';
  rollback;
  desc employees;

  begin transaction;
  alter table employees alter column department_id varchar(7,2) not null;

  begin transaction;
  update employees set salary = (salary)*(1.1) where department_id = 50;
  select * from employees;
  rollback;

  begin transaction;
  update employees set salary = (salary)*(1.1) where department_id = 50;
  commit;

  begin transaction;
  DELETE FROM employees WHERE department_id ='50' OR department_id = '60';
  SELECT * FROM EMPLOYEES;
  ROLLBACK;

  BEGIN TRANSACTION;
  DELETE FROM employees WHERE department_id ='50' OR department_id = '60';
  COMMIT;
  SELECT * FROM EMPLOYEES;
  ALTER TABLE EMPLOYEES MODIFY salary 
  update employees set salary = (salary)*(20000.00) where department_id = 100;

  ALTER TABLE EMPLOYEES ADD LOCATION = 'TORONTO';
  ALTER TABLE EMPLOYEES DROP COLUMN JOB_ID;
  ROLLBACK;