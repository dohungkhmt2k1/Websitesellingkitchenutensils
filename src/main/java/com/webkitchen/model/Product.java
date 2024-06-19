package com.webkitchen.model;

public class Product {

	private String maSP;
	private String tenSP;
	private int giaGoc;
	private int giaGiam;
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public int getGiaGoc() {
		return giaGoc;
	}
	public void setGiaGoc(int giaGoc) {
		this.giaGoc = giaGoc;
	}
	public int getGiaGiam() {
		return giaGiam;
	}
	public void setGiaGiam(int giaGiam) {
		this.giaGiam = giaGiam;
	}
	public Product(String maSP, String tenSP, int giaGoc, int giaGiam) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.giaGoc = giaGoc;
		this.giaGiam = giaGiam;
	}
	
	
}
