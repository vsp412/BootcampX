select t.name, s.name, a.name, (ar.completed_at - ar.started_at) as duration
from teachers as t inner join assistance_requests as ar
on t.id = ar.teacher_id inner join students as s
on s.id = ar.student_id inner join assignments as a
on a.id = ar.assignment_id
order by duration;
