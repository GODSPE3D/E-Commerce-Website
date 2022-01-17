<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="WelcStyle.css">
        <title>Online Shopping Application</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <!-- Screen that will display while the website is loading -->
        <div class="splash">
            <h1 class="fade-in">Please Wait....Logging You In!</h1>
            <div class="spinner"></div>
        </div>
        <!-- Headings for the Navigation Bar -->
        <header>
            <ul>
                <li><a href="welcome.jsp">Home</a></li>
                <li><a href="#footer">About Us</a></li>
                <li><a href="Catalog.jsp">Products</a></li>
                <li><a href="#footer">Contact Us</a></li>
                <a href="cart.jsp" target="_parent" class="home"><i class="fa fa-shopping-cart"></i></a>
                <a href="Logout" class="home">Logout<i class="fa fa-sign-out"></i></a>
            </ul>
        </header>

        <h2>Welcome ${username}</h2><br>

        <div class="con">
            <div class="order">
                <c:forEach items="${userdata}" var="s">
                            <pre><p id="date"></p><p>${s}</p></pre>
                </c:forEach>
            </div>
        </div>
        <!-- About Us and Contact Us -->
        <div class="footer" id="footer">
            <div class="about-section">
                <h1>About Us</h1>
                <p>Some text about who we are and what we do.</p>
                <p>Resize the browser window to see that this page is responsive by the way.</p>
                <p><a href="index.html" class="icon"><i class="fa fa-facebook"></i></a></p>
                <p><a href="index.html" class="icon"><i class="fa fa-instagram"></i></a></p>
                <p><a href="index.html" class="icon"><i class="fa fa-twitter"></i></a></p>
            </div>
        </div>
        <!-- Animation -->
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