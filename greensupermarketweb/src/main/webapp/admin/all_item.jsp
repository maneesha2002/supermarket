<%@page import="com.entity.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ItemDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Items</title>
<%@include file="allCss.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>


<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
    <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
  List<Item> list=dao.getAllItems();
  for(Item b:list)
  {%>
	   <tr>
      <td><%=b.getItemid() %></td>
      <td><img src="../short/<%=b.getPhotoName()%>" style="width:50px;height:50px"></td>
      <td><%=b.getItemname() %></td>
      <td><%=b.getPrice() %></td>
       <td><%=b.getItemcategory() %></td>
        <td><%=b.getStatus() %></td>
       <td>
       <a href="edit_items.jsp?id=<%=b.getItemid() %>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
       <a href="../delete?id=<%=b.getItemid() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>Delete</a>
       </td>
    </tr> 
  <%
  }
  
  %>
  
   
  </tbody>
</table>
<div style="margin-top: 320px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>

