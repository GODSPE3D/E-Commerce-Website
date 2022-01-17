package com.shop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DecrDao {
	
	String url="jdbc:mysql://localhost:3306/rohit";
	String username="root";
	String password="1234";

	public void decrQ(String name) {

		int count;
		String sql = "update products set quantity=quantity-1 where pname='"+name+"'";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			
			count = st.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}