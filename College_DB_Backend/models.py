from sqlalchemy import Column, Integer, String, ForeignKey, Date, Enum
from sqlalchemy.orm import relationship
from database import Base

class Department(Base):
    __tablename__ = "Departments"
    DepartmentID = Column(Integer, primary_key=True, index=True)
    DepartmentName = Column(String(50))
    HOD = Column(String(50))

class Student(Base):
    __tablename__ = "Students"
    StudentID = Column(Integer, primary_key=True, index=True)
    Name = Column(String(50))
    DOB = Column(Date)
    Gender = Column(Enum("Male", "Female", "Other"))
    Address = Column(String)
    Contact = Column(String(15))
    DepartmentID = Column(Integer, ForeignKey("Departments.DepartmentID"))
    EnrollmentYear = Column(Integer)
    department = relationship("Department")
