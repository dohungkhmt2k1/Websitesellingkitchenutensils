package com.webkitchen.filter;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.webkitchen.dao.AccountDAO;
import com.webkitchen.dao.ConnectionSQL;
import com.webkitchen.model.Account;

@WebFilter(filterName = "cookiefilter",urlPatterns = "/*")
public class CookieDAO implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession ss = req.getSession();
			System.out.println("cookie1");
			Account acc = AccountDAO.getStoreUserLogined(ss);
			
			if (acc!=null) {
				req.setAttribute("cookie_checked", "checked");
				chain.doFilter(req, response);
				return;
			}
			System.out.println("cookie2");

			Connection conn = ConnectionSQL.getConnection();
			
			String checked = (String) req.getAttribute("cookie_checked");
			if (checked==null&&conn!=null) {
				String userName = AccountDAO.getUserNameInCookie(req);
				try {
					Account user = AccountDAO.findUserFromUserName(conn, userName);
					AccountDAO.storeUserLogined(ss, user);
				} catch (Exception e) {
					// TODO: handle exception
				}
				req.setAttribute("cookie_checked", "checked");
				System.out.println("cookie3");


			}
			chain.doFilter(req, response);

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
	

}
