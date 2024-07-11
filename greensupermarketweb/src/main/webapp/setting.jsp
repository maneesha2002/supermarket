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
<style type="text/css">
a{
text-decoration:none;
color:black;

}
a:hover{
text-decoration:none;

}

</style>


</head>
<body style="background-color:#f0f1f2;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>

</c:if>

<%@include file="all_component/navbar.jsp" %>
<div class="container">

<h3 class="text-center">Hello,${userobj.name }</h3>


<div class="row p-5">
<div class="col-md-6">
<a href="edit_profile.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-primary">

<i class="fa-solid fa-user-pen fa-3x"></i>
<h4>Edit Profile</h4>
</div>

</div>
</div>
</a>
</div>

<div class="col-md-6">
<a href="oder.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-danger">
<i class="fa-solid fa-box fa-3x"></i>

<h4>My Oders</h4>
</div>

</div>
</div>
</a>
</div>
</div>
</div>

</body>
</html>