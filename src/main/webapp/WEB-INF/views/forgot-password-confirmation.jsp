<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/forgot-password-confirmation.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="forgot-password-confirmation" class="mt-5">
          <div class="container d-flex justify-content-center">
            <div class="forgot-password d-flex flex-column text-center">
              <img alt="" width = "100px" height="100px" class= "mx-auto" src="images/image/Ceklist.png">
              <h2 class="fw-semibold">Forgot Password Confirmation</h2>
              <p class="text-secondary">Please check your email to reset your password.</p>
              <div class="wrapper">
                <a class="btn btn-primary mt-3" href="<%= request.getContextPath() %>">Back To Home</a>
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>