<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .container {
            text-align: center;
            background: #fff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            color: #007bff;
            font-size: 2rem;
        }
        .container form {
            margin-top: 20px;
        }
        .container input, .container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container button {
            padding: 10px 20px;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .container button:hover {
            background-color: #218838;
        }
        .container a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
        .container a:hover {
            text-decoration: underline;
        }
        .success-message {
            display: none;
            margin-top: 20px;
            color: #28a745;
            font-size: 1.2rem;
        }
    </style>
    <script>
        function handleSubmit(event) {
            event.preventDefault();
            document.querySelector('.success-message').style.display = 'block';
        }
    </script>
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
    <div class="container">
        <h1>Contact Us</h1>
        <p>If you have any questions, feel free to fill out the form below, and we will get back to you as soon as possible.</p>
        <form onsubmit="handleSubmit(event)">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Submit</button>
        </form>
        <p class="success-message">Your complaint has been successfully registered. Thank you!</p>
        <a href="index.jsp">Return to Homepage</a>
    </div>
</body>
</html>
