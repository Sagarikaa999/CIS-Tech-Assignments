
CREATE TABLE Employees (
    employee_id int,
    employee_name varchar(255),
    manager_id int
    );
    
INSERT INTO Employees (employee_id, employee_name, manager_id)
VALUES
  (001, 'Aneetha', 001),
  (003, 'Anvesh', 003),
  (002, 'Karan', 001),
  (004, 'Thomas', 002),
  (007, 'Rakul', 004),
  (008, 'Pallavi', 003),
  (009, 'Berry', 008),
  (077, 'Jathin', 001);
  
SELECT e1.employee_id
FROM Employees e1
JOIN Employees e2 ON e1.manager_id = e2.employee_id
JOIN Employees e3 ON e2.manager_id = e3.employee_id
WHERE e3.manager_id = 1 AND e1.employee_id<>1;
