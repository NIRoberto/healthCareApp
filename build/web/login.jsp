<%-- 
    Document   : login
    Created on : Nov 19, 2022, 3:25:29 PM
    Author     : CSE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      body {
             background-image: url(https://i.pinimg.com/originals/21/54/cd/2154cd17b398cf202ab361615fe313af.jpg);
             display: flex;
             justify-content: center;
             align-items: center;
      }

      .loginCard {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 2rem;
        background-color: #fff;
        place-items: center;
        place-content: center;
        border-radius: 5px;
        /* grid-template-rows: 1fr; */
        margin-top: 5rem;
        height: 70vh;
        width: 60%;
      }
      .loginCard .image {
        /* height: 100px;
       width: 100px; */
        height: 100%;
        width: 100%;
      }

      .loginCard .image img {
        width: 100%;
        height: 100%;
        z-index: 11;
      }

      .form-label {
        text-align: left !important;
        padding: 0.4rem;
      }

      .btn {
        margin-top: 1rem;
      }

      h4{
        margin-bottom: 2rem;
      }
    </style>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>
  <body>
      <%
              String   isLogin = (String) session.getAttribute("email");
               if(isLogin != null){
                    response.sendRedirect("addMedecine.jsp");
                  }            
        %>
        
      <div class="loginCard shadow-sm rounded-md">
        <div class="image">
            <img src="img/doc.png" alt="doctor"/>
        </div>
          <form action="LoginServlet"  method=post>
          <!-- <h4>Welcome Back!</h4> -->
          <div class="bg-white rounded"> 
            <div class="">
              <label for="" class="form-label text-left"> Email: </label>
              <input type="text" name="email" class="form-control" id="email" />
            </div>
            <div class="">
              <label for="" class="form-label text-left"> Password: </label>
              <input type="password" class="form-control"id="password" name="password" />
            </div>
          </div>
          <div>
              <button class="btn w-100 btn-success">Login</button>
          </div>
        </form>
      </div>
  </body>
</html>
