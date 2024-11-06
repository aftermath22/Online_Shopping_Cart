<%-- 
    Document   : manageuser
    Created on : Sep 19, 2024, 12:16:23 AM
    Author     : Keval
--%>

<%@page import="demojstl.dao.Userdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demojstl.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manage User</title>
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
        table {
            width: 80%;
            border-collapse: collapse;
            margin-bottom: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #dee2e6;
        }
        th {
            background-color: #007BFF;
            color: white;
            font-size: 1.2em;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        input[type="submit"] {
            padding: 8px 12px;
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
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            transition: color 0.3s;
        }
        a:hover {
            color: #0056b3;
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
    
    <h1>Manage Users</h1>
    
    <%
        ArrayList<User> users = Userdao.getAllUsers();
    %>
    
    <table>
        <tr>
            <th>User Id</th>
            <th>User Name</th>
            <th>Remove User</th>
        </tr>
        <% for (User rowObj : users) { %>
        <tr>
            <td><%= rowObj.getUid() %></td>
            <td><%= rowObj.getUname() %></td>
            <td>
                <form action="RemoveUser">
                    <input type="hidden" name="uid" value="<%= rowObj.getUid() %>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        <% } %>
    </table>
    
    <form action="AdminLogout" method="get">
        <input type="submit" value="Logout">
    </form>

    <a href="admintask.jsp">Back To Admin Portal</a>
    
</body>
</html>
