package com.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.order.dao.OrderDao;
import com.shop.dao.DecrDao;
import com.shop.dao.ProductDao;

@WebServlet("/UpdateQ")
public class UpdateQ extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<String> finList = (ArrayList<String>) session.getAttribute("finList");
		
		PrintWriter out = response.getWriter();
		
		DecrDao dao = new DecrDao();
		
		for(int i = 0; i < finList.size(); i++) {
			dao.decrQ(finList.get(i));
		}
		response.sendRedirect("SaveOrder");
	}
}