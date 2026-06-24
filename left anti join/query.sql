-- your code goes here
select u.user_id,u.full_name from 
user_information u left join user_complaints c 
on u.user_id=c.user_id
where c.user_id is null
