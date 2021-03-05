select t.name, count(*)
from teachers as t inner join assistance_requests as ar
on t.id = ar.teacher_id
where t.name = 'Waylon Boehm'
group by t.name
