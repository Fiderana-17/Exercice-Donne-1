SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN belong b ON e.id = b.employee_id
WHERE b.team_id IS NULL;
