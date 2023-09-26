CREATE TABLE Employees (
    EmployeeCode int PRIMARY KEY,
    FirstName varchar(20),
    LastName varchar(20),
    HireDate date,
    Salary int,
    DepartmentCode int,
    FOREIGN KEY (DepartmentCode) REFERENCES Departments(DepartmentCode)
);

SELECT * FROM Employees;
SELECT * FROM Departments;

CREATE TABLE Departments (
    DepartmentCode int PRIMARY KEY,
    DepartmentName varchar(20),
    DepartmentLocation varchar(30)
);

INSERT INTO Departments (DepartmentCode, DepartmentName, DepartmentLocation)
VALUES
    (1, 'HR', 'New York'),
    (2, 'Finance', 'London'),
    (3, 'IT', 'San Francisco');

INSERT INTO Employees (EmployeeCode, FirstName, LastName, HireDate, Salary, DepartmentCode)
VALUES
    (1001, 'John', 'Doe', '2022-01-15', 50000, 1),
    (1002, 'Jane', 'Smith', '2021-05-20', 60000, 2),
    (1003, 'Michael', 'Johnson', '2023-03-10', 55000, 1),
    (1004, 'Emily', 'Brown', '2022-11-02', 48000, 3),
    (1005, 'David', 'Lee', '2023-07-12', 52000, 3);

SELECT d.DepartmentName
FROM Departments AS d
LEFT JOIN Employees AS e ON d.DepartmentCode = e.DepartmentCode
GROUP BY d.DepartmentCode, d.DepartmentName
HAVING COUNT(e.EmployeeCode) = 0;

SELECT
    d.DepartmentCode,
    d.DepartmentName
FROM
    Departments d
LEFT JOIN
    Employees e ON d.DepartmentCode = e.DepartmentCode
WHERE
    e.EmployeeCode IS NULL;
	




