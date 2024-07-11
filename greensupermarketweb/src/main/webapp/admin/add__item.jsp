<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Items</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
<%@include file="navbar.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">Add Items</h4>




<form action="../AddItem" method="post"
enctype="multipart/form-data">
<div class="form-group">
Item name:<input
name="iname" type="text" class="form-control"
id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
</div>
<div class="form-group">
Price:<input
name="iprice" type="text" class="form-control"
id="exampleInputEmail1" aria-describedby="emailHelp">
</div>
<div class="form-group">
Item Categories:<select
id="inputState" name="categories" class="form-control">
<option selected>--select--</option>
<option value="Vegetables">Vegetables</option>
<option value="Fruits">Fruits</option>
<option value="Bakery">Bakery</option>
<option value="Beverages">Beverages</option>
<option value="CookingEssentials">Cooking Essentials</option>
<option value="Frozen Food">Frozen Food</option>
</select><br>
</div>
<div class="form-group">
Item Status:<select
id="inputState" name="status" class="form-control">
<option selected>--select--</option>
<option value="Active">Active</option>
<option value="INactive">Inactive</option>

</select>

</div>

<div class="form-group">
Upload Photo:<input
name="iimg" type="file" class="form-control-file"
id="exampleFormControlFile1">
</div>
<button type="submit" class="btn btn-primary btn-block btn-sm">Add</button>
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