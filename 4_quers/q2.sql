select s.name, count(*)
from students as s inner join assistance_requests as ar
on s.id = ar.student_id
where s.name = 'Elliot Dickinson'
group by s.name
