package com.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;
import com.shop.dao.ProductDao;

@WebServlet("/AddToCart")

public class AddToCart extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String[] favItems = request.getParameterValues("products");
			ProductDao dao = new ProductDao();
			ArrayList<String> finList = new ArrayList<>(5);
			ArrayList<Fetch> items = new ArrayList<>();

			for (int i = 0; i < favItems.length; i++) {
				if (dao.check(favItems[i]))
					finList.add(i, favItems[i]);
			}

			for (int i = 0; i < finList.size(); i++) {
				Fetch f = new Fetch(dao.giveName(finList.get(i)), dao.givePrice(finList.get(i)), dao.giveImg(finList.get(i)));
				items.add(f);
			}

			int sum = 0;

			for(int i = 0; i < finList.size(); i++) {
				sum = sum + dao.pAmt(finList.get(i));
			}

			if(favItems == null || sum==0) {
				response.sendRedirect("Catalog.jsp");
			}
			else{
				HttpSession session = request.getSession();
				session.setAttribute("items", items);
				session.setAttribute("finAmt",sum);
				session.setAttribute("finList",finList);
				response.sendRedirect("cart.jsp");
			}
		} catch(NullPointerException e) {
			response.sendRedirect("Catalog.jsp");
		}
	}
}