SELECT day, 
COUNT(day) as number_of_assignments,
SUM(duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;