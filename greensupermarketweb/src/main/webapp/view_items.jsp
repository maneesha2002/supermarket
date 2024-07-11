<%@page import="com.entity.Item"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ItemDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>

<%
int iid=Integer.parseInt(request.getParameter("iid"));
ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
Item b=dao.getItemById(iid);



%>
<div class="container p-3">
<div class="row">
<div class="col-md-6 text-center p-5 border bg-white">
<img src="short/<%=b.getPhotoName() %>" style="height:150px;width:100px"><br>
<h4 class="mt-3">Item Name:<span class="text-success"><%=b.getItemname() %></span></h4>
<h4>Price:<span class="text-success"><%=b.getPrice() %></span></h4>
<h4>Category:<span class="text-success"><%=b.getItemcategory() %></span></h4>
</div>

<div class="col-md-6 text-center p-5 border bg-white">
<h2><%=b.getItemname() %></h2>
<div class="row">
<div class="col-md-4 text-danger text-center p-2">
<i class="fa-solid fa-money-bill-1-wave fa-2x"></i>
<p>Online Payment</p>
</div>
<div class="col-md-4 text-danger text-center p-2">
<i class="fa-solid fa-truck fa-2x"></i>
<p>Delivery</p>
</div>
</div>
<div class="text-center p-3">
<c:if test="${not empty userobj }">
<a href="Cart?iid=<%=b.getItemid()%>" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
<a href="" class="btn btn-danger"><i class="fa-solid fa-rupee-sign"></i>200</a>

</c:if>
<c:if test="${empty userobj }">
<a href="login.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
<a href="" class="btn btn-danger"><i class="fa-solid fa-rupee-sign"></i>200</a>

</c:if>



</div>
</div>
</div>
</div>
</body>
</html>