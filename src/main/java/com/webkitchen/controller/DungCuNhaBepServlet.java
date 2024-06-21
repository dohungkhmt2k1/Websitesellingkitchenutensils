package com.webkitchen.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webkitchen.dao.ConnectionSQL;
import com.webkitchen.dao.ProductDAO;
import com.webkitchen.model.Product;
@WebServlet(urlPatterns = "/dungcunhabep")
public class DungCuNhaBepServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("chuẩn bị lấy thông tin kết nối cho dụng cụ nhà bếp");
		Connection conn = ConnectionSQL.getStoreConnection(req);
		List<Product> product =null;
	       try {
			product = ProductDAO.getproductList();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       req.setAttribute("product", product);
		for(Product p : product) {
			System.out.println(p.getTenSP());
		}
		RequestDispatcher dispater  = this.getServletContext().getRequestDispatcher("/views/dungcunhabep.jsp");
		dispater.forward(req, resp);
	}
}
