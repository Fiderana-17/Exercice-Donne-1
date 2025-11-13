SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN belong b ON e.id = b.employee_id
WHERE b.team_id IS NULL;


SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN take t ON e.id = t.employee_id
WHERE t.leave_id IS NULL;

