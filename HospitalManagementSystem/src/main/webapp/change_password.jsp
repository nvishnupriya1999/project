<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%@include file="component/allcss.jsp" %>
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
				<p class="text-center fs-3">Change Password</p>
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success fs-3">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="ChangePassword" method="post">
							<div class="mb-3">
								<label class="form-label">Enter Old Password</label>
								<input type="text" name="oldpassword" class="form-control" required>
							</div>
							<div>
								<label class="form-label">Enter New Password</label>
								<input type="text" name="newpassword" class="form-control" required>
							</div>
							<input type="hidden" value="${userObj}" name="uid"><br>
							<button class="btn bg-success text-white col-md-12">Change Password</button>
						</form>
					</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>