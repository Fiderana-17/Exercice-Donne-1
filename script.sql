SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN belong b ON e.id = b.employee_id
WHERE b.team_id IS NULL;


SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN take t ON e.id = t.employee_id
WHERE t.leave_id IS NULL;

SELECT l.id AS leave_id, l.start_date, l.end_date, e.first_name, e.last_name, t.name AS team_name
FROM Leave l
JOIN take tk ON l.id = tk.leave_id
JOIN Employee e ON tk.employee_id = e.id
LEFT JOIN belong b ON e.id = b.employee_id
LEFT JOIN Team t ON b.team_id = t.id;
