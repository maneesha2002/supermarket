<div class="container-fluid" 
style="height: 10px: background-color:#64dd17">
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
</div>

<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-success">
<h3><i class="fa-solid fa-shop"></i><b>G-Supermarket</b></h3>
</div>
<div class="col-md-6">
<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" name="ch" placeholder="Search" aria-label="Search">
      <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>
<c:if test="${not empty userobj }">
<div class="col-md-3 ">
<a href="checkout.jsp"><i class="fa-solid fa-cart-plus fa-2x"></i></a>
<a href=""class="btn btn-success"><i class="fa-solid fa-user"></i>${userobj.name}</a>
<a href="logout" class="btn btn-primary"><i class="fa-solid fa-arrow-right-to-bracket"></i>LogOut</a>

</div>
</c:if>
<c:if test="${empty userobj }">
<div class="col-md-3">
<a href="login.jsp"class="btn btn-success"><i class="fa-solid fa-arrow-right-to-bracket"></i>Login</a>
<a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-user"></i>Register</a>

</div>
</c:if>



</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
 <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><b>Home</b> <span class="sr-only">(current)</span></a>
      </li>
    
    </ul>
    <form class="form-inline my-2 my-lg-0">

<c:if test="${not empty userobj }">
<div>

<a href="setting.jsp"class="btn btn-light"><i class="fa-solid fa-gear"></i>Settings</a>
<a href="contactus.jsp" class="btn btn-light"><i class="fa-solid fa-phone"></i>Contact Us</a>

</div>
</c:if>
<c:if test="${empty userobj }">
<div>
<a href="aboutus.jsp"class="btn btn-light"><i class="fa-solid fa-circle-info"></i>About Us</a>


</div>
</c:if>

    </form>
  </div>
</nav>