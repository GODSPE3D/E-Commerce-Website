package com.order.dao;

import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDao {

	String url="jdbc:mysql://localhost:3306/rohit";
	String username="root";
	String password="1234";
	
	 public void addDB(String uname,String order, int subtotal) {

	     int count;
         String sql = "insert into orderList values(?, ?, ?);";

         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection(url, username, password);
             PreparedStatement st = con.prepareStatement(sql);

             st.setString(1, uname);
             st.setString(2, order);
             st.setInt(3, subtotal);

             count = st.executeUpdate()
         } catch(Exception e) {
             e.printStackTrace();
         }
	 }

    public int getCount() {

        String sql = "select count(*) from orderList;";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery(sql);
            rs.next();

            return rs.getInt("count(*)");

        }catch(Exception e) {
            e.printStackTrace();
        }

        return 20;
    }

    public ArrayList<String> prevOrder(String uname) throws Exception {

        String sql = "select * from orderList where uname='"+uname+"'";

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
        Statement st = con.createStatement();

        ResultSet rs = st.executeQuery(sql);

        int i = 0;
        ArrayList<String> userdata = new ArrayList<>();

        while(rs.next()) {
            userdata.add(i, rs.getString(2) + "  subtotal: " + rs.getInt(3));
            i++;
        }

        return userdata;
    }
}