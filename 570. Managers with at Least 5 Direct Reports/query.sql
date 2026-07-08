
select e.name from
Employee e join (
    select managerId,count(*) as c from Employee group by managerId having count(*) >=5
)t
on e.id=t.managerId;
