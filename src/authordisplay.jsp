<%-- 
    Document   : authordisplay
    Created on : 2018/08/29, 19:37:05
    Author     : sm041
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Author display</title>
    </head>
    <body>
        <h1>The data form author table.</h1>
        <%
            //Register the Driver
            Class.forName("com.mysql.jdbc.Driver");

            //Establish the connection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");

            //Statement: To execute query
            Statement st = cn.createStatement();

            //Write the query
            String query = "select * from author";

            //Execute the query
            ResultSet rs = st.executeQuery(query);

            //Display the data from resultset
            while (rs.next()) {
                out.println("Author ID " + rs.getInt("authorid") + "<br>");
                out.println("Author Name " + rs.getString("authorname") + "<br>");
                out.println("Author email " + rs.getString("authoremail") + "<br>");
                out.println("********************************<br>");

            }


        %>
    </body>
</html>
