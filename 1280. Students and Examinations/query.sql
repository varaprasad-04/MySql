# Write your MySQL query statement below
select s.student_id,s.student_name,sub.subject_name,coalesce(e.attended_exams,0) as attended_exams 
from Students s 
cross join Subjects sub
left join (
    select student_id,subject_name,count(*) as attended_exams from Examinations group by student_id,subject_name
)e
on s.student_id=e.student_id
and sub.subject_name = e.subject_name
order by s.student_id,sub.subject_name