from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
import models  # This is where your database models are defined
from database import engine, get_db  # Assuming you have a get_db function to connect to your database
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI()

# Allow CORS for your frontend
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allow React app's origin
    allow_credentials=True,
    allow_methods=["*"],  # Allow all methods (GET, POST, etc.)
    allow_headers=["*"],  # Allow all headers
)

# Create database tables
models.Base.metadata.create_all(bind=engine)

# Pydantic model for the Student input
class StudentCreate(BaseModel):
    StudentID: int
    Name: str

# Define an endpoint to fetch students (replace with your actual table name and model)
@app.get("/students")
def get_students(db: Session = Depends(get_db)):
    students = db.query(models.Student).all()  # Fetch all students
    return students

@app.post("/students/")
def create_student(student: StudentCreate, db: Session = Depends(get_db)):
    # Create a new student object
    new_student = models.Student(Name=student.name, StudentID=student.StudentID)
    db.add(new_student)  # Add the new student to the session
    db.commit()  # Commit the transaction
    db.refresh(new_student)  # Refresh the object to get its id (auto-generated)
    return new_student

