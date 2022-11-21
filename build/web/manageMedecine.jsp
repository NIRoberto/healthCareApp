<%-- 
    Document   : manageMedecine
    Created on : Nov 19, 2022, 3:27:25 PM
    Author     : CSE
--%>

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
            String isLogin = (String) session.getAttribute("email");
            if (isLogin == null) {
                response.sendRedirect("");
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
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                    </ul>
                    <div class="d-flex">
                        <p class="h6 p-2">Admin</p>
                        <a href="/index.html" class="btn btn-success py-2 px-4">Logout</a>
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
                                <span><i class="bi bi-speedometer"></i></span>
                                <span> <i class="bi bi-box2-heart"></i> Dashboard </span>
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
                        <li>
                            <span><i class="bi bi-receipt"></i></span>
                            <span> Invoice </span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        
                        <li class="sideLink"><a href="">Add Invoice </a></li>
                        <li class="sideLink"><a href="">Manage Invoice </a></li>
                        <li>
                            <span><i class="bi bi-flag"></i></span>
                            <span>Report</span>
                            <span><i class="bi bi-chevron-down"></i></span>
                        </li>
                        <li class="sideLink"><a href="">Sales report </a></li>
                        <li class="sideLink"><a href="">Product report </a></li>
                    </ul>
                </div>
            </div>
            <table class="table  table-bordered">
                <thead class="">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Name</th>
                        <th scope="col">Rate</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Manufacturer</th>
                        <th scope="col">Category</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>
                            <img
                                class="h-25 w-25"
                                src="https://i0.wp.com/www.recsmedix.com/wp-content/uploads/2018/03/c247-Image-1.jpg?fit=850%2C850&ssl=1"
                                alt="C 24/7"
                                />
                        </td>
                        <td>C24/7</td>
                        <td>20</td>
                        <td>200</td>
                        <td>American</td>
                        <td>food supplement</td>
                        <td class="d-flex justify-space-around">
                            <span class="m-1 btn-success"
                                  ><i class="bi bi-pencil-square"></i
                                ></span>
                            <span class="text-danger m-1"
                                  ><i class="bi bi-trash-fill"></i
                                ></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">1</th>
                        <td>
                            <img
                                class="h-25 w-25"
                                src="https://i0.wp.com/www.recsmedix.com/wp-content/uploads/2018/03/c247-Image-1.jpg?fit=850%2C850&ssl=1"
                                alt="C 24/7"
                                />
                        </td>
                        <td>C24/7</td>
                        <td>20</td>
                        <td>200</td>
                        <td>American</td>
                        <td>food supplement</td>
                        <td class="d-flex justify-space-around">
                            <span class="m-1 btn-success"
                                  ><i class="bi bi-pencil-square"></i
                                ></span>
                            <span class="text-danger m-1"
                                  ><i class="bi bi-trash-fill"></i
                                ></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">1</th>
                        <td>
                            <img
                                class="h-25 w-25"
                                src="https://i0.wp.com/www.recsmedix.com/wp-content/uploads/2018/03/c247-Image-1.jpg?fit=850%2C850&ssl=1"
                                alt="C 24/7"
                                />
                        </td>
                        <td>C24/7</td>
                        <td>20</td>
                        <td>200</td>
                        <td>American</td>
                        <td>food supplement</td>
                        <td class="d-flex justify-space-around">
                            <span class="m-1 btn-success"
                                  ><i class="bi bi-pencil-square"></i
                                ></span>
                            <span class="text-danger m-1"
                                  ><i class="bi bi-trash-fill"></i
                                ></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
