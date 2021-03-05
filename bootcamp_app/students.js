const { Pool } = require('pg');
const inps = process.argv.slice(2);
console.log(inps)

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT s.id , s.name as s_name, c.name
FROM students AS s inner join cohorts AS c
on s.cohort_id = c.id
where c.name like '${inps[0]}%'
LIMIT ${inps[1] || 5}
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.s_name} has an id of ${user.id} and was in the ${user.name} cohort`);
    console.log(user);
  })
}) 
.catch(err => console.error('query error', err.stack));
