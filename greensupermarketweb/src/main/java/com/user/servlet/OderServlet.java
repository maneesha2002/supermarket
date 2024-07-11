package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.CartDAOImpl;
import com.DAO.OderDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Oder;



@WebServlet("/OderServlet")
public class OderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int id=Integer.parseInt(request.getParameter("id"));
			
			String name=request.getParameter("cname");
			String email=request.getParameter("email");
			String phno=request.getParameter("phno");
			String address=request.getParameter("address");
			String landmark=request.getParameter("landmark");
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			String pincode=request.getParameter("pincode");
			String payment=request.getParameter("payment");
			String fulladdress=address+","+landmark+","+city+","+state+","+pincode;
			
			
			CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
			List<Cart> ilist=dao.getItemByUser(id);
			if(ilist.isEmpty()) {
				response.sendRedirect("emptymsg.jsp");
				
			}else {
				OderDAOImpl dao2=new OderDAOImpl(DBConnect.getConn());
				
				Oder o=null;
				
				ArrayList<Oder> oderList=new ArrayList<Oder>();
				Random e=new Random();
				for(Cart c:ilist)
				{
					o=new  Oder();
				o.setOderId("ITEM-ORD-00"+e.nextInt(1000));
				o.setUsername(name);
				o.setEmail(email);
				o.setPhno(phno);
				o.setFulladdress(fulladdress);
				o.setItem(c.getItemname());
				o.setPrice(c.getPrice()+"");
				o.setPayment(payment);
				oderList.add(o);
				
				}
				
					
					boolean f=dao2.saveoder(oderList);
					
					if(f) {
						response.sendRedirect("odercorrect.jsp");
					
					}else {
						System.out.println("unsuccess");	
					}
					
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
