<%-- 
    Document   : index.jsp
    Created on : Nov 19, 2022, 3:23:49 PM
    Author     : CSE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
  <head>
    <title>Home | Best E-health Care System</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"
    />
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
  </head>
  <body classs="bg-green-100">
    <nav class="navbar navbar-expand-lg navbar-light p-4 bg-white shadow-sm">
      <div class="container">
        <!-- <div class="navbar-brand"> -->
        <a class="navbar-brand" href="#">
          <img
            src="https://picsum.photos/seed/picsum/200/300"
            alt=""
            width="30"
            height="24"
            class="rounded m-2"
          />
          HopeSolution
        </a>
        <!-- </div> -->
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav m-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About us</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Solutions
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Clinic Management</a></li>
                <li>
                  <a class="dropdown-item" href="#"
                    >Pharmacy  management Platform</a
                  >
                </li>
                <!-- <li><hr class="dropdown-divider" /></li> -->
                <li>
                  <a class="dropdown-item" href="#">Tel-medecine facilty</a>
                </li>
              </ul>
            </li>
          </ul>
            
            <a href="login.jsp" class="btn btn-success py-2 px-4" >
            Login
            <i class="bi bi-box-arrow-right"></i>
          </a>
       
        </div>
      </div>
    </nav>

    <div class="main container-fluid">
      <div class="content">
        <h1 class="display-md-3">Online Software for you Clinic / hospital</h1>
        <p>
          HopeSolution Clinic/Hospital Information Management System (HIMS)
          software helps deliver superior healthcare delivery for doctors,
          clinics and hospitals.
        </p>
        <ul class="ul">
          <li>
            <span><i class="bi bii bi-check-square-fill"></i></span>
            <span> For Clinics </span>
          </li>
          <li>
            <span><i class="bi bii bi-check-square-fill"></i></span>
            <span> For Medical Centers </span>
          </li>
          <li>
            <span><i class="bi bii bi-check-square-fill"></i></span>
            <span> For Hospitals(HIMS) </span>
          </li>
        </ul>
        <button
          class="btn btn-outline-success my-4 py-2 px-4 btn-sm w-25 rounded"
        >
          Request demo
        </button>
      </div>
    </div>

    <div class="company container">
      <h3>HIPAA cloud hosted, trusted, provider focuses platform</h3>
      <div class="images row">
        <div>
          <img src="https://picsum.photos/200/300.jpg" alt="" class="" />
        </div>
        <div>
          <img src="https://picsum.photos/200/300.jpg" alt="" class="" />
        </div>
        <div>
          <img src="https://picsum.photos/200/300.jpg" alt="" class="" />
        </div>
        <div>
          <img src="https://picsum.photos/200/300.jpg" alt="" class="" />
        </div>
      </div>
    </div>
    <div class="container-fluid f1">
      <h2>Telemedicine Platform for Doctors/Hospitals/Clinics</h2>
    </div>
    <div class="container service">
      <div class="row d-flex card-service m-4">
        <div class="col-12 col-sm-6 col-md-4">
          <div
            class="card text-center text-lg text-dark bg-white mb-3"
            style="max-width: 18rem"
          >
            <div class="card-body"><i class="bi bi-wifi"></i></div>
            <div class="card-body">
              <h5 class="card-title">Scheduling With Payments</h5>
              <p class="card-text">
                Specify your schedule, collect payments. Integrate the widget
                with your website and your mobile app. It?s that simple!
              </p>
            </div>
          </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
          <div
            class="card text-center text-lg text-dark bg-white mb-3"
            style="max-width: 18rem"
          >
            <div class="card-body"><i class="bi bi-wifi"></i></div>
            <div class="card-body">
              <h5 class="card-title">HD Video/Audio</h5>
              <p class="card-text">
                You can have a HD Video/Audio call with your patients - both on
                web and app.
              </p>
            </div>
          </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
          <div
            class="card text-center text-lg text-dark bg-white mb-3"
            style="max-width: 18rem"
          >
            <div class="card-body"><i class="bi bi-wifi"></i></div>
            <div class="card-body">
              <h5 class="card-title">E-Prescription</h5>
              <p class="card-text">
                A powerful but simple e-prescription (EMR) will allow you to
                prescribe and share medications and advise
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container services">
      <h1>Clinic Management Software</h1>
      <p>
        Handling patient bills and appointment used to be a chaotic scene in
        hospitals and clinics. Not anymore! With the arrival of HopeSolution?s
        <span>Clinic Management Software</span>
        , a systematic process has evolved over the time. The best part of this
        software is that it has reduced the use of paper, keeping all important
        information in one place to access. Doctors could coordinate with other
        departments with great ease, regarding medical health records. The
        software has helped in saving time as prescriptions, bills and other
        calculations are maintained digitally. This helps Doctors to concentrate
        on their core activities.
      </p>

      <h3>
        The Leading Clinic Management System in Rwanda Manage Appointments,
        Bills, Payments and Patient Data with Ease!
      </h3>
      <div class="container">
        <div class="clinic pb-4 row">
          <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="shadow-sm card-services">
              <div class="card-body icons">
                <i class="bi bi-calendar3"></i>
              </div>
              <div>
                <h4>Appointment</h4>
              </div>
              <ul class="list-service">
                <li>Set up timings without any hurdle</li>
                <li>Manage patient appointments with IVR, app or online</li>
                <li>Handle the queue in a waiting room instantly</li>
              </ul>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="shadow-sm card-services">
              <div class="card-body icons">
                <i class="bi bi-cash-stack"></i>
              </div>
              <div>
                <h4>Billing</h4>
              </div>
              <ul class="list-service">
                <li>
                  Systematize the recording of payments & creation of bills
                </li>
                <li>
                  Systematize the recording of payments & creation of bills
                </li>
              </ul>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="shadow-sm card-services">
              <div class="card-body icons">
                <i class="bi bi-card-checklist"></i>
              </div>
              <div>
                <h4>Patient Records</h4>
              </div>
              <ul class="list-service">
                <li>
                  Keep a track of your patient visits & history; easily and
                  digitally!
                </li>
                <li>Printed prescriptions for easy understanding</li>
                <li>Improved care</li>
              </ul>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="shadow-sm card-services">
              <div class="card-body icons">
                <i class="bi bi-shield-shaded"></i>
              </div>
              <div>
                <h4>Safety and Security</h4>
              </div>
              <ul class="list-service">
                <li>
                  Confidentiality is priority! With the practice management
                  software, data is safe and secure
                </li>
                <li>We comply with the international data norms</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer class="footer bg-success text-light mb-0">
      <div class="footer-sec">
        <div class="sec">
          <h5 class="display-6">HopeSolutions</h5>
          <ul class="list-unstyled">
            <li>HopeSolutions Technologies, 91080 WORKSPACE (RW),</li>
            <li>N.Robert, Southern, Kigali, Rwanda</li>
            <li>
              <span><i class="bi bi-envelope"></i></span
              ><span>content@hopesolution.com</span>
            </li>
            <li>
              <span><i class="bi bi-telephone-fill"></i></span>+25078749177<span
              ></span>
            </li>
            <li>
              <span><i class="bi bi-people"></i></span>
              <span>About us</span>
            </li>
          </ul>
          <ul class="social">
            <li>
              <a href="#">
                <i class="bi bi-facebook"></i>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="bi bi-linkedin"></i>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="bi bi-twitter"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="sec">
          <h5>Solutions</h5>
          <ul>
            <li>Clinics management</li>
            <li>Hospital Management</li>
            <li>Telemedicine</li>
          </ul>
        </div>
        <div class="sec">
          <h5>Contact us</h5>
          <p class="p w-75">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque
            laudantium ducimus soluta possimus impedit esse neque tempore in
            eveniet quod voluptates hic natus officiis sit harum, deserunt nemo!
            Harum, perspiciatis!
          </p>
          <button class="btn btn-outline-light">Contact Us</button>
        </div>
      </div>
      <div class="border-t-2">
        <p class="text-light text-center py-4">
          Copyright © Docpulse - All Rights Reserved
        </p>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
