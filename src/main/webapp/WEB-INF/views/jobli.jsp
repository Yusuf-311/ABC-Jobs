<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp"%>
<link href="css/jobs.css" rel="stylesheet" />
<link rel="stylesheet" href="path_to_your_stylesheet.css">
<link href="css/search-user.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
		<%@ include file="../components/navbar.jsp"%>
		<div class="container">
			<section id="search-users">
				<div class="container d-flex flex-column  p-5 rounded ">
					


					<c:forEach var="job" items="${jobs}">
						<a href="jobdetails?id=${job.id_lojob}"
							class="row mx-2 py-4 jobs border-bottom"
							style="text-decoration: none; color: black;">

							<div class="col-xl-2 col-md-2">
								<img src="data:image/jpeg;base64,${job.image}"
									alt="Product Image" width="80" height="80">

							</div>
							<div class="col">
								<div class="row">

									<h5>${job.job_name}</h5>
									<p>${job.job_location}</p>


									<div class="col-md-5">
										<p class="bi bi-person">&nbsp;${job.job_comp}</p>
									</div>
									<div class="col">

										<p class="bi bi-briefcase-fill">&nbsp;${job.job_status}</p>
									</div>
								</div>

							</div>
							<div class="col-xl-2 col-md-3">
								<p>${job.date}</p>
							</div>
						</a>
					</c:forEach>





				</div>
			</section>
		</div>
</body>
</html>
