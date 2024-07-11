<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.OderDAOImpl"%>
<%@page import="com.entity.Oder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Oders</title>
<%@include file="allCss.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Oder Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">ph no</th>
      <th scope="col">Item name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment type</th>
    </tr>
  </thead>
  <tbody>
  <%OderDAOImpl dao=new OderDAOImpl(DBConnect.getConn());
 List<Oder> ilist=dao.getAllItem();
 for(Oder b:ilist)
 {%>
	 
	 <tr>
      <th scope="row"><%=b.getOderId() %></th>
      <td><%=b.getUsername() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladdress() %></td>
       <td><%=b.getPhno() %></td>
       <td><%=b.getItem() %></td>
       <td><%=b.getPrice() %></td>
        <td><%=b.getPayment() %></td>
      
    </tr> 
<%}
  
  %>
  
  
   
    
  </tbody>
</table>
<div style="margin-top: 160px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>