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
<title>Admin:Edit Items</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
<%@include file="navbar.jsp" %>

<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">Edit Items</h4>



<%
int id=Integer.parseInt(request.getParameter("id"));
ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
Item b=dao.getItemById(id);
%>
<form action="../edititems" method="post">


<input type="hidden" name="id" value="<%=b.getItemid()%>">

<div class="form-group">

Item name:<input
name="iname" type="text" class="form-control"
id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getItemname()%>">
</div>
<div class="form-group">
Price:<input
name="iprice" type="text" class="form-control"
id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
</div>

<div class="form-group">
Item Status:<select
id="inputState" name="status" class="form-control">
<%
if("Active".equals(b.getStatus())){
	%>
	<option value="Active">Active</option>
<option value="Inactive">Inactive</option>
<%	
}else{%>
    <option value="Inactive">Inactive</option>
	<option value="Active">Active</option>
<%}
	%>



</select>

</div>


<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
</form>
</div>
</div>
</div>
</div>
</div>

<div style="margin-top: 20px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>