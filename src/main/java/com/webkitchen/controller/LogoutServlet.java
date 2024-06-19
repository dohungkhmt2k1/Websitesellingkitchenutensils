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
@WebServlet(urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ss = req.getSession();
		System.out.println("session"+ss);
		
		req.getSession(false);
		if (ss!=null) {
			ss.invalidate();
			ss=null;
			System.out.println("session"+ss);

		}
		RequestDispatcher dispater = getServletContext().getRequestDispatcher("/views/dangnhap.jsp");
		dispater.forward(req, resp);
	}
}
