<%-- 
    Document   : publicshoplist
    Created on : Sep 19, 2024, 11:10:10 PM
    Author     : Keval
--%>

<%@page import="demojstl.dao.Itemdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demojstl.bean.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shopping List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            transition: background-color 0.3s;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
            font-size: 2em; /* Reduced size */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            max-width: 800px;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px; /* Reduced padding */
            text-align: center;
            border-bottom: 1px solid #dee2e6;
            font-size: 0.9em; /* Smaller text size for table cells */
        }
        th {
            background-color: #007BFF;
            color: white;
            font-size: 1em; /* Reduced size */
        }
        tr:hover {
            background-color: #e9ecef;
        }
        h3 {
            margin-top: 20px;
            color: #495057;
            font-size: 1.3em; /* Reduced size */
        }
        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s, transform 0.3s;
        }
        a:hover {
            color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h1>Shop Items!</h1>

    <%
        ArrayList<Item> items = new ArrayList<Item>();
        Itemdao itd = new Itemdao();
        items = itd.getAllItems();
    %>

    <table>
        <thead>
            <tr>
                <th>Item Id</th>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <% for (Item rowObj : items) { %>
            <tr>
                <td><%= rowObj.getItid() %></td>
                <td><%= rowObj.getItname() %></td>
                <td><%= rowObj.getQuantity() %></td>
                <td><%= rowObj.getPrice() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>

    <h3>Want to Buy? Then</h3>
    <a href="userlogin.jsp">Register/Login as User</a>
</body>
</html>
