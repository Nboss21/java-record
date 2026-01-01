📌 Project Description

This project is a simple Java Servlet–based web application that allows users to register students into a database and view all registered students in a tabular format.

The application demonstrates core Java EE / Jakarta EE concepts, including:

Java Servlets

HTTP GET and POST handling

Form data validation

Database persistence using JDBC

MVC-style separation (Servlets + Views)

Deployment using Apache Tomcat via Maven

The project fulfills the following requirements:

Register students using a web form

Persist student data in a relational database

Retrieve and display all students in an HTML table

🧱 Application Features
1️⃣ Student Registration

Endpoint: POST /register

Input Fields:

Student Name

Email

Year

Behavior:

Receives form data via HTTP POST

Validates inputs (non-null, correct format)

Inserts a new student record into the database

2️⃣ View All Students

Endpoint: GET /show_all

Behavior:

Connects to the database

Retrieves all student records

Displays them in an HTML table with:

Name

Email

Year

🗄️ Database Design
Table: students
Column Name	Data Type	Constraints
id	INT	Primary Key, Auto Increment
name	VARCHAR(100)	NOT NULL
email	VARCHAR(100)	NOT NULL, UNIQUE
year	INT	NOT NULL
🛠️ Technologies Used

Java (JDK 8+)

Java Servlets

JDBC

Apache Tomcat 7

Maven

HTML/CSS

MySQL / PostgreSQL (any JDBC-compatible DB)

⚙️ How to Run the Project
1️⃣ Prerequisites

Make sure you have installed:

Java JDK 8 or higher

Maven

MySQL or PostgreSQL

Git

2️⃣ Clone the Repository
git clone https://github.com/Nboss21/java-record.git
cd java-record

3️⃣ Configure the Database

Create the database and table:

CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    year INT NOT NULL
);


Update the JDBC connection details inside the servlet or database utility class:

String url = "jdbc:mysql://localhost:3306/student_db";
String username = "root";
String password = "your_password";

4️⃣ Run the Application (Tomcat via Maven)
mvn tomcat7:run


Maven will:

Download dependencies

Start an embedded Tomcat server

Deploy the application automatically

5️⃣ Access the Application

Open your browser and visit:

Student Registration Form

http://localhost:8080/java-record/register


View All Students

http://localhost:8080/java-record/show_all

✅ Expected Output
Registration Page

User submits Name, Email, and Year

Student is saved to the database

Show All Students Page

Displays an HTML table listing:

Name

Email

Year
