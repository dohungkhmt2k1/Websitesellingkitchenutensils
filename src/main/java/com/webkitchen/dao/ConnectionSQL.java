package com.webkitchen.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletRequest;

public class ConnectionSQL {

	public static Connection getConnection() {
		/*Connection conn=null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:LAPTOPDOHUNG://localhost:1433;databaseName=webkitchen;user=sa;password=123456");
			System.out.println("Connect success");
		} catch (Exception e) {
			System.out.println("Lỗi khi kết nối với sql");
		}
		return conn;*/
		String connectionURL = "jdbc:sqlserver://LAPTOPDOHUNG:1433;instance=SQLEXPRESS;databaseName=webkitchen";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("chuan bi ket noi sql");
			Connection conn = DriverManager.getConnection(connectionURL, "sa", "123456");
			System.out.println("Connect success");
			return conn;
			
		} catch (Exception e) {
			System.out.println("Lỗi khi kết nối với sql");
		}
		return null;
	}
	public static void storeConnection(ServletRequest req,Connection conn) {
		req.setAttribute("att_connecton", conn);
	}
	public static Connection getStoreConnection(ServletRequest req) {
		return (Connection) req.getAttribute("att_connecton");
	}
	/*public static void main(String[] args) {
		System.out.println(getConnect());
	}*/
}
