<%-- 
    Document   : adminlogin
    Created on : Sep 16, 2024, 1:54:12 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: relative;
        }
        .home-icon {
            position: absolute;
            top: 20px;
            left: 20px;
            font-size: 24px;
            color: #007BFF;
            text-decoration: none;
        }
        .home-icon:hover {
            color: #0056b3;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            width: 300px;
            text-align: left;
        }
        label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="number"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Home icon with link to index.jsp -->
    <a href="index.jsp" class="home-icon">
        <i class="fas fa-home"></i>
    </a>
    
    <h1>Admin Login</h1>
    <form action="AdminLogin" method="get">
        <label for="uid">Enter Admin Id:</label>
        <input type="number" id="uid" name="uid" required>
        
        <label for="pass">Enter Password:</label>
        <input type="password" id="pass" name="pass" required>
        
        <input type="submit" value="Login">
    </form>
</body>
</html>
