

const { Pool } = require('pg');
const inps = process.argv.slice(2);
console.log(inps)

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const q = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`

const vals = [`${inps[0]}`];

pool.query(q, vals)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort} : teacher ${user.teacher} `);
    console.log(user);
  })
}) 
.catch(err => console.error('query error', err.stack));
