<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link href="css/home.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Home Page</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.background-image {
	background-image: url("images/image/homepage.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
	height: 100vh;
	width: 100%;
	opacity: 95%;
}
</style>
<body class="m-0 border-0 bg-black-50">
	<%@ include file="../components/navbar.jsp"%>
	<div class="background-image pb-5 mb-5">
		<div class="container mb-5" style="height: 70vh">
			<div class="row" style="padding-top: 150px">
				<div class="col-sm-6">
					<div class="card-body text-light my-5 glass p-4 ">
						<h1 class="car-subtitle " style="letter-spacing: 5px;">
							Search Between More <br> Than <span class="text-primary">50.000</span>
							Tech Job
						</h1>
						<p class="card-text">
							ABC Community Portal is a place where everyone can search a job <br>
							whatever they want and apply for it.
						</p>
					</div>

				</div>
			</div>
		</div>

	</div>
	<div class="container mb-5 " style="margin-top: 400px">

		<div class="row g-2">
			<div class="col-md-4">
				<div class="card p-3 text-center px-4">

					<div class="user-image">

						<img src="images/image/jennie.jpg" class="rounded-circle"
							width="80">

					</div>

					<div class="user-content">

						<h5 class="mb-0">Bruce Hardy</h5>
						<span>Software Developer</span>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

					</div>

					<div class="ratings">
						<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
							class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>

					</div>

				</div>
			</div>

			<div class="col-md-4">

				<div class="card p-3 text-center px-4">

					<div class="user-image">

						<img src="images/image/rose.jpg" class="rounded-circle" width="80">

					</div>

					<div class="user-content">

						<h5 class="mb-0">Mark Smith</h5>
						<span>Web Developer</span>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

					</div>

					<div class="ratings">
						<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
							class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
							class="bi bi-star-fill"></i>

					</div>

				</div>

			</div>

			<div class="col-md-4">

				<div class="card p-3 text-center px-4">

					<div class="user-image">

						<img src="images/image/jisoo.jpg" class="rounded-circle"
							width="80">

					</div>

					<div class="user-content">

						<h5 class="mb-0">Veera Duncan</h5>
						<span>Software Architect</span>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

					</div>

					<div class="ratings">
						<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
							class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>

					</div>

				</div>

			</div>


		</div>

	</div>
	<div
		class="container rounded mb-5 partner shadow pb-5 pt-3 px-5 bg-white">
		<h1 class="text-center my-5">Work with the most innovative
			companies around the world</h1>
		<div class="row ms-5">
			<div class="col">
				<img alt="" src="images/image/github.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/figma.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/linkedin.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/microsoft.png">
			</div>

		</div>
		<div class="row ikan mt-5 ms-4">
			<div class="col">
				<img alt="" src="images/image/acer.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/cisco.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/lenovo.png">
			</div>
			<div class="col">
				<img alt="" src="images/image/samsung.png">
			</div>

		</div>
	</div>

    <button class="carousel-control-prev" type="button" data-bs-target="#jobCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#jobCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
	
	<div class="container">
		<div class="card-group ">
			<c:forEach var="job" items="${jobs}">
				<div class="card" style="width: 18rem;">
					<div class="card-body d-flex flex-column">
						<h5 class="card-title">${job.job_name}</h5>
						<h6 class="card-subtitle mb-2 text-muted">${job.company_name}</h6>
						<h6 class="card-subtitle mb-2 text-muted">${job.job_level}-${job.job_time}</h6>
						<div class="mt-auto">
							<button class="btn btn-primary">Apply Now</button>
						</div>
					</div>

				</div>
			</c:forEach>
		</div>
	</div>




	<%@ include file="../components/footer.jsp"%>
</body>
</html>
