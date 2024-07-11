package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.ItemDAOImpl;

import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Item;


@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			int iid=Integer.parseInt(request.getParameter("iid"));
			
			
			ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
			Item b=dao.getItemById(iid);
			Cart c=new Cart();
			c.setIid(iid);
			
			c.setItemname(b.getItemname());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalprice(Double.parseDouble(b.getPrice()));
			int uid=Integer.parseInt(request.getParameter("uid"));
			c.setUserid(uid);
			
			
			
			CartDAOImpl dao2=new CartDAOImpl(DBConnect.getConn());
			boolean f=dao2.addCart(c);
			HttpSession session=request.getSession();
			
			
			if(f) {
				session.setAttribute("addCart", "Item added to cart");
				response.sendRedirect("all_bakery.jsp");
				
				
			}else {
				session.setAttribute("failed", "wrong");
				response.sendRedirect("all_bakery.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
