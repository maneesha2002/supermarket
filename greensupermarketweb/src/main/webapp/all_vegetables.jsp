<%@page import="com.entity.User"%>
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
<title>Insert title here</title>

<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%
User u=(User) session.getAttribute("userobj");
%>
<%@include file="all_component/navbar.jsp" %>
<h2 class="text-center">All Vegetables</h2>
<div class="Container-fluid">
<div class="row p-3">

<%
ItemDAOImpl dao2=new ItemDAOImpl(DBConnect.getConn());
List<Item>list2=dao2.getAllVegetables();
for(Item b:list2)
{%>
	<div class="col-md-3">
	
<div class="card crd-ho mt-3">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:100px; height:150px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p>Price<%=b.getPrice() %></p>
<p>Categories:<%=b.getItemcategory() %></p>
<div class="row">
<c:if test="${not empty userobj }">

<a href="Cart?iid=<%=b.getItemid()%>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
<a href="view_items.jsp?iid=<%=b.getItemid() %>" class="btn btn-success btn-sm ml-1">Details</a>
<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i><%=b.getPrice() %></a>
</c:if>
<c:if test="${empty userobj }">
<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
<a href="view_items.jsp?iid=<%=b.getItemid() %>" class="btn btn-success btn-sm ml-1">Details</a>
<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i><%=b.getPrice() %></a>

</c:if>

</div>
</div>
</div>
</div>

<% }


%>
</div>
</div>


</body>
</html>