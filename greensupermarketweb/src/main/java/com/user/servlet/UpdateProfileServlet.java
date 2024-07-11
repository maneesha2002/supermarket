package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("fname");
			String email=request.getParameter("email");
			String phno=request.getParameter("phno");
			String password=request.getParameter("password");
			User cs=new User();
			cs.setId(id);
			cs.setName(name);
			cs.setEmail(email);
			cs.setPhno(phno);
			HttpSession session=request.getSession();
			
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			boolean f=dao.checkPassword(id, password);
			if(f) {
				boolean f2=dao.updateProfile(cs);
				if(f2) {
					
					response.sendRedirect("useredit_success.jsp");
				}else {
					
				 	response.sendRedirect("edit_profile.jsp");
				}
				
			}else {
				session.setAttribute("failedMsg","password is incorrect");
				response.sendRedirect("edit_profile.jsp");
				
			}
			
			
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
