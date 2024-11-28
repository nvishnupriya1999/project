<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up page</title>
<%@include file="component/allcss.jsp"%>
<style>
.paint-card
{
	box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center">User Register</p>
					
					<c:if test="${not empty succMsg}">
						<p class="text-center text-success fs-3">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty errorMsg}">
						<p class="text-center text-danger fs-3">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session"/>
					</c:if>
					
					<form action="UserRegister" method="post">
						<div class="md-4">
							<label class="form-label">Full Name</label>
							<input required type="text" name="fullname" class="form-control">
						</div>
						<div class="md-4">
							<label class="form-label">Email</label>
							<input required type="email" name="email" class="form-control">
						</div>
						<div class="md-4">
							<label class="form-label">Password</label>
							<input required type="password" name="password" class="form-control">
						</div>
						<br><button type="submit" class="btn bg-success text-white col-md-12">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>