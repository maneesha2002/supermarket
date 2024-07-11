<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ItemDAOImpl"%>
<%@page import="com.entity.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>G Supermarket</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
.back-img{
background: url("img/h.jpg");
height:70vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}
.crd.ho:hover{
background:#fcf7f7;
}

</style>
</head>
<body style="background-color:#f7f7f7;">
<%
User u=(User) session.getAttribute("userobj");
%>

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<h1 class="text-center text-danger p-2"><b><i>Green Supermarket Website</i></b></h1>
</div>

<div class="container">
<div class="row p-5">
<div class="col-md-3">
<a href="all_vegetables.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-carrot fa-3x"></i><br>
<h5>Vegetables</h5>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3">
<a href="all_fruits.jsp">
<div class="card">
<div class="card-body text-center text-success">
<i class="fa-brands fa-apple fa-3x text-success"></i><br>
<h5>Fruits</h5>
------------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="all_bakery.jsp">
<div class="card">
<div class="card-body text-center text-danger">
<i class="fa-solid fa-hotdog fa-3x text-danger"></i><br>
<h5>Bakery</h5>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3">
<a href="all_beverages.jsp">
<div class="card">
<div class="card-body text-center text-warning">
<i class="fa-solid fa-wine-bottle fa-3x text-warning"></i><br>
<h5>Beverages</h5>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3 p-3">
<a href="all_cookingessentials.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-boxes-packing fa-3x"></i><br>
<h5>Cooking Essentials</h5>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3 p-3">
<a href="all_frozenfood.jsp">
<div class="card">
<div class="card-body text-center text-success">
<i class="fa-solid fa-bowl-food fa-3x text-success"></i><br>
<h5>Frozen Food</h5>
------------
</div>
</div>
</a>
</div>

<div class="col-md-3 p-3">
<a href="">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
<h5>Add Items</h5>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3 p-3">
<a href="add__item.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
<h5>Add Items</h5>
------------
</div>
</div>
</a>
</div>
</div>
</div>
<hr>
   <!-- Start Vegetables -->

<div class="container">
<h3 class="text-center"><b><i>Vegetables</i></b></h3>
<div class="row">

<%
ItemDAOImpl dao5= new ItemDAOImpl(DBConnect.getConn());
List<Item> list5=dao5.getVegetables();
for(Item b:list5)
{%>
<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p>Price:<%=b.getPrice() %></p>
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
<%}


%>
</div>
<div class="text-center mt-1">
<a href="all_vegetables.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- End vegetables --> 
<hr>
   <!-- Start Fruits -->

<div class="container">
<h3 class="text-center"><b><i>Fruits</i></b></h3>
<div class="row">

<%
ItemDAOImpl dao6= new ItemDAOImpl(DBConnect.getConn());
List<Item> list6=dao6.getFruits();
for(Item b:list6)
{%>
<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p>Price:<%=b.getPrice() %></p>
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
<%}


%>
</div>
<div class="text-center mt-1">
<a href="all_fruits.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- End Fruits -->    
<hr>
<!-- Start Bakery -->

<div class="container">
<h3 class="text-center"><b><i>Bakery</i></b></h3>
<div class="row">

<%
ItemDAOImpl dao= new ItemDAOImpl(DBConnect.getConn());
List<Item> list=dao.getBakery();
for(Item b:list)
{%>
<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p>Price:<%=b.getPrice() %></p>
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
<%}


%>
</div>
<div class="text-center mt-1">
<a href="all_bakery.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- End bakery -->
<hr>

<!-- Start Beverages -->

<div class="container">
<h3 class="text-center"><b><i>Beverages</i></b></h3>
<div class="row">
<%
ItemDAOImpl dao2=new ItemDAOImpl(DBConnect.getConn());
List<Item>list2=dao2.getBeverages();
for(Item b:list2)
{%>
	<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:150px; height:200px" class="img-thumblin">
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
<div class="text-center mt-1">
<a href="all_beverages.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- End Beverages -->
<hr>

<!-- Start Cooking Essentials -->
<div class="container">
<h3 class="text-center"><b><i>Cooking Essentials</i></b></h3>
<div class="row">
<%
ItemDAOImpl dao3=new ItemDAOImpl(DBConnect.getConn());
List<Item> list3=dao3.getCookingEssentials();
for(Item b:list3)
{%>
	<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p><%=b.getPrice() %></p>
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
<%}

%>


</div>
<div class="text-center mt-1">
<a href="all_cookingessentials.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- End Cooking Essentials -->

<!-- start of frozen food -->
<div class="container">
<h3 class="text-center"><b><i>Frozen Food</i></b></h3>
<div class="row">
<%
ItemDAOImpl dao4=new ItemDAOImpl(DBConnect.getConn());
List<Item> list4=dao4.getFrozenFood();
for(Item b:list4)
{%>
	<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName()%>" style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getItemname() %></p>
<p><%=b.getPrice() %></p>
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
<%}

%>


</div>
<div class="text-center mt-1">
<a href="all_frozenfood.jsp" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>

<!-- end of frozen food -->
<%@include file="all_component/footer.jsp" %>
</body>
</html>