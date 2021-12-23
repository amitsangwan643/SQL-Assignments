-- Assignment-8

use org;
select * from worker;
select * from bonus;

-- Q-1. Write an SQL query to fetch intersecting records of two tables.
select * from worker inner join bonus on worker.worker_id=bonus.worker_ref_id;

-- Q-2. Write an SQL query to show records from one table that another table does not have.
select * from worker left join bonus on worker.worker_id=bonus.worker_ref_id;
