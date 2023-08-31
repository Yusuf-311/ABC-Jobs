<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/edit-profile.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <div class="container mt-5 mb-5">
          <form:form action="save-edit" method="post" modelAttribute="profile" id="form" onsubmit="return checkValidation()">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column regis-wrapper">
                  <div class="heading">
                    <h6>Edit Profile</h6>
                  </div>
                   <img src="images/image/jennie.jpg" class="rounded-circle mb-3" width="130px" height="130px" alt="profile-pict" style="margin-left: 155px" />
    
                  
                  <!-- id -->
                  <div class="form-group">
                    <form:hidden path="id_profile" class="form-control" />
                  </div>

                  <!-- First Name -->
                  <div class="row">
                  <div class="form-group col">
                    <label for="first_name">First Name</label>
                    <form:input path="first_name" type="text" name="first_name" class="form-control" id="fname"/>
                  </div>
                  <p class="error errorFname">First Name is required</p>

                  <!-- Last Name -->
                  <div class="form-group col">
                    <label for="last_name">Last Name</label>
                    <form:input path="last_name" type="text" name="last_name" class="form-control" id="lname" />
                  </div>
                  <p class="error errorLname">Last Name is required</p>
				 </div>
                  <!-- Country -->
                  <div class="form-group">
                    <label for="country">Country</label>
                    <form:input path="country" type="text" name="country" class="form-control" id="country" />
                  </div>
                  <p class="error errorCountry">Country is required</p>

                  <!-- City -->
                  <div class="form-group">
                    <label for="city">City</label>
                    <form:input path="city" type="text" name="city" class="form-control" id="city" />
                  </div>
                  <p class="error errorCity">City is required</p>
                  

                  <button type="submit" class="btn btn-primary mt-4">Save Changes</button>
                </div>
              </div>
            </div>
          </form:form>
        </div>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>