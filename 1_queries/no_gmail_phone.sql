SELECT name, id, email, cohort_id
FROM students
WHERE POSITION('gmail.com' IN email) = 0
AND phone IS NULL;