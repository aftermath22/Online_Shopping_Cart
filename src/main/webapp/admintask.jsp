<%-- 
    Document   : admintask
    Created on : Sep 18, 2024, 12:32:57 AM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Portal</title>
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
            text-align: center;
        }
        h1 {
            color: #343a40;
            margin-bottom: 30px;
            font-size: 2.5em;
        }
        a {
            display: inline-block;
            margin: 10px 0;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
        }
        form {
            margin-top: 20px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            background-color: #dc3545;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
        response.setHeader("Pragma", "no-cache"); //Http 1.0
        response.setHeader("Expires", "0"); //proxies
        if(session.getAttribute("username") == null) {
            response.sendRedirect("adminlogin.jsp");
        }
    %>
    
    <h1>Welcome ${username}!</h1>
    
    <a href="manageuser.jsp">Manage User</a>
    <a href="manageitems.jsp">Manage Items</a>
    
    <form action="AdminLogout" method="get">
        <input type="submit" value="Logout">
    </form>
    
</body>
</html>
