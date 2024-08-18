<%-- 
    Document   : home
    Created on : 12 Jan, 2022, 12:17:57 PM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Admin Panel</title>
        <link rel="stylesheet" type="text/css" href="loginMain.css">
        <style>
            body{
                background: #48c6ef;
                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(72, 198, 239, 0.5), rgba(111, 134, 214, 0.5));
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(72, 198, 239, 0.5), rgba(111, 134, 214, 0.5))
            }
        </style>
    </head>
    <style>
        .split {
            height: 100%;
            width: 50%;
            position: fixed;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            padding-top: 200px;
        }
        .un{

            font-family: 'Dancing Script', cursive;
            font-size: 80px;
            margin-bottom: 30px;
            color: white;
            text-shadow: 4px 4px 8px #000000; 
        }
    </style>
    <body>
        <%
            String username = (String) session.getAttribute("username");

            //redirect user to login page if not logged in
//        if(username==null){
//         response.sendRedirect("adminLogin.jsp");
//        }
%>

    </body>

    <!DOCTYPE html>
    <html lang="en">
        <head>

            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!--<link rel="stylesheet" type="text/css" href="loginMain.css">-->
        </head>
        <body>

            <!DOCTYPE html>
        <html lang="en">
            <head>

                <meta charset="utf-8" />
                <meta name="viewport"
                      content="width=device-width,
                      initial-scale=1" />
                <!-- Load Bootstrap -->
                <link rel="stylesheet"
                      href=
                      "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
                      integrity=
                      "sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
                      crossorigin="anonymous" />
                <script src=
                        "https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                        integrity=
                        "sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
                crossorigin="anonymous"></script>
                <script src=
                        "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
                        integrity=
                        "sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
                crossorigin="anonymous"></script>
            </head><br><a href="logout.jsp" style="padding: 9px 14px;
                       border-radius: 05px;
                       color: white;
                       background-color: red;
                       font-weight: bold;
                       font-size: 21px;
                       margin-left: 78%;
                       cursor: pointer;text-decoration: none;">Logout</a>
            <body style="text-align: center;">
                <div class="container mt-3">
                    <h1 style="background: rgba(35, 35, 35, 1);
                        text-shadow: 0px 0px 5px rgba(255, 255, 255, 1), 
                        0px 0px 10px rgba(255, 255, 255, 1), 
                        0px 0px 15px rgba(255, 255, 255, 1),
                        0px 0px 20px rgba(73, 255, 24, 1),
                        0px 0px 30px rgba(73, 255, 24, 1),
                        0px 0px 40px rgba(73, 255, 24, 1),
                        0px 0px 55px rgba(73, 255, 24, 1),
                        0px 0px 75px rgba(73, 255, 24, 1);">
                        Admin Panel</h1>
                    <br><br>

                    <div class="container mt-3"
                         style="width: 1000px;height: 600px;">
                        <div class="card-group">
                            <div class="card"
                                 style="width: 200px;">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Show Students
                                    </h4><BR>
                                    <p class="card-text">
                                        To see Student results Click below.</p>

                                    <a href="showStudent.jsp"
                                       class="btn btn-primary">
                                        Show Results
                                    </a>
                                </div>
                                <img class="card-img-bottom"
                                     src=
                                     "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190530183756/Good-Habits-for-developers-programmers.png"
                                     alt="Card image"
                                     style="width: 100%;" />
                            </div>
                            <div class="card"
                                 style="width: 200px;">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Add Student
                                    </h4><BR>
                                    <p class="card-text">
                                        To add Student result Click below.</p>


                                    <a href="insert.html"
                                       class="btn btn-primary">
                                        Add Students
                                    </a>
                                </div>
                                <img class="card-img-bottom"
                                     src=
                                     "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190530183756/Good-Habits-for-developers-programmers.png"
                                     alt="Card image"
                                     style="width: 100%;" />
                            </div>
                            <div class="card"
                                 style="width: 200px;">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Update Student
                                    </h4><br>
                                    <p class="card-text">
                                        To update student data please visit below.
                                    </p>


                                    <a href="updateStudent.html"
                                       class="btn btn-primary">
                                        Update Students</a>
                                </div>
                                <img class="card-img-bottom"
                                     src=
                                     "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190530183756/Good-Habits-for-developers-programmers.png"
                                     alt="Card image"
                                     style="width: 100%;" />
                            </div>

                            <div class="card"
                                 style="width: 200px;">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Delete Record
                                    </h4><br>
                                    <p class="card-text">
                                        To permanently delete a record or data visit below.
                                    </p>


                                    <a href="deleteStudent.html"
                                       class="btn btn-primary">
                                        Delete Student</a>
                                </div>
                                <img class="card-img-bottom"
                                     src=
                                     "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190530183756/Good-Habits-for-developers-programmers.png"
                                     alt="Card image"
                                     style="width: 100%;" />
                            </div></div>
                        <BR><BR>
                    

                </div></div>

            </body>
        </html>

