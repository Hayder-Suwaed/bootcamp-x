SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;


SELECT students.name as student_name, AVG(assignment_submissions.duration) as average_duration
FROM students
JOIN assignment_submissions ON student_id = students.id 
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY average_duration DESC;
