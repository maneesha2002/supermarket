<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<%@include file="all_component/allCss.jsp" %>
</head>

<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<c:if test="${not empty succMsg }">
<div class="alert alert-success" role="alert">
  ${succMsg }
</div>
<c:remove var="succMsg" scope="session"/>

</c:if>
<c:if test="${not empty failedMsg }">
<div class="alert alert-success" role="alert">
  ${failedMsg }
</div>
<c:remove var="failedMsg" scope="session"/>

</c:if>


<div class="container">
<div class="row p-2">
<div class="col-md-6">

<div class="card bg-white">
<div class="card-body">
<h3 class="text-center text-success">Your Selected Items </h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  <%
  User u=(User)session.getAttribute("userobj");
  CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
  List<Cart> cart=dao.getItemByUser(u.getId());
  Double totalPrice=0.00;
  for(Cart c:cart){
	  totalPrice=c.getTotalprice();
  %>
	    <tr>
      <th scope="row"><%=c.getItemname() %></th>
      <td><%=c.getPrice() %></td>
      <td><%=c.getPrice() %></td>
      <td><a href="remove_item?iid=<%=c.getIid() %>&&uid=<%=c.getUserid() %>&&cid=<%=c.getCid() %>" class="btn btn-sm btn-danger">Remove</a></td>
    </tr>
  <%}
  
  
  %>
  
  <tr>
  <td>Total Price</td>
  <td></td>
  <td></td>
  <td><%=totalPrice %></td>
  </tr>
  
  
  </tbody>
</table>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h3 class="text-center text-success">Your details oder</h3>
<form action="OderServlet" method="post">
<input type="hidden" value="${userobj.id }" name="id">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" id="inputEmail4" value="<%=u.getName()%>" readonly="readonly"name="cname">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email</label>
      <input type="Email" class="form-control" id="inputPassword4"value="<%=u.getEmail()%>"readonly="readonly" name="email">
    </div>
  </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Mobile Number</label>
      <input type="number" class="form-control" id="inputEmail4"value="<%=u.getPhno()%>" name="phno">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4" name="address"required="required">
    </div>
  </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Lane</label>
      <input type="text" class="form-control" id="inputEmail4" name="landmark"required="required">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Town</label>
      <input type="text" class="form-control" id="inputPassword4" name="city"required="required">
    </div>
  </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">City</label>
      <input type="text" class="form-control" id="inputEmail4" name="state"required="required">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Pin code</label>
      <input type="text" class="form-control" id="inputPassword4" name="pincode"required="required">
    </div>
  </div>
  <div class="form-group">
  <label>Payment Method</label>
 <select class="form-control" name="payment">
 
 <option value="COD">Cash on delivery</option>
 <option>PayPal</option>
 
 </select>
  </div>
  <div class="text-center">
  <button class="btn btn-warning">Oder Now</button>
  <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
  </div>
</form>

</div>
</div>
</div>

</div>
</div>
</body>
</html>