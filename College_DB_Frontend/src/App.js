import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";  // Assuming Home.js is your homepage
import Student from "./pages/Student";  // Import the new Student component
import Cart from "./pages/Cart";  // Same as above
import AddStudent from "./pages/AddStudents";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />  {/* Home page */}
        <Route path="/students" element={<Student />} />  {/* New route for students */}
        <Route path="/add-student" element={<AddStudent />} />  {/* New route for adding students */}
        <Route path="/cart" element={<Cart />} />
      </Routes>
    </Router>
  );
}

export default App;
