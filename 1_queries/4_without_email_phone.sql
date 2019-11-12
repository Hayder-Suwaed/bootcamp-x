SELECT name, email, id, cohort_id, phone FROM students
WHERE email  NOT like '%gmail.com'
and phone IS null;



