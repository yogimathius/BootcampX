SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
	JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY AVG
(assignment_submissions.duration) DESC