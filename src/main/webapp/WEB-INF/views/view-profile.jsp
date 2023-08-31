<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/view-profile.css" rel="stylesheet" />
<link>
</head>
<body>
<div class="root">
      <%@ include file="../components/navbar.jsp" %>
 <div class="container mt-5">
      <div class="row d-flex align-items-center shadow rounded mb-5">
        <div class="col-md-8">
          <div class="row border-end">
            <div class="col-4 p-5">
              <img src="images/image/jennie.jpg" class="rounded-circle" width="100px" height="100px" alt="profile-pict" />
            </div>
            <div class="col my-auto">
              <p class="fs-5 fw-bold">${view.first_name} ${view.last_name}</p>
              <p>Software engineer at ${view.getJob().getCompany_name()}</p>
            </div>
          </div>
        </div>
        <div class="col text-end">
          <div class="text-start ms-3">
            <p>Country :${view.country}</p>
            <p>City : ${view.city}</p>
          </div>
        </div>
      </div>
      <div class="row border-top mt-5 px-3">
        <div class=" col-md-8 shadow rounded mt-4 p-3">
          <p class="fw-bold">About</p>
     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum possimus ipsam dolor nobis at, reiciendis cupiditate, neque iusto sint porro et nostrum qui perferendis ratione nihil veniam corrupti eaque quia. Sed, aperiam eaque quae accusamus officiis hic quia quod aut quam? Non quod vitae nisi cupiditate consequuntur magni reprehenderit molestiae labore voluptatibus accusantium. Voluptatibus rerum suscipit maxime fuga in, corrupti neque. Unde distinctio, minima accusantium dolorum corporis eos harum quae modi omnis totam dignissimos minus temporibus voluptatibus molestiae exercitationem, tempore eum eius voluptatum officia, veritatis quia. Sint, fuga. Consequuntur earum sapiente enim eveniet sunt aut maiores possimus a perspiciatis repellendus.</p>
        </div>
        <div class="col-md-4 mt-4 px-sm-3">
          <p class="fw-bold border-bottom ps-3">Similar Profile</p>
          <div class="border-bottom row mt-3 pb-3">
            <div class="col-3">
              <img src="images/image/jennie.jpg" class="rounded-circle ms-2" width="60px" height="60px" alt="" />
            </div>
            <div class="col text-start fs-6 lh-sm row">
              <span class="fw-bold">Kim Jennie</span>
              <span>SoftWare Engineer</span>
              <span class="fw-lighter">South Korea</span>
              <span>YG Entertainment</span>
            </div>
        </div>
            <div class="mt-3">
              <div class="border-bottom row mt-3 pb-3">
                <div class="col-3">
                  <img src="images/image/jisoo.jpg" class="rounded-circle ms-2" width="60px" height="60px" alt="" />
                </div>
                <div class="col text-start fs-6 lh-sm row">
                  <span class="fw-bold">Kim Ji Soo</span>
                  <span>SoftWare Engineer</span>
                  <span class="fw-lighter">South Korea</span>
                  <span>YG Entertainment</span>
                </div>
              </div>
            </div>
            <div class="mt-3">
              <div class="border-bottom row mt-3 pb-3">
                <div class="col-3">
                  <img src="images/image/rose.jpg" class="rounded-circle ms-2" width="60px" height="60px" alt="" />
                </div>
                <div class="col text-start fs-6 lh-sm row">
                  <span class="fw-bold">Roseanne Park</span>
                  <span>SoftWare Engineer</span>
                  <span class="fw-lighter">Australia</span>
                  <span>YG Entertainment</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>