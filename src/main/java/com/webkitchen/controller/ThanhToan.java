package com.webkitchen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webkitchen.dao.ProductDAO;
import com.webkitchen.model.Product;

/**
 * Servlet implementation class ThanhToan
 */
@WebServlet("/thanhtoan")
public class ThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThanhToan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> list = ProductDAO.gioHang;
		try {
			for(Product p : list) {
				ProductDAO.deleteProductOutListShoppingCart(p.getMaSP());
			}
		} catch (Exception e) {
			System.out.println("thanh toán không thành công");
		}
		
		response.sendRedirect(request.getContextPath() + "/dungcunhabep");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
