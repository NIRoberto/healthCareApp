<%-- 
    Document   : editMedecine
    Created on : Nov 23, 2022, 3:08:24 PM
    Author     : CSE
--%>

<%@page import="login.User"%>
<%@page import="medicine.MedModel"%>
<%@page import="medicine.MedDao"%>
<%@page import="login.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Pharmacy management system</title>
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


        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body .content {
                display: grid;
                grid-template-columns: 15% 85%;

                grid-template-rows: auto;
            }

            body .content .sidebar {
                background-color: rgb(25, 135, 84);
                color: white;
            }
            body .content ul a {
                text-decoration: none;
                color: white;
            }
            body ul {
                list-style-type: none;
            }

            body .content ul li {
                padding: 0.8rem;
            }
            body .content ul .sideLink {
                padding-left: 1.5rem;
                /* border: 1px solid red; */
            }

            body .content ul li:hover {
                background-color: rgb(20, 110, 68);
            }
            body .main form {
                /* grid-template-rows: repeat(2, 50%); */
                gap: 0rem;
            }

            body .main form {
                background-color: white;
                display: grid;
                place-items: center;
                grid-template-columns: repeat(2, 50%);
            }
            body .main form .form {
                /* border: 1px solid red; */
                display: flex;
                flex-direction: column;
                /* justify-content: space-around; */
            }
            body .main form .form div {
                display: flex;
                flex-direction: column;
            }

            body .main div {
                padding: 2rem;
                display: flex;
                /* min-height: 90vh; */
            }

            body .main div .tab {
                font-size: small;
            }
            body .main div .d-flex {
                background-color: white;
            }
            .values {
                display: flex;
                flex-direction: column;
            }
        </style>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            MedDao medicine = new MedDao(DBConnect.getConnection());
            MedModel med = MedDao.singleMedicine(id);
            User user = (User) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <nav
            class="navbar navbar-expand-lg d-flex justify-content-between shadow-sm p-4 navbar-light bg-white"
            >
            <div class="container-fluid">
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
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                    </ul>
                    <div class="d-flex">
                        <p class="h6 p-2">User Logged in</p>
                        <a href="logout.jsp" class="btn btn-success py-2 px-4">Logout</a>
                    </div>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="sidebar">
                <div>
                    <ul>
                        <li>
                            <a href="">
                                <!--<span><i class="bi bi-speedometer"></i></span>-->
                                <!--<span> <i class="bi bi-box2-heart"></i> Dashboard </span>-->
                            </a>
                        </li>
                        <li>
                            <span><i class="bi bi-speedometer"></i></span>
                            <span>Medicine</span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="addMedicine.jsp"> Add Medicine </a></li>
                        <li class="sideLink"><a href="manageMedecine.jsp"> Manage medicine </a></li>
                        <li><a href="">Manufacturer</a></li>
<!--                        <li>
                            <span><i class="bi bi-receipt"></i></span>
                            <span> Invoice </span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="">Add Invoice </a></li>
                        <li class="sideLink"><a href="">Manage Invoice </a></li>-->
                            <%  if (user.getRole().equals("admin")) { %>
                        <li>
                            <span><i class="bi bi-flag"></i></span>
                            <span>User Management</span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="addUser.jsp">Add user </a></li>
                        <li class="sideLink"><a href="userManagement.jsp">Manage user</a></li>
                            <% }%>
                    </ul>
                </div>
            </div>
            <div class="main">
                <center>
                    <h1 class="m-2">Edit  medicine</h1>
                </center>

                <form action=EditServlet   method="post">
                    <div class="form shadow-md rounded-2">
                        <!--<div>-->
                        <!--<label class="form-label" for=""> Medicine Image</label>-->
                        <!--<input type="file" />-->
                        <!--</div>-->

                        <div>
                            <input type="hidden" id="custId" name="id" value="<%= med.getId()%>" >
                        </div>                    
                        <div>
                            <label class="form-label" for="">Medicine name</label>
                            <input type="text" class="form-control"  name="name"  value="<%= med.getName()%>" required/>
                        </div>
                        <div>
                            <label class="form-label" for="">Rates</label>
                            <input type="text" class="form-control"  name="rate" value="<%= med.getRate()%>"  required/>
                        </div>

                        <div>
                            <label class="form-label" for="">Expired date</label>
                            <input type="date" class="form-control"  name="date" value="<%= med.getDate()%>"  required/>
                        </div>
                    </div>
                    <div class="form">
                        <div>
                            <label class="form-label" for="">Quantity</label>
                            <input type="text" class="form-control" name="quantity" value="<%= med.getQuantity()%>" required/>
                        </div>
                        <div>
                            <label class="form-label" for="">Category</label>
                            <input type="text" class="form-control"  name="category" value="<%= med.getCategory()%>" required/>
                        </div>
                        <!--<div>
                                                    <label class="form-label" for="">Batch No</label>
                                                    <input type="text" class="form-control" />
                            </div>-->
                        <div>
                            <label class="form-label" for="">Manufacturer name</label>
                            <!--                            <select name="" id="" name="manufacturer">
                                                            <option value="">----</option>
                                                            <option value="">m1</option>
                                                            <option value="">m2</option>
                                                            <option value="">m3</option>
                                                        </select>-->
                            <input type="text" class="form-control"  name="manufacturer"  value="<%= med.getManufacturer()%>" required/>
                        </div>
                    </div>
                    <button class="btn btn-success rounded-2   mb-4" style="border: 1px solid red" >Submit</button>
                </form>
            </div>
        </div>
    </body>
</html>
