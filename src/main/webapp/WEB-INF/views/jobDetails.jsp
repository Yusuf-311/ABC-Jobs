<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
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
<link href="css/home.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Job Details</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container-fluid row p-md-5 mb-2">
		<a class="mb-3 text-decoration-none text-secondary"
			href="<%=request.getContextPath()%>/joblist"><i
			class="bi bi-chevron-left">back to search result</i></a>
		<div class="mx-3 shadow-sm col p-5 ">
			<div class="mb-sm-5">
				<h6 class="fw-bold">${lojob.job_name}&nbsp;at
					&nbsp;${lojob.job_comp }</h6>
				<i class="bi bi-geo-alt text-primary">&nbsp;
					${lojob.job_location}</i>&nbsp; <i class="bi bi-briefcase text-primary">&nbsp;${lojob.job_status}</i>&nbsp;
				<i class="bi bi-wallet text-primary">&nbsp;Negotiable</i>
			</div>


			<p class="fw-bold">About Company :</p>
			<p>${lojob.job_about }</p>
			<p class="fw-bold">Description :
			<p>${lojob.job_desc}</p>
		</div>


		<c:if test="${profile != null}">
			<div class="container p-4 shadow-sm col-sm-4">
				<h6>Apply For job :</h6>




				<form action="<%=request.getContextPath()%>/postdoc"
					id="uploadFiles" name="uploadFiles" method="post"
					enctype="multipart/form-data">
					<div class="input-group">
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Full
								Name</label> <input type="text" name="name" class="form-control"
								id="exampleFormControlInput1" placeholder="">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Email
								address</label> <input type="email" name="email" class="form-control"
								id="exampleFormControlInput1" placeholder="">
						</div>

						<div class="mb-3">
							<input type="hidden" name="phone" class="form-control"
								id="exampleFormControlInput1" placeholder="" value="${lojob.job_name} at ${lojob.job_comp}">
						</div>
						

						<div class="mb-3">
							<label for="formFileMultiple" class="form-label">Resume</label> <input
								class="form-control" type="file" name="files"
								id="formFileMultiple" multiple>
						</div>
						
						
						<p class="text-danger">Format name for CV : CV_Your Name_City</p>

					</div>
					<button class="btn btn-primary mt-3 px-5 text-center" type="submit">Submit</button>



				</form>


			</div>

		</c:if>
		</div>
		<%@ include file="../components/footer.jsp"%>
</body>
</html>