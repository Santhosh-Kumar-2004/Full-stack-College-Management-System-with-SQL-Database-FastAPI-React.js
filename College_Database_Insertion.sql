INSERT INTO Departments (DepartmentName, HOD)
VALUES 
    ('Computer Science', 'Dr. Alice Smith'),
    ('Mechanical Engineering', 'Dr. Robert Brown'),
    ('Electrical Engineering', 'Dr. Emily Davis'),
    ('Civil Engineering', 'Dr. Michael Johnson');

INSERT INTO Students (Name, DOB, Gender, Address, Contact, DepartmentID, EnrollmentYear)
VALUES 
    ('John Doe', '2002-05-12', 'Male', '123 Main St, NY', '1234567890', 1, 2021),
    ('Jane Smith', '2001-07-22', 'Female', '456 Elm St, NY', '9876543210', 2, 2020),
    ('Sam Wilson', '2003-02-15', 'Male', '789 Pine St, NY', '5551234567', 1, 2022),
    ('Emma Johnson', '2002-11-05', 'Female', '321 Oak St, NY', '4449876543', 3, 2021);

INSERT INTO Faculty (Name, Gender, Contact, DepartmentID, Expertise, JoiningDate)
VALUES 
    ('Dr. Alan Turing', 'Male', '1122334455', 1, 'Artificial Intelligence', '2015-08-15'),
    ('Dr. Grace Hopper', 'Female', '6677889900', 2, 'Thermodynamics', '2018-01-20'),
    ('Dr. Nikola Tesla', 'Male', '9988776655', 3, 'Electromagnetism', '2017-03-10'),
    ('Dr. Isambard Brunel', 'Male', '3344556677', 4, 'Structural Engineering', '2016-05-25');
    
INSERT INTO Courses (CourseName, DepartmentID, Credits, Semester)
VALUES 
    ('Data Structures', 1, 4, 3),
    ('Thermodynamics', 2, 3, 2),
    ('Electromagnetic Theory', 3, 3, 3),
    ('Structural Analysis', 4, 4, 5),
    ('Machine Learning', 1, 3, 6);

INSERT INTO Enrollment (StudentID, CourseID, Semester, Year)
VALUES 
    (1, 1, 3, 2021),
    (2, 2, 2, 2020),
    (3, 1, 3, 2022),
    (4, 3, 3, 2021),
    (1, 5, 6, 2023);

INSERT INTO Exams (CourseID, ExamDate, Type)
VALUES 
    (1, '2023-06-10', 'Midterm'),
    (1, '2023-12-15', 'Final'),
    (2, '2023-05-20', 'Midterm'),
    (3, '2023-11-05', 'Final'),
    (5, '2023-10-10', 'Midterm');

INSERT INTO Results (StudentID, ExamID, Grade)
VALUES 
    (1, 1, 'A'),
    (2, 3, 'B+'),
    (3, 1, 'A-'),
    (4, 4, 'B'),
    (1, 5, 'A+');

SELECT * FROM Departments;
SELECT * FROM Students;
SELECT * FROM Faculty;
SELECT * FROM Courses;
SELECT * FROM Enrollment;
SELECT * FROM Exams;
SELECT * FROM Results;



