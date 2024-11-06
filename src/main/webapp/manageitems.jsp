<%-- 
    Document   : manageitems
    Created on : Sep 19, 2024, 12:16:38 AM
    Author     : Keval
--%>

<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demojstl.dao.Itemdao"%>
<%@page import="demojstl.bean.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manage Items</title>
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
        input[type="submit"], a {
            padding: 8px 12px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            color: white;
        }
        input[type="submit"] {
            background-color: #007BFF;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            background-color: #28a745;
            color: white;
        }
        a:hover {
            background-color: #218838;
        }
        .no-items {
            color: #dc3545; /* Red color for the message */
            font-size: 1.2em;
            margin-top: 20px;
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
    
    <h1>Manage Items</h1>
    
    <%
        ArrayList<Item> items = Itemdao.getAllItems();
    %>
    
    <table>
        <tr>
            <th>Item Id</th>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Add Items</th>
            <th>Remove Items</th>
            <th>Edit Items</th>
        </tr>
        <% if (items==null) { %>
            <tr>
                <td colspan="7" class="no-items">No Items Present</td>
            </tr>
        <% } else { 
            Collections.sort(items,new Comparator<Item>(){
            @Override
            public int compare(Item o1, Item o2) {
                return Integer.compare(o1.getItid(), o2.getItid());
            }
            
            });
            for (Item rowObj : items) { %>
                <tr>
                    <td><%= rowObj.getItid() %></td>
                    <td><%= rowObj.getItname() %></td>
                    <td><%= rowObj.getQuantity() %></td>
                    <td><%= rowObj.getPrice() %></td>
                    <td>
                        <form action="AdminAddItem">
                            <input type="hidden" name="itid" value="<%= rowObj.getItid() %>">
                            <input type="number" name="quant" min="1" required>
                            <input type="submit" value="Add">
                        </form>
                    </td>
                    <td>
                        <form action="AdminRemoveItem">
                            <input type="hidden" name="itid" value="<%= rowObj.getItid() %>">
                            <input type="number" name="quant" min="1" max="<%= rowObj.getQuantity() %>" required>
                            <input type="submit" value="Remove">
                        </form>
                    </td>
                    <td>
                        <a href="edititems.jsp?itid=<%= URLEncoder.encode(Integer.toString(rowObj.getItid()), "UTF-8") %>">Edit</a>
                    </td>
                </tr>
            <% } 
        } %>
    </table>
    
    <a href="newitems.jsp">Add New Items</a>
    
    <form action="AdminLogout" method="get">
        <input type="submit" value="Logout">
    </form>
    
    <a href="admintask.jsp">Back To Admin Portal</a>
    
</body>
</html>
