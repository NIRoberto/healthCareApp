<%-- 
    Document   : pharmacy
    Created on : Nov 19, 2022, 3:26:15 PM
    Author     : CSE
--%>

<%@page import="login.User"%>
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
            />`
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body .content {
                display: grid;
                grid-template-columns: 15% 85%;
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
            body .main {
                display: grid;
                grid-template-columns: repeat(2, 50%);
                grid-template-rows: repeat(2, 50%);
                place-items: center;
                gap: 0rem;
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
            .content .main {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            form {
                display: flex;
                flex-direction: column;

                /* margin-top: 13rem; */
            }

            form div {
                display: flex;
                flex-direction: column;
            }

        </style>


    </head>
    <body>
        <nav
            class="navbar navbar-expand-lg d-flex justify-content-between shadow-sm p-4 navbar-light bg-white"
            >
            <%
                User user = (User) session.getAttribute("user");
                if (user == null) {
                    response.sendRedirect("login.jsp");
                }
            %>
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
                            <a href="index.jsp"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                    </ul>
                    <div class="d-flex">
                        <p class="h6 p-2">User Logged in </p>
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
                        <li class="sideLink"><a href="addMedecine.jsp"> Add Medicine </a></li>
                        <li class="sideLink"><a href="manageMedecine.jsp"> Manage medicine </a></li>
                        <li><a href="">Manufacturer</a></li>
<!--                        <li>
                            <span><i class="bi bi-receipt"></i></span>
                            <span> Invoice </span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="">Add Invoice </a></li>
                        <li class="sideLink"><a href="">Manage Invoice </a></li>-->
                        <li>
                            <span><i class="bi bi-flag"></i></span>
                            <span>User Management</span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="addUser.jsp">Add user </a></li>
                        <li class="sideLink"><a href="userManagement.jsp">Manage user</a></li>
                    </ul>
                </div>
            </div>
            <div class="main">
                <form action="RegisterServlet"  method="post">
                    <h1>Add user</h1>
                    <div>
                        <label class="form-label"> User name: </label>
                        <input type="text" class="form-control" name="name" required/>
                    </div>
                    <div>
                        <label class="form-label"> Email </label>
                        <input type="email" class="form-control" name="email" required/>
                    </div>
                    <div>
                        <label class="form-label"> Password </label>
                        <input type="password" class="form-control" name="password" required/>
                    </div>
                    <!-- comment -->
                    <div>
                        <label class="form-label"> Password </label>
                        <input type="text" placeholder="admin or local"  class="form-control" name="role" required/>
                    </div>
                    <div>
                        <button   class="btn btn-success">Save</button>
               
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
