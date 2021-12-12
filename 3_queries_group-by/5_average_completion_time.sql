SELECT students.name as student_name, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL
ORDER BY average_assignment_duration DESC;