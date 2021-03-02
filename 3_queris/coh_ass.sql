select c.name, count(asss.*) as tot_ass_sub
from cohorts as c inner join students as s
on c.id = s.cohort_id inner join assignment_submissions as asss
on asss.student_id = s.id
group by c.name
order by tot_ass_sub desc;
