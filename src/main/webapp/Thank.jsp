<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Thank you</title>

        <style>
        *{
            margin: 0;
            padding: 0;
            outline: none;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: rgb(2,0,36);
            color: white;
        }
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires","0");

            if(session.getAttribute("username")==null ){
                response.sendRedirect("login.jsp");
            }
        %>

        <div style="text-align: center; font-size: 200%;">
            <h1>Thank You!</h1>
        </div>
        <div style="text-align: center; color: lightblue;">
            <p>Your order will arive in 2-3 working days.</p>
            <a href="GetDetails" style="color: lightblue;">Click Here if you want to shop more.</a>
        </div>
    </body>
</html>