<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<style>
.nav {
    display: flex;
    align-items: center;
    list-style: none;
    padding: 0;
    margin: 0;
}

.nav-item {
    margin-right: 20px; /* Adjust spacing between items */
}

.nav-item a {
    display: flex;
    align-items: center;
    padding: 10px;
    transition: background-color 0.3s, color 0.3s;
    text-decoration: none;
}

.nav-item a:hover {
background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);    color: #fff;
    font-weight: bold;
}

.nav-item a i {
    margin-right: 8px; /* Adjust spacing between icon and text */
}

.nav-item a:hover i {
    transform: scale(1.2); /* Enlarge icon on hover */
    transition: transform 0.3s;
}

/* Align the button properly with the other items */
.nav-item .btn {
    display: flex;
    align-items: center;
}

.nav-item .btn i {
    margin-right: 8px;
}
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container-fluid">
        <div class="d-flex align-items-center">
            <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical"></i>EKA Hospital</a>
            <span class="navbar-text text-white ms-3">
                Available Beds: <c:out value="${availableBeds != null ? availableBeds : 'N/A'}" />
            </span>
            
        </div>
        
			
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${empty userObj}">
                	<ul class="nav">
    					<li class="nav-item">
        					<a class="nav-link bg-red active" aria-current="page" href="Emergency.jsp">
         					   <button type="button" class="btn btn-danger btn-sm">
         					       <i class="fa-solid fa-triangle-exclamation"></i> Emergency
         					   </button>
        					</a>
   						 </li>
   					 <li class="nav-item">
   					     <a class="nav-link active" aria-current="page" href="admin_login.jsp">
   					         <i class="fa-solid fa-right-to-bracket"></i> ADMIN
   							     </a>
   					 </li>
   						 <li class="nav-item">
   						     <a class="nav-link active" aria-current="page" href="doctor_login.jsp">
  						          <i class="fa-solid fa-user-md"></i> DOCTOR
  						      </a>
  						  </li>
  						  <li class="nav-item">
   					     <a class="nav-link active" aria-current="page" href="user_login.jsp">
            <i class="fa-solid fa-user"></i> USER
        </a>
    </li>
</ul>


                </c:if>

                <c:if test="${not empty userObj}">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="view_appointment.jsp">VIEW APPOINTMENT</a></li>

                    <div class="dropdown">
                        <button class="btn btn-success dropdown-toggle" type="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-circle-user"></i>${userObj.fullName}</a>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                            <li><a class="dropdown-item" href="userLogout">Log out</a></li>
                        </ul>
                    </div>
                </c:if>

                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li> -->
            </ul>
        </div>
    </div>
</nav>
