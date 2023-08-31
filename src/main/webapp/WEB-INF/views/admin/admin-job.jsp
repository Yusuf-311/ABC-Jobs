<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp"%>
<link href="css/admin-dashboard.css" rel="stylesheet" />
</head>
<body>
	<div class="sidebar">
		<div class="header">ABC Jobs Community Portal</div>
		<ul>
			<li><a href="admin-dashboard"> <i
					class="fa-solid fa-gauge-high"></i> Dashboard
			</a></li>
			<li><a href="<%=request.getContextPath()%>"> <i
					class="fa-solid fa-house"></i> Home
			</a></li>
			<li><a href="admin-jobs"><i class="bi bi-briefcase-fill"></i></i>
					Jobs
			</a></li>
			<li><a href="adminLogout"> <i
					class="fa-solid fa-right-from-bracket"></i> Logout
			</a></li>

		</ul>
	</div>

	<!-- Page content -->
	<div class="content">
		<div class="content-header">
			<div class="admin-text-header pt-2">
				<h3 class="fw-semibold">Administration System</h3>
			</div>
		</div>

		<div class="content-table">
			<div class="admin-button mb-3">
				<a href="addjobaja" class="text-decoration-none">
					<button class="btn btn-primary">Add Job</button>
				</a>

			</div>

			<div class="table">
				<table id="data-table">
					<tr>
						<th>No</th>
						<th>Job Name</th>
						<th>Company</th>
						<th>Status</th>
						<th>Location</th>
						<th>Date</th>
						

						<th>Action</th>
					</tr>
					<c:forEach items="${jobs}" var="job" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<th>${job.job_name}</th>
							<th>${job.job_comp}</th>
							<th>${job.job_status}</th>
							<th>${job.job_location}</th>
							<th>${job.date}</th>
						
							<th>
               
                <a href="admin-delete-job?id=${job.id_lojob}" class="text-decoration-none">
                  <button class="btn btn-danger mb-1 mt-1">Delete</button>
                </a>
                <a href="<%=request.getContextPath()%>/viewdoc" class="text-decoration-none \">
                  <button class="btn btn-primary mb-1 mt-1">View</button>
                </a>
               
              </th>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>