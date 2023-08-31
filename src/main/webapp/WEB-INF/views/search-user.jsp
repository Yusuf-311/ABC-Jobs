<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/search-user.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="search-users">
          <div class="container d-flex flex-column  p-5 rounded ">
            <div class="heading ">
              <h2 class="fw-semibold">Search User</h2>
            </div>
            
            <form:form action="search" method="get" modelAttribute="searchUser" class="search-user-form d-flex">
              <form:input path="keyword" type="text" id="search-user" placeholder="Search" />
              <button type="submit" class="btn btn-outline-primary btn-search">
                search
              </button>
            </form:form>

            <!-- Search Result -->
            <div id="search-results" class="mt-5">
             <c:choose>
        <c:when test="${empty result}">
           <c:forEach items="${user}" var="user">
                    <div class="result d-flex pb-3 pt-3" onclick="location.href = 'view-profile?name=${user.first_name}&id=${user.id_profile}';">
                        <div class="image me-3">
                            <img src="images/image/jennie.jpg" alt="" />
                        </div>
                        <div class="detail">
                            <p class="name fw-bold">${user.first_name} ${user.last_name}</p>
                            <p class="address text-secondary">${user.country}</p>
                            <p>${user.city}</p>
                            <p class="company text-secondary"><i class="fa-solid fa-building"></i> ${user.getJob().getCompany_name()}</p>
                        </div>
                    </div>
                </c:forEach>

        </c:when>
        <c:otherwise>
            <div id="search-results">
                <c:forEach items="${result}" var="r">
                    <div class="result d-flex pb-3 pt-3" onclick="location.href = 'view-profile?name=${r.first_name}&id=${r.id_profile}';">
                        <div class="image me-3">
                            <img src="images/image/jennie.jpg" alt="" />
                        </div>
                        <div class="detail">
                            <p class="name fw-bold">${r.first_name} ${r.last_name}</p>
                            <p class="address text-secondary">${r.country}</p>
                            <p>${r.city}</p>
                            <p class="company text-secondary"><i class="fa-solid fa-building"></i> ${r.getJob().getCompany_name()}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>