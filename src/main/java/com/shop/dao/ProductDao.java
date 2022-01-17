package com.shop.dao;

import java.sql.Statement;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDao {

	String url="jdbc:mysql://localhost:3306/rohit";
	String username="root";
	String password="1234";

	public boolean check(String pname) {

		String sql2 = "select quantity from products where pname='"+pname+"'";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery(sql2);
			rs.next();

			int q = rs.getInt("quantity");

			if(q > 0) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public int pAmt(String pname) {

		String sql2 = "select price from products where pname='"+pname+"'";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery(sql2);
			rs.next();

			int q = rs.getInt("price");
			
			return q;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public String giveName(String pname) {

		String sql2 = "select quantity from products where pname='"+pname+"'";
		String sql3 = "select * from products where pname='"+pname+"'";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			ResultSet rs1 = st.executeQuery(sql2);
			rs1.next();

			int q = rs1.getInt("quantity");

			if(q > 0) {

				ResultSet rs2 = st.executeQuery(sql3);
				rs2.next();
				String userData = rs2.getString(2) + " ";

				return userData;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "Error";
	}
	
	
	public int givePrice(String pname) {

		String sql2 = "select quantity from products where pname='"+pname+"'";
		String sql3 = "select * from products where pname='"+pname+"'";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			ResultSet rs1 = st.executeQuery(sql2);
			rs1.next();

			int q = rs1.getInt("quantity");

			if(q > 0) {

				ResultSet rs2 = st.executeQuery(sql3);
				rs2.next();
				int userData = rs2.getInt(3);

				return userData;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public String giveImg(String pname) {

		String sql2 = "select quantity from products where pname='"+pname+"'";
		String sql3 = "select * from products where pname='"+pname+"'";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			ResultSet rs1 = st.executeQuery(sql2);
			rs1.next();

			int q = rs1.getInt("quantity");

			if(q > 0) {

				ResultSet rs2 = st.executeQuery(sql3);
				rs2.next();
				String userData = rs2.getString(5) + " ";

				return userData;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "Error";
	}
}