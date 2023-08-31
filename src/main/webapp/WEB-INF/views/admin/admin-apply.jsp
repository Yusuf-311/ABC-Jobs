<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp"%>
<link href="css/admin-dashboard.css" rel="stylesheet" />
</head>
<body>
	<!-- The sidebar -->
	<div class="sidebar">
		<div class="header">ABC Jobs Community Portal</div>
		<ul>
			<li><a href="admin-dashboard"> <i
					class="fa-solid fa-gauge-high"></i> Dashboard
			</a></li>
			<li><a href="<%=request.getContextPath()%>"> <i
					class="fa-solid fa-house"></i> Home
			</a></li>
			<li><a href="admin-jobs"> <i class="bi bi-briefcase-fill"></i></i>
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
				<h3 class="fw-semibold">Check Employee</h3>
			</div>
		</div>
		<div class="content-table">
			<div class="admin-button mb-3"></div>

			<div class="table">
				<table id="data-table">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>

						<th>Company</th>

						<th>Action</th>
					</tr>
					<c:forEach items="${docs}" var="doc" varStatus="loop">
						<tr>
							<th>${loop.index + 1}</th>
							<th>${doc.name }</th>
							<th>${doc.email }</th>
							<th>${doc.phone }</th>

							<th><a
								href="<%=request.getContextPath()%>/downloadFile/${doc.id_docs}">Download</a>
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