<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="homestyle.css">
        <title>Online Shopping Application</title>
    </head>
    <body>
        <div class="splash">
            <h1 class="fade-in">Welcome To Our Website!</h1>
            <div class="spinner"></div>
        </div>
        <!-- Headings for the Navigation Bar -->
        <header>
            <ul>
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="#footer">About Us</a></li>
                <li><a href="Catalog.jsp">Products</a></li>
                <li><a href="#footer">Contact Us</a></li>
                <div class="align-right">
                    <a href="login.jsp" target="_parent"><button class="login">Log In</button></a>
                    <a href="register.jsp" target="_parent"><button class="signup">Sign Up</button></a>
                </div>
            </ul>
        </header>

        <a href="user.html"><img src="Images/newLogo.jpg" class="logo" style=" position: absolute; left: 30px; top: 6%; height: 45px; width: 45px;"></a>

        <pre>
            <img src="Images/shoe.jpg" alt="shoe" style="position: absolute; top:20%; left:10px; height: 500px; width: 350px;">
            <img src="Images/time-infinite-dial-watch.jpg" alt="watch" style="position: absolute; top:20%; left: 25%; height: 250px; width: 500px;">
            <img src="Images/MR-Future-Products-2020-2.png" alt="Computer" style="position: absolute; top:59%; left: 25%; height: 400px; width: 600px;">
            <img src="Images/Sunglasses.jpg" alt="Sunglasses" style="position: absolute; top:20%; left: 63%; height: 490px; width: 455px;">
        </pre>

        <ul class='circles'>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <!-- JavaScript file for the required functions -->
        <script src="funct.js"></script>
    </body>
</html>