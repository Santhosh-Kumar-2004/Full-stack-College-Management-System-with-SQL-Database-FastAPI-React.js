# 1. View All Students with Their Department Details
# Goal: List all students along with their department name and enrollment year.
SELECT 
    Students.StudentID, 
    Students.Name AS StudentName, 
    Departments.DepartmentName, 
    Students.EnrollmentYear
FROM 
    Students
INNER JOIN 
    Departments ON Students.DepartmentID = Departments.DepartmentID;
    
# 2. List All Faculty Members with Their Expertise and Department
# Goal: Show all faculty members, their expertise, and the department they work in.
SELECT 
    Faculty.FacultyID, 
    Faculty.Name AS FacultyName, 
    Faculty.Expertise, 
    Departments.DepartmentName
FROM 
    Faculty
INNER JOIN 
    Departments ON Faculty.DepartmentID = Departments.DepartmentID;
    
# 3. Show All Courses and the Department They Belong To
# Goal: Display all courses along with their department, credits, and semester.
SELECT 
    Courses.CourseID, 
    Courses.CourseName, 
    Departments.DepartmentName, 
    Courses.Credits, 
    Courses.Semester
FROM 
    Courses
INNER JOIN 
    Departments ON Courses.DepartmentID = Departments.DepartmentID;
    
# 4. List Students Enrolled in a Specific Course
# Goal: Find all students enrolled in the course "Data Structures."
SELECT 
    Enrollment.EnrollmentID, 
    Students.Name AS StudentName, 
    Courses.CourseName, 
    Enrollment.Semester, 
    Enrollment.Year
FROM 
    Enrollment
INNER JOIN 
    Students ON Enrollment.StudentID = Students.StudentID
INNER JOIN 
    Courses ON Enrollment.CourseID = Courses.CourseID
WHERE 
    Courses.CourseName = 'Data Structures';
    
# 5. Get Exam Details for a Specific Course
# Goal: Get exam details for the course "Machine Learning."
SELECT 
    Exams.ExamID, 
    Courses.CourseName, 
    Exams.ExamDate, 
    Exams.Type
FROM 
    Exams
INNER JOIN 
    Courses ON Exams.CourseID = Courses.CourseID
WHERE 
    Courses.CourseName = 'Machine Learning';
    
# 6. Count Students in Each Department
# Goal: Count how many students are in each department.
SELECT 
    Departments.DepartmentName, 
    COUNT(Students.StudentID) AS TotalStudents
FROM 
    Students
INNER JOIN 
    Departments ON Students.DepartmentID = Departments.DepartmentID
GROUP BY 
    Departments.DepartmentName;





