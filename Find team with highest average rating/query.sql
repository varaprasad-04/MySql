select name as team_name,user_count,highest_avg_rating from
(select t.name,count(*) as user_count, round(avg(u.rating),2) 
as highest_avg_rating,
rank() over(order by avg(u.rating) desc) as rnk
from Users u join Teams t on u.team_id=t.team_id
group by t.name) t
where rnk=1