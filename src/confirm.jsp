<%-- 
    Document   : confirm
    Created on : 2018/09/03, 19:45:19
    Author     : sm041
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
                        Object obj = session.getAttribute("sid");
                        String sid = obj.toString();

                        //Register the Driver
                        Class.forName("com.mysql.jdbc.Driver");

                        //Establish the connection
                        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admission", "root", "");

                        //Write the query
                        String query = "select * from student where sid=" + sid;

                        //PreparedStatement pt = cn.prepareStatement(query);
                        Statement st = cn.createStatement();

                        //Execute the query
                        ResultSet rs = st.executeQuery(query);

                    %>
                    <center>
                        <font size="20">Student information</font>
                        <br>
                        <%            //Display the data from resultset
                            out.println("********************************<br>");
                            while (rs.next()) {
                                out.println("Student ID : " + rs.getInt("sid") + "<br>");
                                out.println("Student Name : " + rs.getString("sname") + "<br>");
                                out.println("Student Address : " + rs.getString("address") + "<br>");
                                out.println("Student Interest : " + rs.getString("interest") + "<br>");
                                out.println("Student Education : " + rs.getString("education") + "<br>");
                                out.println("Student Grade : " + rs.getString("grade") + "<br>");
                                out.println("Student Admission : " + rs.getString("admission") + "<br>");
                                /*out.println("Student Mark" + rs3.getString("mark") + "<br>");
                            out.println("Student Course" + rs2.getString("cid") + "<br>");
                            out.println("Student admission_exam" + rs3.getString("ename") + "<br>");*/
                            }
                            out.println("********************************<br>");



                        %>
                    
                        <a href ="Login_success.jsp" style="width:140px; height:20px" class="square_btn">Return</a>
                    </center>
                    <br><br>

                    <!--/////////////////////////ここまで///////////////////////////////////////////////////////////////////// -->
                </div>
            </div>
        </div>
    </body>
</html>
