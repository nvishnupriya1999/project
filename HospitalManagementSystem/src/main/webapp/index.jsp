<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@ include file="component/allcss.jsp" %>
<style>
	.paint-card
	{
		box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
	}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hosp3.jpg" class="d-block w-100" alt="..." height=500px>
    </div>
    <div class="carousel-item">
      <img src="img/docts.png" class="d-block w-100" alt="..." height=500px>
    </div>
    <div class="carousel-item">
      <img src="img/hosp.jpg" class="d-block w-100" alt="..." height=500px>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<div class="container p-3">
		<p class="text-center fs-2 ">Why Choose Us?</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Patient Safety</p>
								<p>Your safety is out top priority. We adhere to stringent safety 
								protocols to ensure your well-being at all times</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Cleanliness and Hygiene</p>
								<p>Our hospital maintains cleanliness and hygiene to ensure 
								a safe and healthy environment for all patients and visitors.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Personalized Treatment Plans</p>
								<p>No two patients are alike. That's why we customize treatment
								planes to suit your unique needs, ensuring the most effective and 
								personalized care.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Expert Medical Team</p>
								<p>Our hospital is staffed with a team of highly skilled doctors,
								specialists, and healthcare professionals and many have international experience.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">24/7 Availability</p>
								<p>Our doctors are available round-the-clock to address your medical
								concerns and provide immediate care when needed.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Cutting-Edge Technology</p>
								<p>We invest in the lastest medical technology and equipment, ensuring
								accurate diagnoses and effective treatments for our patients.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doct1.jpg" width=400px height=600px>
			</div>

		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Meet Our Leadership Team</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/founder.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Michael Anderson</p>
						<p class="fs-7">(Founder or president)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/CEO.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.David Ramirez</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/CMO.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Aryan Malhotra</p>
						<p class="fs-7">(Chief Medical Officer)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/COO.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Anika Desai</p>
						<p class="fs-7">(Chief Operating Officer)</p>
					</div>
				</div>
			</div>

		</div>

	</div>

	<%@include file="component/footer.jsp" %>
</body>
</html>