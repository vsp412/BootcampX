select c.name, count(s.*) as total_studs
from cohorts as c inner join students as s
on c.id = s.cohort_id
group by c.name
having count(s.*) >= 18
order by count(s.*);