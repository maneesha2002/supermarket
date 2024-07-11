package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.Item;


@WebServlet("/edititems")
public class EditItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			String itemname=request.getParameter("iname");
			String price=request.getParameter("iprice");
			String status=request.getParameter("status");
			
			Item b=new Item();
			b.setItemid(id);
			b.setItemname(itemname);
			b.setPrice(price);
			b.setStatus(status);
			
			ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditItems(b);
			
			if(f) {
				response.sendRedirect("admin/editsuccess.jsp");
			}else {
				System.out.println("unsuccess");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
