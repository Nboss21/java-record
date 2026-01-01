<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="email"], input[type="number"] { width: 100%; padding: 8px; box-sizing: border-box; }
        button { padding: 10px 15px; background-color: #28a745; color: white; border: none; cursor: pointer; }
        button:hover { background-color: #218838; }
        a { text-decoration: none; color: #007bff; }
    </style>
</head>
<body>
    <h2>Student Registration Form</h2>
    <form action="register" method="post">
        <div class="form-group">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="year">Year:</label>
            <input type="number" id="year" name="year" required min="1900" max="2100">
        </div>
        <button type="submit">Register</button>
    </form>
    <br>
    <a href="show_all">View All Students</a>
</body>
</html>
