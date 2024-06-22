package com.webkitchen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webkitchen.model.Account;

public class AccountDAO {
	//tìm tài khoản trong DB
	public static Account findUser(Connection conn, String user,String pass) throws SQLException {
		String sql = "select * from account where username = ? and passwork = ?";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, user);
		pstm.setString(2, pass);
		ResultSet rs = pstm.executeQuery();
		
		if (rs.next()) {
			Account user1 = new Account();
			user1.setUserName(user);
			user1.setPassWork(pass);
			return user1;
		}
		return null;
	}
	//tìm tài khoản từ username để đăng kí tài khoản
	public static Account findUserFromUserName(Connection conn,String user) throws SQLException {
		String sql = "select * from account where username = ? ";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, user);
		ResultSet rs= pstm.executeQuery();
		if (rs.next()) {
			String pass = rs.getString("passwork");
			Account acc = new Account();
			acc.setUserName(user);
			acc.setPassWork(pass);
			return acc;
		}
		return null;
		
	}
	//lưu thông tin người dùng đã đăng nhập vào session sau khi kiểm tra trong DB
	public static void storeUserLogined(HttpSession session,Account acc) {
		session.setAttribute("logined", acc);
	}
	
	//lấy thông tin người dùng đang đăng nhập trong session
	public static Account getStoreUserLogined(HttpSession ss) {
		return (Account) ss.getAttribute("logined");
	}
	
	//đăng kí tài khoản
	public static boolean addAccount(Connection conn,Account acc) throws SQLException {
		String sql ="insert into account values(?,?)";
		
		try {

			PreparedStatement pstm = conn.prepareStatement(sql);
			System.out.println("---------");

			System.out.println("set paramêtrr động");
			System.out.println(acc.getUserName() + "|||" + acc.getPassWork());
			System.out.println("---------");
			pstm.setString(1, acc.getUserName());
			pstm.setString(2, acc.getPassWork());
			System.out.println("trả về");
			pstm.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("Lỗi khi thêm tài khoản");
		}
		return false;
		
	}
	//lấy tên tài khoản trong cookie
	public static String getUserNameInCookie(HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		if (cookies!=null) {
			for(Cookie cookie : cookies) {
				if ("att_store_user_in_cookie".equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
		
	}
	
	//lưu cookie
	public static void storeUserNameInCookie(HttpServletResponse resp,Account acc) {
		System.out.println("luu cookie");
		Cookie cookieUserName = new Cookie("att_store_user_in_cookie", acc.getUserName());
		
		cookieUserName.setMaxAge(60*60*24);
		resp.addCookie(cookieUserName);
	}
	//xóa cookie nếu người dùng không cho phép truy cập
		public static void deleteUserNameInCookie(HttpServletResponse resp,Account acc) {
			System.out.println("delete cookie");
			Cookie cookieUserName = new Cookie("att_store_user_in_cookie", null);
			
			cookieUserName.setMaxAge(0);
			resp.addCookie(cookieUserName);
		}
		
}








