SELECT name, id, cohort_id FROM students
WHERE end_date IS null
ORDER BY cohort_id;


SELECT name, email, phone FROM students
WHERE github IS null
AND end_date IS NOT null;