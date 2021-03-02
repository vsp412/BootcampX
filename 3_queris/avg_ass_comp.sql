select s.name, avg(asss.duration) as avg_comp, avg(ass.duration) as desig_comp
from students as s inner join assignment_submissions as asss
on s.id = asss.student_id inner join assignments as ass
on ass.id = asss.assignment_id
where s.end_date is null
group by s.name
having avg(asss.duration) < avg(ass.duration)
order by avg_comp;