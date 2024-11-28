<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index Page</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container p-5">
	<p class="text-center fs-3">Admin Dashboard</p>
	<c:if test="${not empty errorMsg}">
		<p class="fs-3 text-center text-danger">${errorMsg}</p>
		<c:remove var="errorMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty succMsg}">
		<p class="fs-3 text-center text-success">${succMsg}</p>
		<c:remove var="succMsg" scope="session"/>
	</c:if>
	<div class="row">
		<div class="col-md-4">
			<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-user-doctor"></i><br>
						<p class="fs-3 text-center">
							Doctor <br>
						</p>
					</div>
				</div>
		</div>
		
		<div class="col-md-4">
			<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-users"></i><br>
						<p class="fs-3 text-center">
							User <br>
						</p>
					</div>
				</div>
		</div>
		
		<div class="col-md-4">
			<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-regular fa-calendar-check"></i><br>
						<p class="fs-3 text-center">
							Total Appointment <br>
						</p>
					</div>
				</div>
		</div>
		
		<div class="col-md-4 mt-3">
			<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-star-of-life"></i><br>
						<p class="fs-3 text-center">
							Specialist<br>
						</p>
					</div>
				</div>
		</div>
	</div>
</div>

<div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Specialist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../AddSpecialist" method="post">
        	<div class="form-group">
				<label>Enter specialist name</label>
				<input type="text" name="specName" class="form-control">        	
        	</div>
        	<div class="text-center mt-3">
        		<button type="button" class="btn btn-primary">Save</button>
        	</div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>