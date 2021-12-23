-- Assignment-6

use org;

-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where month(joining_date)=2 and year(joining_date)=2014;

-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

with recursive dup as (select first_name,joining_date, row_number() over(partition by joining_date) as duplicate_recordsFromJoiningDate,
				  department, row_number() over(partition by department) as duplicate_recordsFromDepartment from worker)
select * from dup where duplicate_recordsFromJoiningDate>1;


-- Q-3. How to remove duplicate rows from Employees table.
with recursive duplicateDataTable as (select first_name,joining_date, row_number() over(partition by joining_date) as duplicate_recordsFromJoiningDate,
														department, row_number() over(partition by department) as duplicate_recordsFromDepartment from worker )
                                                        
delete from duplicateDataTable where duplicate_recordsFromJoiningDate>1 and duplicate_recordsFromDepartment>1 ;