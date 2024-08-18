<%-- 
    Document   : adminLogin
    Created on : 12 Jan, 2022, 10:51:51 AM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <title>Admin Login</title>
        <style>            
            .btn{
                padding: 9px 14px;
                border-radius: 22px;
                color: white;
                background-color: red;
                font-weight: bold;
                font-size: 21px;
                margin: 0 3px;
                cursor: pointer;
            }

            body{
                background: #48c6ef;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(72, 198, 239, 0.5), rgba(111, 134, 214, 0.5));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(72, 198, 239, 0.5), rgba(111, 134, 214, 0.5))
            }
        </style>
    </head><body>
        <a href="index.html">
            <button class="btn">Home</button></a>
        <div align="center"></div>

        <%
            String username = (String) session.getAttribute("username");

            //redirect user to home page if already logged in
            if (username != null) {
                response.sendRedirect("home.jsp");
            }

            String status = request.getParameter("status");

            if (status != null) {
                if (status.equals("false")) {
                    out.print("<h3 style='color:red;'>Incorrect login details!</h3>");
                } else {
                    out.print("Some error occurred!");
                }
            }
        %>




        <section class="login-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-sec">
                        <h2 class="text-center">Admin Login</h2>
                        <form class="login-form" action="loginRequestHandler.jsp">
                            <div class="form-group">
                                <label for="exampleInputEmail1" class="text-uppercase">Username</label>
                                <input type="text" name="username"  class="form-control" placeholder="">

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1" class="text-uppercase">Password</label>
                                <input type="password" name="password"  class="form-control" placeholder="">
                            </div>


                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                    <small>Remember Me</small>
                                </label>
                                <input type="submit" class="btn btn-login float-right"></button>
                            </div>

                        </form>
                        <div class="copy-text">Created with <i class="fa fa-heart"></i> by  </a></div>
                    </div>
                    <div class="col-md-8 banner-sec">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <!--            <h2>Hello </h2>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>-->
                                        </div>	
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="https://images.pexels.com/photos/7097/people-coffee-tea-meeting.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <!--            <h2>This is Heaven</h2>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>-->
                                        </div>	
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="https://images.pexels.com/photos/872957/pexels-photo-872957.jpeg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <!--            <h2>This is Heaven</h2>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>-->
                                        </div>	
                                    </div>
                                </div>
                            </div>	   

                        </div>
                    </div>
                </div>
        </section>
    </body>              
</html>