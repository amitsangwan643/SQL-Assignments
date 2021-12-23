-- Assignment-7

use org;

-- Q-1. Write an SQL query to show only odd rows from a table.
select * from worker where mod(worker_id,2)=1;
select * from worker where worker_id%2=1;

-- Q-2. Write an SQL query to clone a new table from another table.
create table worker_copy as select * from worker;
select * from worker_copy;