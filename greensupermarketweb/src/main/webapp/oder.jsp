<%@page import="com.entity.Oder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.OderDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
              <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<%@include file="all_component/allCss.jsp" %>
</head>

<body style="background-color:#f0f1f2;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<%@include file="all_component/navbar.jsp" %>
<div class="container p-1">
<h5 class="text-center text-primary"> Your Oder</h5>
<table class="table table-striped mt-3">
  <thead class="bg-primary">
    <tr>
      <th scope="col">Oder Id</th>
      <th scope="col">Name</th>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
  <tbody>
  <%
User u=(User) session.getAttribute("userobj");
  OderDAOImpl dao=new OderDAOImpl(DBConnect.getConn());
  List<Oder> iList=dao.getItem(u.getEmail());
  
  for(Oder b:iList)
  {%>
	  
	<tr>
      <th scope="row"><%=b.getOderId() %></th>
      <td><%=b.getUsername() %></td>
      <td><%=b.getItem() %></td>
      <td><%=b.getPrice() %></td>
    
    </tr>  
  <%}
  
  
  %>
  
    
  </tbody>
</table>
</div>
</body>
</html>