package com.admin.servlet;

import java.io.File; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.Item;


@WebServlet("/AddItem")
@MultipartConfig
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String itemname=request.getParameter("iname");
			String price=request.getParameter("iprice");
			String itemcategory=request.getParameter("categories");
			String status=request.getParameter("status");
			Part part=request.getPart("iimg");
			String fileName=part.getSubmittedFileName();
			
			Item b=new Item(itemname,price,itemcategory,status,fileName,"admin");
			ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn());
			
			
			
			
			boolean f=dao.addItems(b);
			
			String path=getServletContext().getRealPath("")+"short";
			File file= new File(path);
			
			part.write(path + File.separator + fileName);
			
			if(f) {
			
			response.sendRedirect("admin/addedsuccess.jsp");
				
			}else {
				
				response.sendRedirect("admin/add_item.jsp");
				
			}
			
			
			}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
