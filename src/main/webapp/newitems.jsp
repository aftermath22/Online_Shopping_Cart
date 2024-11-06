<%-- 
    Document   : newitems
    Created on : Sep 19, 2024, 10:46:20 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Items</title>
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
            position: relative; /* Added for positioning the link */
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
            align-items: stretch;
        }
        input[type="number"], input[type="text"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box; /* Ensures padding does not affect overall width */
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px; /* Adds space above the button */
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: inline-block;
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            position: absolute; /* Positioning it in the upper right corner */
            top: 20px;
            right: 20px;
        }
        a:hover {
            background-color: #218838;
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
    
    <h1>Add New Items</h1>
    <form action="AdminAddItems">
        Enter Item Id: <input type="number" name="itid" required> <br/>
        Enter Item Name: <input type="text" name="itname" required> <br/>
        Enter Quantity: <input type="number" name="quantity" required> <br/>
        Enter Price: <input type="number" name="itprice" required> <br/>
        <input type="submit" value="Add Item"> 
    </form>
    
    <a href="manageitems.jsp">Back to Manage Items</a>
    
    <form action="AdminLogout" method="get">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
