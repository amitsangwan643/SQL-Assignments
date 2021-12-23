-- Assignment-2
use org;

-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select left(first_name,3) as Worker_Name_First_3_Letters from worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select locate("a" , first_name,2) as position_Of_Small_a from worker where first_name="Amitabh";

select locate("a" , first_name) from worker where first_name="Amitabh";  -- This Will give only first occurance
select position("a" in first_name) from worker where first_name="Amitabh"; -- This Will give only first occurance
select instr( first_name,'a') from worker where first_name="Amitabh";      -- This Will give only first occurance

-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
select concat(first_name," ",last_name) as Name ,salary,department from worker where salary in (select max(salary) from worker group by department) order by salary;