package com.webkitchen.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webkitchen.dao.AccountDAO;
import com.webkitchen.dao.ConnectionSQL;
import com.webkitchen.model.Account;

@WebServlet(urlPatterns = "/logup")
public class LogupServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispater = this.getServletContext().getRequestDispatcher("/views/dangki.jsp");
		dispater.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tendangnhap = req.getParameter("txtsdt");
		String matkhau = req.getParameter("txtmk");
		String matkhau2 = req.getParameter("txtmk2");
		String checkStr = req.getParameter("check");
		boolean check = "1".equals(checkStr);
		
		String errorString = null;
		boolean hasError = false;
		Account user = null;
		boolean mk=false;
		String checkdk=null;
		
		// tên đăng nhập là chữ cái hoặc và số, không chứa kí tự đặt biệt
		Pattern patterntendangnhap = Pattern.compile("^\\w+$");
		// mật khẩu bắt đầu bằng kí tự chữ HOA sau đó là chữ cái thường sau đó là số sau
		// đó là kí tự đặc biệt
		Pattern patternmk = Pattern.compile("^[A-Z]\\w+\\d+\\W+$");
		
		System.out.println("bắt đầu kiểm tra");
		if (patterntendangnhap.matcher(tendangnhap).matches() == false) {
			errorString = "tên đăng nhập là chữ cái hoặc và số, không chứa kí tự đặt biệt";
			hasError = true;
		}
		System.out.println("kiểm tra tên xong, bắt đầu kiểm tra mật khẩu");
		if (patternmk.matcher(matkhau).matches() == false) {
			errorString = "mật khẩu bắt đầu bằng kí tự chữ HOA sau đó là chữ cái thường sau đó là số sau đó là kí tự đặc biệt";
			System.out.println("kiem tra that bai");
			hasError = true;
			mk=true;
		}
		//kiểm tra chấp nhận điều khoản sử dụng
		//false là chưa chấp nhận
		if (check==false) {
			hasError = true;
			checkdk="Chấp nhận điều khoản dịch vụ và chính sách bảo mật.";
		}
		System.out.println("kiểm tra xác nhận mật khẩu");
		if (matkhau.equals(matkhau2)==false&&mk==false) {
			errorString = "Xác nhận mật khẩu thất bại";
			hasError = true;
			System.out.println("xasc nhaanj that bai");
			System.out.println("mk1" + matkhau);
			System.out.println("mk2" + matkhau2);

		}
		else {
			System.out.println("chuẩn bị lấy thông tin kết nối");
			Connection conn = ConnectionSQL.getStoreConnection(req);
			System.out.println(conn);
			System.out.println("tìm tài khoản");
			try {
				user = AccountDAO.findUserFromUserName(conn, tendangnhap);

				if (user != null) {
					hasError = true;
					errorString = "Tên đăng nhập đã tồn tại";
				}
			} catch (SQLException e) {
				System.out.println("không thể kết nối hoặc tìm kiếm");
				e.printStackTrace();
			}
		}
		if (hasError) {//nếu có lỗi trong lúc đăng kí
			System.out.println("co loi");
			System.out.println(tendangnhap);
			System.out.println(matkhau);
			Account user2 = new Account();
			user2.setUserName(tendangnhap);
			user2.setPassWork(matkhau);
			System.out.println("chuyển hướng user");
			System.out.println(user2.getUserName());
			System.out.println(user2.getPassWork());

			req.setAttribute("user", user2);
			System.out.println("chuyển hướng chuỗi lỗi");
			req.setAttribute("errorString", errorString);
			req.setAttribute("checkdk", checkdk);
			System.out.println("setattrubute xong, thuực hiện chuyển hướng");
			
			RequestDispatcher dispater =this.getServletContext().getRequestDispatcher("/views/dangki.jsp");
			dispater.forward(req, resp);
		} else {//thêm tài khoản đăng kí
			System.out.println("chuyen huong");
			Account user2 = new Account();

			user2.setUserName(tendangnhap);
			user2.setPassWork(matkhau);
			req.setAttribute("user", user2);
			
			System.out.println("chuẩn bị lấy thông tin kết nối");
			Connection conn = ConnectionSQL.getStoreConnection(req);
			System.out.println(conn);
			System.out.println("them tai khoan");
			try {
				System.out.println("chuan bi them tai khoan");
				
				if (AccountDAO.addAccount(conn, user2)) {
					System.out.println("xong");

				} else {
					System.out.println("thất bại");

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("them thành công");
			RequestDispatcher dispater =this.getServletContext().getRequestDispatcher("/views/dangnhap.jsp");
			dispater.forward(req, resp);                                                                                                                 
		}
	}
}
