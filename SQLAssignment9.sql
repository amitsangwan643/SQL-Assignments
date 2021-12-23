-- Assignment-9

use org;

-- Q-1.  Write an SQL query to show the top n (say 10) records of a table.
select * from worker limit 10;

-- Q-2. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select * from worker where salary=(select distinct salary from worker order by salary desc limit 4,1);
-- OR
select * from (select *,dense_rank() over(order by salary desc) as rnk from worker) as sub_tb where sub_tb.rnk=5;