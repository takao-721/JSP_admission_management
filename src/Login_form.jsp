<%-- 
    Document   : Login_form
    Created on : 2018/09/01, 15:48:14
    Author     : yuasatakeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            //establish connection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admission", "root", "");

            String query = "select * from student where SID=?  and password=? ";

            Statement st = cn.createStatement();

            PreparedStatement pt = cn.prepareStatement(query);

            String SID = request.getParameter("SID");
            String name = null;
            String password = request.getParameter("password");

            //Set values to?
            pt.setString(1, SID);
            pt.setString(2, name);
            pt.setString(2, password);

            //ExecuteQuery
            ResultSet rs = pt.executeQuery();

            if (rs.next()) {
                out.println("Login Successfull!! Welcome to out site");
        %>
        <jsp:forward page="Login_success.jsp">
            <jsp:param name="SID" value="<%=SID%>"/>
            <jsp:param name="password" value="<%=password%>"/>
        </jsp:forward>
        <%
        } else {
            
        %>
        <%@include file="Login_form.html" %>
        <%
            
            }
        %>
        %>
    </body>
</html>
