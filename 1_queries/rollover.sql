SELECT s.name, s.start_date, c.name, c.start_date
FROM students AS s INNER JOIN cohorts AS c
ON s.cohort_id = c.id
where s.start_date <> c.start_date
ORDER BY c.start_date;