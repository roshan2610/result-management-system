<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="adminDash.css">
        <script src="adminDash.js"></script>    
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
                margin-right: 1400px;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>
       
        <div class="cotn_principal"><a href="index.html">
                    <button class="btn">Home</button></a>
            <div class="cont_centrar">

                <div class="cont_login">
                    <div class="cont_info_log_sign_up">
                        <div class="col_md_login">
                            <div class="cont_ba_opcitiy">

                                <h2>LOGIN</h2>  
                                <p>To Login as a Admin please LOG IN.</p> 
                                <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
                            </div>
                        </div>
                        <div class="col_md_sign_up">
                            <div class="cont_ba_opcitiy">
                                <h2>REGISTER</h2>


                                <p>To register youRself as admin please SIGN UP.</p>

                                <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
                            </div>
                        </div>
                    </div>
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

                    <div class="cont_back_info">
                        <div class="cont_img_back_grey">
                            <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
                        </div>

                    </div>
                    <form action="loginRequestHandler.jsp">
                        <div class="cont_forms" >
                            <div class="cont_img_back_">
                                <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
                            </div>
                            <div class="cont_form_login">

                                <!--<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>-->
                                <h2>LOGIN</h2>
                                <input type="text" name='username' placeholder="Enter your Username" />
                                <input type="password" name='password' placeholder="Enter your Password" />
                                <button class="btn_login" >LOGIN</button>
                            </div></form>

                    <form action="adminProcess.jsp">
                        <div class="cont_form_sign_up">
                            <!--<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>-->
                            <h2>SIGN UP</h2>
                            <input type="text" name='name' placeholder="Enter your name" />
                            <input type="text" name='username' placeholder="Enter Username" />
                            <input type="email" name='email' placeholder="Confirm Email" />
                            <input type="password" name='password' placeholder="Enter Password" />

                            <button class="btn_sign_up" >REGISTER</button>

                        </div>
                </div></div><BR>
        </div></div>
</body>
</html>
