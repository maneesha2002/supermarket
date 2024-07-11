package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;



@WebServlet("/delete")
public class ItemDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
			boolean f=dao.deleteitems(id);
			if(f) {
				System.out.println("success");
			}else {
				System.out.println("unsuccess");
				
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
