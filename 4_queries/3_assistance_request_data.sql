SELECT teachers.name as teacher_name, students.name as student_name, assignments.name as assignment, (completed_at - created_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;