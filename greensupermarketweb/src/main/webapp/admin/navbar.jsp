 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<div class="container-fluid" 
style="height: 10px: background-color:#64dd17">
</div>

<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-success">
<h3><i class="fa-solid fa-shop"></i>G-Supermarket</h3>
</div>


<div class="col-md-3">



</div>
</div>
</div>
<!-- logout model -->
<!-- Button trigger modal -->


<!-- Modal -->
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



<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
 <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../admin/home.jsp"><b>Home </b><span class="sr-only">(current)</span></a>
      </li>
     
    </form>
  </div>
</nav>