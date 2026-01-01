```Overview

This project is a Java Servlet–based web application that enables users to register students into a relational database and view a list of all registered students.
It is designed to demonstrate fundamental concepts of Java web development, including HTTP request handling, form processing, JDBC database integration, and deployment using Apache Tomcat with Maven.

Functional Requirements
Student Registration

Endpoint: POST /register

Accepts the following input:

Student Name

Email

Year

Validates the submitted data

Persists the student record into the database

View All Students

Endpoint: GET /show_all

Retrieves all student records from the database

Displays them in an HTML table containing:

Name

Email

Year

Database Design

The application uses a relational database to persist student information.

Table Name: students

Column	Data Type	Constraints
id	INT	Primary Key, Auto Increment
name	VARCHAR(100)	NOT NULL
email	VARCHAR(100)	NOT NULL, UNIQUE
year	INT	NOT NULL
Technologies Used

Java (JDK 8 or higher)

Java Servlets

JDBC

Apache Tomcat 7

Maven

MySQL or PostgreSQL

HTML

Project Structure
java-record/
├── src/
│   └── main/
│       ├── java/
│       │   └── servlet/
│       │       ├── RegisterServlet.java
│       │       └── ShowAllStudentsServlet.java
│       └── webapp/
│           ├── register.jsp
│           ├── show_all.jsp
│           └── WEB-INF/
│               └── web.xml
├── pom.xml
└── README.md

How to Run the Project
Prerequisites

Ensure the following are installed:

Java JDK 8 or higher

Maven

MySQL or PostgreSQL

Git

Step 1: Clone the Repository
git clone https://github.com/Nboss21/java-record.git
cd java-record

Step 2: Configure the Database

Create the database and table:

CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    year INT NOT NULL
);


Update the JDBC connection details in the source code to match your database configuration.

Step 3: Run the Application

Start the application using Maven and Tomcat:

mvn tomcat7:run


Tomcat will start and deploy the application automatically.

Accessing the Application

Student Registration:
http://localhost:8080/java-record/register

View All Students:
http://localhost:8080/java-record/show_all

Verification Steps

Start the application using Maven.

Submit a student registration form.

Open the “View All Students” page.

Confirm the submitted student appears in the table.

Successful completion of these steps verifies:

POST request handling

Database persistence

GET request data retrieval and display```
