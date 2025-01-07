import React, { useState } from "react";
import axios from "axios";

function AddStudent() {
  const [name, setName] = useState("");
  const [department, setDepartment] = useState("");
  const [message, setMessage] = useState("");

  // Handle form submission
  const handleSubmit = (e) => {
    e.preventDefault();
    
    // Create new student object
    const newStudent = { name, department };

    // Send POST request to FastAPI backend
    axios
      .post("http://127.0.0.1:8000/students/", newStudent)
      .then((response) => {
        setMessage("Student added successfully!");
        setName("");  // Clear the form after success
        setDepartment("");
      })
      .catch((error) => {
        setMessage("Error adding student.");
        console.error("Error adding student:", error);
      });
  };

  return (
    <div>
      <h1>Add New Student</h1>
      <form onSubmit={handleSubmit}>
        <div>
          <label>StudentID:</label>
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Name:</label>
          <input
            type="text"
            value={department}
            onChange={(e) => setDepartment(e.target.value)}
            required
          />
        </div>
        <button type="submit">Add Student</button>
      </form>
      {message && <p>{message}</p>}
    </div>
  );
}

export default AddStudent;
