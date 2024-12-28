<%-- 
    Document   : usercart
    Created on : Sep 18, 2024, 6:54:19 PM
    Author     : Keval
--%>

<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="demojstl.dao.Cartdao"%>
<%@page import="demojstl.bean.Cart"%>
<%@page import="demojstl.dao.Itemdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demojstl.bean.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${username}'s cart</title>
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
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        table {
            width: 100%;
            max-width: 800px;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
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
        input[type="number"] {
            width: 60px;
            padding: 5px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #c82333;
        }
        .empty-cart {
            color: #dc3545;
            font-size: 1.5em;
            margin-top: 20px;
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
    
    <h1>${username}'s CART</h1>
    
    <%
        ArrayList<Cart> items = new ArrayList<Cart>();
        Object ui = session.getAttribute("uid");
        if (ui != null) {
            items = Cartdao.getAllCartItems((int) ui);
        }
    %>
    
    <% if (items == null || items.isEmpty()) { %>
        <div class="empty-cart">Your Cart is Empty</div>
    <% } else {
            Collections.sort(items,new Comparator<Cart>(){
            @Override
            public int compare(Cart o1, Cart o2) {
                return Integer.compare(o1.getUid(), o2.getUid());
            }
            
            });
%>
        <table>
            <tr>
                <td>Cart Id</td>
                <td>Item Id</td>
                <td>User Id</td>
                <td>Item Name</td>
                <td>Total Price</td>
                <td>Quantity</td>
                <td>Remove from Cart</td>
            </tr>
            <% 
            for (Cart r : items) {
                int itid = r.getItid();
                int max_quant = r.getQuantity();
            %>
            <tr>
                <td><%= r.getCid() %></td>
                <td><%= itid %></td>
                <td><%= r.getUid() %></td>
                <td><%= r.getItname() %></td>
                <td><%= r.getPrice() %></td>
                <td><%= max_quant %></td>
                <td>
                    <form action="RemoveItem">
                        <input type="hidden" name="itid" value="<%= itid %>">
                        <input type="number" name="quant" min="1" max="<%= max_quant %>" required>
                        <input type="submit" value="Remove From Cart" />
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        
        <br/><br/>
        Grand Total is: 
        <%
            if (ui != null) {
                ArrayList<Cart> cs = Cartdao.getAllCartItems((int) ui);
                long tot = 0;
                if (cs != null) {
                    for (Cart t : cs) {
                        tot += t.getPrice();
                    }
                }
                out.println(tot);
            }
        %>
        
        
        <br/><br/>
        <form action="Checkout">
            <input type="submit" value="Checkout">
        </form>
    <% } %>
    
    
    <br/><br/>
    <a href="shopitems.jsp">Buy Items</a>
    
    <br/><br/>
    <a href="usertask.jsp">Back to User Portal</a>
    
    <br/><br/>
    <form action="UserLogout">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
