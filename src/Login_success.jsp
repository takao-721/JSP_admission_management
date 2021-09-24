<%-- 
    Document   : Success
    Created on : 2018/09/01, 16:06:12
    Author     : yuasatakeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templete.css">
    </head>
    <body>
        <div id="page">


            <div id="header">
                <div id="header_title"> <img src="images/sicsr_logo.png" width="70" height="70" alt="SICSR"></div>
                <br><font size="50" font color="red">Symbiosis International University</font>
                <br><br>

                <div id="headerimg">
                    <center><img src="images/symbiosis2.jpg" width="1000" height="200" alt="SISIR"></center>
                </div>
            </div>

            <div id="menu">
                <ul class="menu_f01">
                    <li><a href="home.html">HOME</a></li>
                    <li><a href="aboutus.html">ABOUT US</a></li>
                    <li><a href="contactus.html">CONTACT US</a></li>

                </ul>
            </div>

            <div id="contents">

                <div id="main">
                    <!--////////////////////////////内容書き込み//////////////////////////////////////////////////////////////// -->
                    <!--//基本的にはメインの中に書き加えていく形で-->

                    <%
                        String SID = request.getParameter("SID");
                        String password = request.getParameter("password");
                        out.println(SID);
                                                
                        session.setAttribute("sid",SID);
                    %>                     
                    <center>
                        <font color = "red" size="100">
                        Registration Completion Form
                        </font>
                        <hr color = "red" size = "5">

                        <font size="30">Login is successful.</font>
                        <br><br><br><br>
                        <font size="20">Take exam</font>
                        <br><br>
                        <a href ="exam test.jsp" style="width:140px; height:20px" class="square_btn">Exam</a>
                        <br><br><br><br><br>
                        <font size=20>Confirm information.</font>
                        <br><br>
                        <a href ="confirm.jsp" style="width:140px; height:20px" class="square_btn">Confirm</a>
                        <br><br><br><br>
                    </center>

                    <font size="5">
                    <h3 align="right">By Symbiosis International University</h3>
                    </font>

                    
                    <br><br>

                    <!--/////////////////////////ここまで///////////////////////////////////////////////////////////////////// -->
                </div>
            </div>
        </div>
    </body>
</html>
