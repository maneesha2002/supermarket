package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;


@WebServlet("/remove_item")
public class RemoveItemCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int iid=Integer.parseInt(request.getParameter("iid"));
		int uid=Integer.parseInt(request.getParameter("uid"));
		int cid=Integer.parseInt(request.getParameter("cid"));
		CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
		boolean f=dao.deleteItem(iid,uid,cid);
		HttpSession session=request.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg","Item Removed");
			response.sendRedirect("checkout.jsp");
			
		}else {
			session.setAttribute("failedMsg","Item Not Removed");
			response.sendRedirect("checkout.jsp");
			
		}
		
		
		
		
	}

}
