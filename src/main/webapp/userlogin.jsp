<%-- 
    Document   : register
    Created on : Sep 16, 2024, 1:31:12 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative; /* Added for positioning */
            transition: background-color 0.3s;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            max-width: 400px;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        td {
            padding: 10px;
            text-align: left;
        }
        input[type="number"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            transition: border-color 0.3s;
        }
        input[type="number"]:focus,
        input[type="password"]:focus {
            border-color: #007BFF;
            outline: none;
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
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9em;
        }
        .login-link a {
            color: #007BFF;
            text-decoration: none;
            transition: color 0.3s;
        }
        .login-link a:hover {
            color: #0056b3;
        }
        /* Icon Styles */
        .home-icon {
            position: absolute;
            top: 20px;
            left: 20px;
            font-size: 24px;
            color: #007BFF;
            text-decoration: none;
            transition: color 0.3s;
        }
        .home-icon:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <a href="index.jsp" class="home-icon"><i class="fas fa-home"></i></a> <!-- Home icon link -->
    
    <form action="UserLogin" method="get">
        <h1>User Login</h1>
        <table align="center">
            <tr>
                <td>Enter the User-id</td>
                <td><input type="number" name="uid" required></td>
            </tr>
            <tr>
                <td>Enter the Password</td>
                <td><input type="password" name="pass" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Login"></td>
            </tr>
        </table>
        
        <div class="login-link">
            Not Registered? <a href="usereg.jsp">Register here</a>
        </div>
    </form>
</body>
</html>
