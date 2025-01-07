import React, { useEffect, useState } from "react";
import axios from "axios";

function Student() {
  const [students, setStudents] = useState([]);

  useEffect(() => {
    // Fetch data from FastAPI backend
    axios
      .get("http://localhost:8000/students")  // API endpoint for fetching students data
      .then((response) => setStudents(response.data))  // Store data in state
      .catch((error) => console.error("Error fetching students:", error));
  }, []);

  return (
    <div>
      <h1>Student List</h1>
      {students.length > 0 ? (
        students.map((student) => (
          <div key={student.StudentID}>  {/* Assign unique key using student.id */}
            <h2>Student ID: {student.StudentID} -- {student.Name}</h2>  {/* Render student's name */}

            <p>{student.department}</p>  {/* Render student's department */}
          </div>
        ))
      ) : (
        <p>Loading students...</p>
      )}
    </div>
  );
}

export default Student;
