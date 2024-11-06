<%-- 
    Document   : shopitems
    Created on : Sep 18, 2024, 6:54:02 PM
    Author     : Keval
--%>

<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collections"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="demojstl.dao.Itemdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demojstl.bean.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shop Items</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f8f9fa;
            text-align: center;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #dee2e6;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        .no-items {
            color: #dc3545;
            font-size: 18px;
            margin-top: 20px;
        }
        a {
            display: inline-block;
            margin: 15px 0;
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
        }
        form {
            display: inline;
        }
    </style>
</head>
<body>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
    response.setHeader("Pragma", "no-cache"); //Http 1.0
    response.setHeader("Expires", "0"); //proxies
    if(session.getAttribute("username")==null || session.getAttribute("username").equals("Admin")){
        response.sendRedirect("userlogin.jsp");
    }
%>

<h1>Shop Items!</h1>

<%
    ArrayList<Item> items = new ArrayList<Item>();
    Itemdao itd = new Itemdao();
    items = itd.getAllItems();
    int max_quant = 0;
    int itid = -1;

    if (items==null) {
%>
    <div class="no-items">No Items Present</div>
<%
    } else {
             Collections.sort(items,new Comparator<Item>(){
            @Override
            public int compare(Item o1, Item o2) {
                return Integer.compare(o1.getItid(), o2.getItid());
            }
            
            });
%>
    <table>
        <tr>
            <th>Item Id</th>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Add Items</th>
        </tr>
        <% for (Item rowObj : items) {
            itid = rowObj.getItid();
            max_quant = rowObj.getQuantity();
%>
        <tr>
            <td><%= itid %></td>
            <td><%= rowObj.getItname() %></td>
            <td><%= max_quant %></td>
            <td><%= rowObj.getPrice() %></td>
            <td>
                <form action="BuyItem">
                    <input type="hidden" name="itid" value="<%= itid %>">
                    <input type="number" name="quant" min="1" max="<%= max_quant %>" required>
                    <input type="submit" value="Add To Cart" />
                </form>
            </td>
        </tr>
        <% } %>
    </table>
<%
    }
%>

<br/><br/>
<a href="usercart.jsp">View Cart</a>
<br/><br/>
<a href="usertask.jsp">Back to User Portal</a>
<br/><br/>
<form action="UserLogout">
    <input type="submit" value="Logout">
</form>

</body>
</html>
