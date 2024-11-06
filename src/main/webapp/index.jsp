<%-- 
    Document   : index
    Created on : Sep 16, 2024, 1:27:08 PM
    Author     : Keval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0; /* Remove padding */
            height: 100vh; /* Full height */
            overflow: hidden; /* Prevent scrolling */
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('index.jpg'); /* Background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }
        .container {
            max-width: 400px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            transform: translateY(-20px);
            animation: slideIn 0.5s forwards;
        }
        @keyframes slideIn {
            to {
                transform: translateY(0);
            }
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }
        .shopit-heading {
            font-size: 36px;
            font-weight: bold;
            color: #007BFF;
            text-shadow: 2px 2px 8px rgba(0, 123, 255, 0.6);
            margin-bottom: 20px;
        }
        a {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 15px 0;
            padding: 15px;
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
            font-weight: bold;
            opacity: 0;
            animation: fadeInLinks 0.5s forwards;
        }
        @keyframes fadeInLinks {
            to {
                opacity: 1;
            }
        }
        a:nth-child(1) {
            animation-delay: 0.5s;
        }
        a:nth-child(2) {
            animation-delay: 0.7s;
        }
        a:nth-child(3) {
            animation-delay: 0.9s;
        }
        a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
        .icon {
            margin-right: 10px;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>

<body>
    <div class="container" id="container">
        <h1 class="shopit-heading">ShopIT</h1> <!-- Added ShopIT heading -->
        <h2>Welcome</h2>
        <a href="userlogin.jsp" id="user-link"><i class="fas fa-user-plus icon"></i>Register/Login as User</a>
        <a href="adminlogin.jsp" id="admin-link"><i class="fas fa-user-shield icon"></i>Login as Admin</a>
        <a href="publicshoplist.jsp" id="shop-link"><i class="fas fa-store icon"></i>View Shop Items</a>
        <div class="footer">
            &copy; 2024 ShopIT
        </div>
    </div>
</body>
</html>
