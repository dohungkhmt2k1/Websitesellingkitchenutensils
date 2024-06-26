package com.webkitchen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webkitchen.model.Product;

public class ProductDAO {

	public static List<Product> gioHang = new ArrayList<Product>();// giỏ hàng

	// thêm vào danh sách sản phẩm trong giỏ hàng
	public static boolean addProductToListShoppingCart(String maSP) {
		List<Product> list = null;
		try {
			list = getproductList();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (Product p : list) {
			if (p.getMaSP().equals(maSP)) {
				gioHang.add(p);
				return true;
			}
		}
		return false;
	}

	// xóa sản phẩm ra khỏi giỏ hàng
	public static boolean deleteProductOutListShoppingCart(String maSP) {
		List<Product> list = null;
		try {
			list = getproductList();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (Product p : gioHang) {

			if (p.getMaSP().equals(maSP)) {
				gioHang.remove(p);
				return true;
			}
		}
		return false;
	}

	// xuất ra toàn bộ danh sách sản phẩm
	public static List<Product> getproductList() throws SQLException {
		Connection conn = ConnectionSQL.getConnection();

		String sql = "select * from product";

		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			String maSP = rs.getString("masp");
			String tenSP = rs.getString("tensp");
			float giaGoc = rs.getFloat("giagoc");
			float giaGiam = rs.getFloat("giagiam");
			Product product = new Product();
			product.setMaSP(maSP);
			product.setTenSP(tenSP);
			product.setGiaGoc(giaGoc);
			product.setGiaGiam(giaGiam);
			list.add(product);

		}
		return list;
	}

	// lấy đối tượng product từ mã sp
	public static Product getProductFromMasp(String maSP) throws SQLException {
		Connection conn = ConnectionSQL.getConnection();

		String sql = "select * from product where masp = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, maSP);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String tenSP = rs.getString("tensp");
			float giaGoc = rs.getFloat("giagoc");
			float giaGiam = rs.getFloat("giagiam");
			Product product = new Product();
			product.setMaSP(maSP);
			product.setTenSP(tenSP);
			product.setGiaGoc(giaGoc);
			product.setGiaGiam(giaGiam);
			return product;
		}
		return null;
	}

}
