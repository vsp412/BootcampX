select c.name, avg(ar.completed_at - ar.started_at) as av
from cohorts as c inner join students as s
on c.id = s.cohort_id inner join assistance_requests as ar
on ar.student_id = s.id
group by c.name
order by av desc
limit 1;