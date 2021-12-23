-- Assignment-4

use org;

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(first_name,"a","A") from worker;

-- Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name asc,department desc;

-- Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.
select concat(first_name," ",last_name) as Name from worker where salary= (select max(salary) from worker);
