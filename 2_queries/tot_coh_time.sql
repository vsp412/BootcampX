select sum(ass.duration) 
from assignment_submissions as ass inner join students as s
on s.id = ass.student_id inner join cohorts as c
on c.id = s.cohort_id
where c.name = 'FEB12';