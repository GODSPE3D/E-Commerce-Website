package com.order;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.lang.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.order.dao.OrderDao;
import com.shop.dao.DecrDao;
import com.shop.dao.ProductDao;

@WebServlet("/SaveOrder")

public class SaveOrder extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		int subtotal = (int) session.getAttribute("finAmt");
		StringBuilder order = new StringBuilder("");
		ArrayList<String> finList = (ArrayList<String>) session.getAttribute("finList");
		
		ProductDao dao1 = new ProductDao();
		
		for(int i=0;i<finList.size();i++) {
			order = order.append(finList.get(i) + ", ");  
		}
		
		OrderDao dao2 = new OrderDao();
		
		dao2.addDB(username, order.toString(), subtotal);
		
		
		response.sendRedirect("Thank.jsp");
	}
}



