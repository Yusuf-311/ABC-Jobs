<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/thank-you.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	<div class="d-flex justify-content-center align-items-center">
            <div class="border border-2 shadow w-50 rounded">
                <div class="mb-4 text-center mt-5">
                    <img alt="" width = "100px" height="100px" src="images/image/Ceklist.png">
                <div class="text-center">
                    <h1>Thank You !</h1>
                   <p class="text-secondary">
              	Your account has been created and a verification email has been sent to 
              	<span class="text-primary"><%= request.getAttribute("email") %></span> 
              </p>
              <div class="wrapper">
                <a href="<%= request.getContextPath() %>">
                  <button class="btn btn-primary mt-3">CONTINUE</button>
                </a>
              </div>
                </div>
            </div>
           </div>
        </div>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>