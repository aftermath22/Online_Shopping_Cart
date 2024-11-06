<%-- 
    Document   : usertask.jsp
    Created on : Sep 16, 2024, 1:34:34 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Portal</title>
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
            height: 100vh;
            text-align: center;
            transition: background-color 0.3s;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.2em;
            margin: 10px 0;
            transition: color 0.3s, transform 0.3s;
        }
        a:hover {
            color: #0056b3;
            transform: scale(1.05);
        }
        form {
            margin-top: 20px;
        }
        input[type="submit"] {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            font-size: 1em;
        }
        input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
        response.setHeader("Pragma", "no-cache"); // Http 1.0
        response.setHeader("Expires", "0"); // proxies
        if(session.getAttribute("username") == null || session.getAttribute("username").equals("Admin")){
            response.sendRedirect("userlogin.jsp");
        }
    %>

    <h1>Welcome <%= session.getAttribute("username") %>!</h1>
    
    <a href="shopitems.jsp">Shop Items</a>
    <a href="usercart.jsp">View Cart</a>

    <form action="UserLogout">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
