-- Assignment-10

use org;

-- Q-1. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
select * from (select *,dense_rank() over(order by salary desc) as rnk from worker) as sub_tb where sub_tb.rnk=5;

-- Q-2. Write an SQL query to fetch the list of employees with the same salary.
select * from worker where salary =500000; -- If we want to know about specific salary value
-- If we want to get records of all persons whose salary=nth highest salary
select * from (select *,dense_rank() over(order by salary desc) as rnk from worker) as sub_tb where sub_tb.rnk=2; 