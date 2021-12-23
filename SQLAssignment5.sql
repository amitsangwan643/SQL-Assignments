-- Assignment-5

use org;

-- Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select first_name from worker where first_name not in ("Vipul","Satish");

-- Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select first_name from worker where first_name like "_____%h";

-- Q-3. Write a query to validate Email of Employee.
select *,(case  when regexp_like(emailId, '[a-z A-Z 0-9 _  -]+@[a-z A-Z]+\.[a-z]')  then "Yes" else "No" end) as ValidEmailId from worker;