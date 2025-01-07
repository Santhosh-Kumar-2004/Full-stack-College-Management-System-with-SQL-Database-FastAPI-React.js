import React, { useEffect, useState } from "react";
import axios from "axios";

function Home() {
  const [students, setStudents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Fetch data from FastAPI backend
    axios
      .get("http://127.0.0.1:8000/students") // FastAPI endpoint
      .then((response) => {
        setStudents(response.data); // Store the student data in state
        setLoading(false); // Stop loading
      })
      .catch((error) => {
        setError("Error fetching data"); // Handle errors
        setLoading(false); // Stop loading
      });
  }, []); // Empty dependency array to run once on mount

  if (loading) return <div>Loading...</div>; // Show loading indicator
  if (error) return <div>{error}</div>; // Show error if any

  return (
    <div>
      <h1>Student List</h1>
      <ul>
        {students.map((student) => (
          <li key={student.StudentID || student.Name}> {/* Use a combination of student.id or student.name if id is not unique */}
            <h2>{student.Name}</h2>
            <p>{student.department}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default Home;
