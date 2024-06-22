package com.webkitchen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webkitchen.dao.ProductDAO;

/**
 * Servlet implementation class Xulixoasp
 */
@WebServlet("/xulixoasp")
public class Xulixoasp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xulixoasp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maSP = request.getParameter("masp");
		if (ProductDAO.deleteProductOutListShoppingCart(maSP)) {
			System.out.println("xoa thanh coong");
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/giohang.jsp");
			dispatcher.forward(request, response);
		}
		else {
			System.out.println("xoa that bai roi man");
		}
		/*RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/giohang.jsp");
		dispatcher.forward(request, response);
		response.sendRedirect(request.getContextPath() + "/giohang");*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
