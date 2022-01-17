package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.register.dao.RegisterDao;

@WebServlet("/Register")

public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		RegisterDao Dao = new RegisterDao();
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        if(Dao.update(name, email, pass)) {
        	response.sendRedirect("login.jsp");
        }
        else {
        	out.println("Please Try Again");
        	response.sendRedirect("login.jsp");
        }
	}
}