package com.webkitchen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webkitchen.dao.AccountDAO;
import com.webkitchen.model.Account;

@WebServlet(urlPatterns = "/contact")
public class ContactServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ss = req.getSession();
		System.out.println("contact1");
		Account acc = AccountDAO.getStoreUserLogined(ss);
		System.out.println("contact2");

		if (acc!=null) {
			System.out.println("views");
			req.setAttribute("logined", acc);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/contact.jsp");
			dispatcher.forward(req, resp);
			
		}
			System.out.println("Không có tài khoản nào");
			resp.sendRedirect("/login.jsp");

		 
		
		
	}
}
