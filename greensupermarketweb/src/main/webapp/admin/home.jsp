<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color:black;

}
a:hover{
text-decoration:none;
color:black;

}

</style>
</head>
<body>
<%@include file="navbar.jsp" %>



<div class="container">
<div class="row p-5">
<div class="col-md-3">
<a href="add__item.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
<h4>Add Items</h4>
------------
</div>
</div>
</a>
</div>
<div class="col-md-3">
<div class="card">
<a href="all_item.jsp">
<div class="card-body text-center">
<i class="fa-solid fa-store fa-3x text-danger"></i><br>
<h4>All Items</h4>
------------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<div class="card">
<a href="oders.jsp">
<div class="card-body text-center">
<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
<h4>Oders</h4>
------------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a  data-toggle="modal" data-target="#exampleModalCenter">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
<h4>Logout</h4>
------------
</div>
</div>
</a>
</div>

</div>
</div>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
        <h4>Do you want to LogOut</h4>
         <a href="..admin/home.jsp" type="button" class="btn btn-secondary" data-dismiss="modal">Close</a>
        <a href="../login.jsp" type="button" class="btn btn-primary">LogOut</a>
      </div>
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>
<!-- end logout model -->
<div style="margin-top: 160px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>