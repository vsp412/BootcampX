SELECT name, id, cohort_id, phone, email
FROM students
WHERE end_date IS NOT NULL
AND github IS NULL;