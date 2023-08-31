<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">

<link href="css/admin-add.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>

<%@ include file="../components/navbar.jsp"%>
<div class="row bg-light mt-4">


<div class="col-4 shadow-sm p-5 mx-3 text-center">
<h5>Share Post</h5>
<p></p>


 <form action="<%=request.getContextPath()%>/create" method="post">
           	
           	<input type="hidden" name="id_user" value="${profile.id_profile+3}">
           	<input type="hidden" name="name" value="${profile.first_name} ${profile.last_name}">

           	<div class="col-md-12 mb-3">
          		<label for="title" class="form-label">Title:</label>
				<input type="text" class="form-control" id="title" name="title" required>
        	</div>
        	<div class="col-md-12 mb-3">
         		<label for="content" class="form-label">Content Thread:</label>
				<textarea class="form-control" id="content" name="content" placeholder="what do you want talk about?" required></textarea>
					<div class="invalid-feedback">Please fill out this field.</div>
       		</div>


        	<div class="col-12">
         		<button type="submit" class="btn" style="background: #86A6DF; color: white">Post</button>
        	</div>

    </form>
    
</div>
<div class="col px-5">
<c:forEach var="thread" items="${thread}">

<div class="container-fluid card border-secondary mb-3 " >
  <div class="card-header">${thread.name}</div>
  <div class="card-body text-secondary">
    <h5 class="card-title">${thread.title }</h5>
    <p class="card-text">${thread.content}</p>
  </div>
 </div>
  
    
</c:forEach>



</div>
</div>

<%@ include file="../components/footer.jsp"%>
</body>
</html>