<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isELIgnored = "false" %>   
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/login.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
      
      
        <section id="login">
          <div class="container mt-5 w-50">
            <div class="d-flex justify-content-center">
              <div class="login-form w-50">
                <h2 class="card-title text-center mb-5 fw-light fs-2">Login</h2>
               
                <!-- Login Form -->
                <form:form action="doLogin" method="post" modelAttribute="userLogin" class="mt-4 d-flex flex-column" id="form">
                  <div class="form-group">
                    <form:input path="email" id="loginEmail" class="form-control mb-3" style="${error}" type="text" placeholder="Email" />
                  </div>
                  <div class="form-group">
                    <form:input path="password" id="loginPassword" class="form-control" style="${error}" type="password" placeholder="Password" />
                  </div>
                  <span style="color: #b02a37; margin-top: 6px">${message}</span>
                  
                  <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgot-password">Forgot Password?</a>
                  </div>
                  <button class="btn btn-primary my-1" type="submit">Login</button>
                </form:form>
                
                <p class="p-0 mt-3">
                  Dont have an account?
                  <a class="text-primary text-decoration-none" href="register"> Register </a>
                </p>
                <p class="p-0 mt-3">
                  Login as Administrator
                  <a class="text-primary text-decoration-none" href="admin-login"> Login </a>
                </p>
               

               
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>