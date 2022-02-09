SELECT assignments.id, day, chapter, assignments.name, 
count(assignment_submissions.assignment_id) as total_requests
FROM assignment_submissions
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id;
ORDER BY total_requests DESC;