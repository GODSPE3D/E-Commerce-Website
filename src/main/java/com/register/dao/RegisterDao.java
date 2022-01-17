package com.register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao {

	String url="jdbc:mysql://localhost:3306/rohit";
	String username="root";
	String password="1234";
	
	public boolean update(String name, String email, String pass) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			
			PreparedStatement ps = con.prepareStatement("insert into customers values(?,?,?)");

			ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                return true;
            }
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}