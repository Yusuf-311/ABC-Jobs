<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/user-profile.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>
 <div class="container mt-5">
      <div class="row d-flex align-items-center shadow rounded mb-5">
        <div class="col-6">
          <div class="row border-end">
            <div class="col-4 p-5">
              <img src="images/image/jennie.jpg" class="rounded-circle" width="100px" height="100px" alt="profile-pict" />
            </div>
            <div class="col my-auto">
              <p class="fs-5 fw-bold">${profile.first_name} ${profile.last_name}</p>
              <p>Software engineer at ${profile.getJob().getCompany_name()}</p>
            </div>
          </div>
        </div>
        <div class="col text-end">
          <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
   More
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="edit-profile">Edit profile</a></li>
    <li><a class="dropdown-item" href="change-password">Change Password</a></li>
   
  </ul>
</div>
          <div class="text-start ms-3">
            <p>Country :${profile.country}</p>
            <p>City :${profile.city}</p>
          </div>
        </div>
      </div>
      <div class="row border-top mt-5">
        <div class="col-8 shadow rounded mt-4 p-3">
          <p class="fw-bold">About</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum perspiciatis numquam quisquam blanditiis voluptas quam fuga exercitationem id illo. Reiciendis ut officia inventore maiores explicabo. Soluta consequatur accusantium laudantium perferendis.</p>
        </div>
        <div class="col-4 mt-4">
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