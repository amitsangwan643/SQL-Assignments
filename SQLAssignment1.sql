-- Assignment-1

use org;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
 select first_name as Worker_Name from worker;
 
 -- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 select distinct department from worker;
 
 -- Q-3. Write an SQL query to show the last 5 record from a table.
 select * from worker order by worker_id desc limit 5;