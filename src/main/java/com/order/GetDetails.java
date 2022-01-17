package com.order;

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
import com.shop.Fetch;

@WebServlet("/GetDetails")

public class GetDetails extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<String> userdata = new ArrayList<>();
		OrderDao dao = new OrderDao();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String uname = (String) session.getAttribute("username");

		try {
			userdata = dao.prevOrder(uname);
			session.setAttribute("userdata", userdata);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect("welcome.jsp");
	}
}