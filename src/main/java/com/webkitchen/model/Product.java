package com.webkitchen.model;

public class Product {

	private String maSP;
	private String tenSP;
	private float giaGoc;
	private float giaGiam;
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
	public float getGiaGoc() {
		return giaGoc;
	}
	public void setGiaGoc(float giaGoc2) {
		this.giaGoc = giaGoc2;
	}
	public float getGiaGiam() {
		return giaGiam;
	}
	public void setGiaGiam(float giaGiam) {
		this.giaGiam = giaGiam;
	}
	public Product(String maSP, String tenSP, float giaGoc, float giaGiam) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.giaGoc = giaGoc;
		this.giaGiam = giaGiam;
	}
	public Product() {
		super();
	}
	
	
}
