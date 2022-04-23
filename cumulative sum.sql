# Write your MySQL query statement below

# Sql 579

Select id, month, sum(Salary) over(partition by id order by month range between 2 preceding and current row ) as Salary from 

(Select * from (Select a.*, b.maximum_month from Employee a left join (select id,max(month) as maximum_month from Employee group by id) b on a.id = b.id ) c where month <> maximum_month) D

order by id,month desc
