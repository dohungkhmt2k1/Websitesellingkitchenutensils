package com.webkitchen.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webkitchen.dao.AccountDAO;
import com.webkitchen.dao.ProductDAO;
import com.webkitchen.model.Account;
import com.webkitchen.model.Product;

/**
 * Servlet implementation class SpchienkhongdauServlet
 */
@WebServlet("/spchienkhongdau")
public class SpchienkhongdauServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpchienkhongdauServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String masp = request.getParameter("masp");
		Product product =null;
		try {
			product = ProductDAO.getProductFromMasp(masp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("product", product);
		HttpSession ss = request.getSession();
		Account acc = AccountDAO.getStoreUserLogined(ss);

		if (acc!=null) {

			RequestDispatcher dispater = this.getServletContext().getRequestDispatcher("/views/spchienkhongdau.jsp");
			dispater.forward(request, response);
		} else {
			//chưa đăng nhập

			response.sendRedirect(request.getContextPath()+"/login");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
