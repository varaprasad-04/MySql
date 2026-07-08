# Write your MySQL query statement below
select s.user_id,round(coalesce(t.conform/r.cou,0),2) as confirmation_rate
from 
Signups s
left join 
    (select user_id,count(*) as conform from Confirmations 
    where action="confirmed" group by user_id) t
on s.user_id= t.user_id
left join (
    select user_id,count(*) as cou from Confirmations 
    group by user_id
)r
on t.user_id=r.user_id