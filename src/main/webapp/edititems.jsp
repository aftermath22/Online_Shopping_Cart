<%-- 
    Document   : edititems
    Created on : Sep 19, 2024, 9:24:20 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Item</title>
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
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
        response.setHeader("Pragma", "no-cache"); //Http 1.0
        response.setHeader("Expires", "0"); //proxies
        if(session.getAttribute("username") == null || !session.getAttribute("username").equals("Admin")) {
            response.sendRedirect("adminlogin.jsp");
        }
    %>
    
    <h1>Edit Items</h1>
    
    <form action="AdminEditItems">
        <input type="hidden" name="itid" value="<%= request.getParameter("itid") %>">
        Edit Item Name: <input type="text" name="itname" required> <br/> <br/>
        Edit Item Price: <input type="number" name="itprice" required> <br/> <br/>
        <input type="submit" value="Make Changes">
    </form>
    
    <a href="manageitems.jsp">Back to Manage Items</a>
    <br/><br/>
    <form action="AdminLogout" method="get">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
