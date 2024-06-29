<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

<%@include file="component/allcss.jsp"%>
<style type="text/css">
/* .paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
} */

 	.feature-card {
        border: none;
        background-color: #f8f9fa;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
        transition: transform 0.3s;
      }

      .feature-card:hover {
        transform: translateY(-5px);
      }

      .feature-card .icon {
        font-size: 2rem;
        color: #0d6efd;
      }

      .feature-card .card-body {
        text-align: center;
      }

      .feature-card h5 {
        margin-top: 10px;
        font-size: 1.25rem;
      }

      .full-width-section {
        background-color: powderblue;
        padding: 20px 0;
        width: 100vw;
        margin-left: calc(-50vw + 50%);
      }

      .container-custom {
        max-width: 100%;
      }

      .full-width-heading {
        background-color: white;
        padding: 10px 0;
        width: 100vw;
        margin-left: calc(-50vw + 50%);
      }

      .heading-container {
        max-width: 100%;
      }
      
      .carousel-caption {
    background-color: rgba(0, 0, 0, 0.6); /* Dark semi-transparent background */
    padding: 15px;
    border-radius: 10px;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.8); /* Text shadow for better readability */
}

.carousel-caption h5 {
    font-size: 1.75rem;
    font-weight: bold;
    margin-bottom: 10px;
}

.carousel-caption p {
    font-size: 1.25rem;
}
      
.available-beds {
    position: fixed;
    top: 20%;
    right: 20px;
    background-color: #f8d7da;
    color: #721c24;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
    <%-- <% 
        Integer availableBeds = (Integer) request.getAttribute("availableBeds");
    %>
    <div class="available-beds">
        <strong>Available Beds: </strong> <%= availableBeds != null ? availableBeds : "N/A" %>
    </div> --%>

    <%@include file="component/navbar.jsp"%>

    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/hos_buliding.jpg" class="d-block w-100" alt="..." height="600px">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="background-color: black; display: inline;">Take The Best Quality Health Treatment</h5><br>
                <p style="background-color: black; display: inline;">Give the gift of good health to your loved ones</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="img/records.jpg" class="d-block w-100" alt="..." height="600px">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="background-color: black; display: inline;">Quality Management System</h5><br>
				<p style="background-color: black; display: inline;">DevCare proHealth Check for a healthier tomorrow!</p>

            </div>
        </div>
        <div class="carousel-item">
            <img src="img/reception.jpg" class="d-block w-100" alt="..." height="600px">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="background-color: black; display: inline;">Occupational Health and Safety Management System</h5><br>
                <p style="background-color: black; display: inline;">A Good Laugh and Long Sleep Are The Best Cures In Doctor's Book</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


    <!-- service -->
   <div class="full-width-heading">
      <div class="heading-container text-center">
        <p class="fs-2 mb-0">Key Features of Our Hospital</p>
      </div>
    </div>

    <div class="full-width-section">
      <div class="container container-custom">
        <div class="row">
          <div class="col-md-8 p-5">
            <div class="row">
              <div class="col-md-6">
                <div class="card feature-card">
                  <div class="card-body">
                    <div class="icon">
                      <i class="fas fa-leaf"></i>
                    </div>
                    <h5>Homeopathy</h5>
                    <p>Explore alternative medicine practices like homeopathy for holistic wellness solutions.</p>
                  </div>
                </div>
              </div>

              <div class="col-md-6">
                <div class="card feature-card">
                  <div class="card-body">
                    <div class="icon">
                      <i class="fas fa-tooth"></i>
                    </div>
                    <h5>Dentistry</h5>
                    <p>Discover advanced dental care for healthy smiles and oral hygiene.</p>
                  </div>
                </div>
              </div>

              <div class="col-md-6 mt-2">
                <div class="card feature-card">
                  <div class="card-body">
                    <div class="icon">
                      <i class="fas fa-pills"></i>
                    </div>
                    <h5>Medicine</h5>
                    <p>Explore modern medicine for comprehensive healthcare solutions and treatment options.</p>
                  </div>
                </div>
              </div>

              <div class="col-md-6 mt-2">
                <div class="card feature-card">
                  <div class="card-body">
                    <div class="icon">
                      <i class="fas fa-heartbeat"></i>
                    </div>
                    <h5>Blood Bank</h5>
                    <p>Support community health by donating blood to our local blood bank.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex align-items-center">
            <img alt="" src="img/stud.jpg" class="img-fluid rounded">
          </div>
        </div>
      </div>
    </div>

    <hr>

    <div class="container p-2">
        <p class="text-center fs-2">Our Team</p>

        <div class="row">
            <div class="col-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doc5.png" width="300px" height="300px">
                        <p class="fw-bold fs-5">Dr. Debarjit</p>
                        <p class="fs-7">(Chief Doctor)</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doc2.png" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dr. Jani</p>
                        <p class="fs-7">(Dentist)</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doc3.png" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dr. Satya</p>
                        <p class="fs-7">(Orthologist)</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doc4.png" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dr. Susri</p>
                        <p class="fs-7">(Cardiologist)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file="component/footer.jsp" %>
<!-- Bootstrap Bundle with Popper -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
