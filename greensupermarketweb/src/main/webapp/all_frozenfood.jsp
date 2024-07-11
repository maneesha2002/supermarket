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
<title>All Frozen Foods</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
.crd.ho:hover{
background:#fcf7f7;
}
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>

<body>
<%
User u=(User) session.getAttribute("userobj");
%>
<c:if test="${not empty addCart }">
<div id="toast">${addCart}</div>
<

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>

</c:if>
<%@include file="all_component/navbar.jsp" %>
<h2 class="text-center">All Frozen Foods</h2>
<div class="Container-fluid">
<div class="row p-3">

<%
ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
List<Item>list=dao.getAllFrozenFood();
for(Item b:list)
{%>
<div class="col-md-3">
	<div class="card crd-ho mt-3">
<div class="card-body text-center">
<img alt="" src="short/<%=b.getPhotoName() %>" style="width:100px; height:150px" class="img-thumblin">
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
</div>



</body>
</html>