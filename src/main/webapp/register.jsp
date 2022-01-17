<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="LS.css">
        <title>Online Shopping Application</title>
    </head>
    <body>
        <a href="Home.jsp" class="home"><i class="home-btn fa fa-home"></i>HOME</a>
        <!-- The main elements start from here -->
        <div class="center">
            <div class="container">
                <!-- Prompting User for a new account -->
                <div class="text">New account</div>
                <form action="Register" method="post">
                    <!-- Username -->
                    <div class="data">
                        <label>Username</label> <input type="text"
                            placeholder="Enter Username" name="name" required>
                    </div>
                    <!-- Email -->
                    <div class="data">
                        <label>Email</label> <input type="email"
                            placeholder="xyz@example.com" name="email" required>
                    </div>
                    <!-- Password -->
                    <div class="data">
                        <label>Password</label> <input type="password"
                            placeholder="Enter Password" name="pass" required>
                    </div>
                    <div class="btn">
                        <div class="inner"></div>
                        <a href="login.jsp" target="_parent"><button type="submit">Signup</button></a>
                    </div>
                    <div class="signup-link">
                        Already have an account? <a href="login.jsp" target="_parent">LogIn</a>
                    </div>
                </form>
            </div>
        </div>
        <script src="funct.js"></script>
    </body>
</html>