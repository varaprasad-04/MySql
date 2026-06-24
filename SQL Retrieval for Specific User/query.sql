select c.complaint_id,u.user_id,u.full_name,cc.category_name from 
user_information u inner join user_complaints c on u.user_id = c.user_id
inner join complaint_category cc on c.category_id=cc.category_id
where u.user_id=10115;