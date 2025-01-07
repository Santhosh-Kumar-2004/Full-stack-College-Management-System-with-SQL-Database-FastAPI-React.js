# College Management System with SQL Database

This is a full-stack web application built using **FastAPI** for the backend and **React.js** for the frontend. The system is integrated with an **SQL database (MySQL)** for managing student records, allowing users to add and retrieve student data seamlessly.

## Features

- **Backend**: FastAPI-powered RESTful API to manage student data, connected to a MySQL database.
- **Frontend**: React.js frontend to display student records and allow adding new students.
- **Database**: MySQL used as the relational database for storing and managing student data.
- **CORS**: Configured for frontend-backend communication between `localhost:3000` and `localhost:8000`.

## Technologies Used

- **Frontend**: React.js
- **Backend**: FastAPI
- **Database**: MySQL (with SQLAlchemy and PyMySQL for ORM)
- **HTTP Client**: Axios (for making HTTP requests from React)
- **ORM**: SQLAlchemy for database interaction with the MySQL database

## Setup Instructions

### Prerequisites

- Node.js and npm
- Python 3.x
- MySQL database running locally
- SQLAlchemy and PyMySQL libraries for Python

### Backend Setup (FastAPI)

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/college-management-system.git
    cd college-management-system
    ```

2. Install Python dependencies:
    ```bash
    pip install -r requirements.txt
    ```

3. Create a MySQL database called `CollegeDB` (or any name you prefer).

4. Update the `DATABASE_URL` in `database.py` with your MySQL credentials.

5. Run the FastAPI server:
    ```bash
    uvicorn main:app --reload
    ```

   The FastAPI backend will run on `http://127.0.0.1:8000`.

### Frontend Setup (React)

1. In a new terminal window, navigate to the `frontend` directory (or wherever your React app is located).

2. Install Node.js dependencies:
    ```bash
    npm install
    ```

3. Start the React development server:
    ```bash
    npm start
    ```

   The React frontend will run on `http://localhost:3000`.

### API Endpoints

- **GET** `/students/` - Fetch all student records from the database.
- **POST** `/students/` - Add a new student (requires `name`, `email`, and `age`).

### Frontend

- View students on the homepage.
- Add a new student via a form.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Thanks to [FastAPI](https://fastapi.tiangolo.com/) for providing an easy-to-use backend framework.
- Thanks to [React.js](https://reactjs.org/) for providing an efficient way to build interactive UIs.
- Thanks to [MySQL](https://www.mysql.com/) for reliable database management.

---

Enjoy building and happy coding!
