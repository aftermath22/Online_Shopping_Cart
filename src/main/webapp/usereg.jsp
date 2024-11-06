<%-- 
    Document   : userlogin
    Created on : Sep 16, 2024, 1:42:44 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 50px;
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            position: relative; /* Enable positioning for the home link */
        }
        h1 {
            color: #343a40;
            margin-bottom: 30px;
            font-size: 2.5em;
        }
        form {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        input[type="number"],
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
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
    </style>
</head>
<body>
    <a href="index.jsp" class="home-icon"><i class="fas fa-home"></i></a> <!-- Home icon -->
    <h1>User Register</h1>
    <form action="UserRegister" method="get">
        Set User Id : <input type="number" name="uid" required> <br/>
        Set User Name : <input type="text" name="uname" required> <br/>
        Set Password : <input type="password" name="pass" required> <br/>
        <input type="submit" value="Register">
    </form>
</body>
</html>
