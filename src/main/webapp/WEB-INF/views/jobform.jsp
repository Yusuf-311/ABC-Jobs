<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">

<link href="css/admin-add.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Home Page</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="row">



		<!-- Page content -->
		<div class="container-fluid bg-light p-3">
			<div class="">
				<div class="admin-text-header pt-2">
					<h3 class="fw-semibold">Add Jobs</h3>
				</div>
			</div>
		</div>
		<a class="mb-3 text-decoration-none text-secondary"
			href="<%=request.getContextPath()%>/admin-jobs"><i
			class="bi bi-chevron-left">back to dashboard</i></a>
		
		<div class="container p-5 shadow-sm">



			<form action="<%=request.getContextPath()%>/addaja" method="post"
				enctype="multipart/form-data" class="container px-5">

				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Job
						Name</label> <input type="text" name="job_name" class="form-control"
						id="exampleFormControlInput1">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Job
						Status</label> <input type="text" name="job_status"  class="form-control"
						id="exampleFormControlInput1">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">City</label>
					<input type="text" name="job_location" class="form-control"
						id="exampleFormControlInput1">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">
						Education</label> <input type="text" name="job_edu" class="form-control"
						id="exampleFormControlInput1">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Company</label>
					<input type="text" name="job_comp" class="form-control"
						id="exampleFormControlInput1">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Description</label>
					<textarea type="text" name="job_desc"  class="form-control"
						id="exampleFormControlInput1"></textarea>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">About
					</label>
					<textarea type="text" name="job_about" class="form-control"
						id="exampleFormControlInput1"></textarea>
				</div>
				<div class="mb-3">
					<label for="formFile" class="form-label">Company Logo
						example</label> <input class="form-control"  type="file" name="file" id="formFile">
				</div>
				
				<button class="btn btn-primary px-4" value="Save Job">Submit</button>
				
			</form>
			
		</div>
	</div>

</body>
</html>
