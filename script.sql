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


SELECT contract_type, COUNT(id) AS number_of_employees
FROM employee 
GROUP BY contract_type;


SELECT COUNT(DISTINCT e.id)
FROM employee e
JOIN "leave" l ON e.id = l.employee_id
WHERE l.start_date <= CURRENT_DATE AND l.end_date >= CURRENT_DATE;


LEFT JOIN team t ON t.id = e.team_id
JOIN "leave" l on e.id = l.employee_id
WHERE l.start_date <= CURRENT_DATE and l.end_date >= CURRENT_DATE;