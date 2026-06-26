# Write your MySQL query statement below
select d.name as Department,e.name Employee,e.salary as Salary from(
    select e.departmentId,max(e.salary) as Salary
    from Employee e 
    group by departmentId
) t
join Employee e on e.departmentId=t.departmentId and e.salary =t.Salary
join Department d on e.departmentId=d.id

