package com.webkitchen.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webkitchen.dao.AccountDAO;
import com.webkitchen.dao.ConnectionSQL;
import com.webkitchen.model.Account;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ss = req.getSession();
		Account acc = AccountDAO.getStoreUserLogined(ss);
		if (acc!=null) {
			resp.sendRedirect(req.getContextPath()+"/contact");

		}
			RequestDispatcher dispater = this.getServletContext().getRequestDispatcher("/views/dangnhap.jsp");
			dispater.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("txtsdt");
		String pass = req.getParameter("txtmk");
		String luuCookieStr = req.getParameter("luucookie");
		boolean luucookie = "Y".equals(luuCookieStr);

		Account user = null;
		boolean hasError = false;
		String errorString = null;

		if (userName.length() == 0 || userName == null) {
			hasError = true;
			errorString = "vui lòng nhập tên đăng nhập";
		} else if ( pass.length() == 0 || pass == null) {
			hasError = true;
			errorString = "vui lòng nhập mật khẩu";
		} else {
			System.out.println("chuẩn bị lấy thông tin kết nối");
			Connection conn = ConnectionSQL.getStoreConnection(req);
			System.out.println(conn);
			System.out.println("tìm tài khoản");
			try {
				user = AccountDAO.findUser(conn, userName, pass);

				if (user == null) {
					hasError = true;
					errorString = "không tìm thấy tài khoản";
				}
			} catch (SQLException e) {
				System.out.println("không thể kết nối hoặc tìm kiếm");
				e.printStackTrace();
			}
		}

		if (hasError) {
			System.out.println("co loi");
			user = new Account();
			user.setUserName(userName);
			user.setPassWork(pass);
			req.setAttribute("errorString", errorString);
			req.setAttribute("user", user);
			System.out.println("setattrubute xong, thuực hiện chuyển hướng");
			RequestDispatcher dispater = this.getServletContext().getRequestDispatcher("/views/dangnhap.jsp");
			dispater.forward(req, resp);
		} else {
			System.out.println("chuyen huong");
			HttpSession ss = req.getSession();
			
			if (luucookie) {
				System.out.println(luucookie);
				AccountDAO.storeUserNameInCookie(resp, user);
			} else {
				AccountDAO.deleteUserNameInCookie(resp, user);
			}
			
			AccountDAO.storeUserLogined(ss, user);
			resp.sendRedirect(req.getContextPath()+"/contact");
		}

	}
}
