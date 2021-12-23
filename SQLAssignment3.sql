-- Assignment-3

use org;

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(first_name) as First_Name from worker;

-- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct department,length(department) as Length from worker;

-- Q-3. Write an SQL query to fetch nth max salaries from a table.
select distinct salary from worker ORDER BY salary DESC limit 2,1; -- 3rd highest salary 
select distinct salary from worker ORDER BY salary DESC limit 5,1; -- 5th highest salary
select distinct salary from worker ORDER BY salary DESC limit 7,1; -- 7th highest salary
-- OR
select * from (select *, dense_rank() over(order by salary desc) as nth_Highest_Salary from worker ) as OrderedTable
where OrderedTable.nth_Highest_Salary=3;