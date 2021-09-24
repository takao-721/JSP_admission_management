<%-- 
    Document   : bookdisplay
    Created on : 2018/08/29, 18:30:21
    Author     : sm041
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book display</title>
    </head>
    <body>
        <h1>The data form book table.</h1>
        <%
            //Register the Driver
            Class.forName("com.mysql.jdbc.Driver");

            //Establish the connection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");

            //Statement: To execute query
            Statement st = cn.createStatement();

            //Write the query
            String query = "select * from book";

            //Execute the query
            ResultSet rs = st.executeQuery(query);

            //Display the data from resultset
            while (rs.next()) {
                out.println("Book ID " + rs.getInt("bookid") + "<br>");
                out.println("Book Title " + rs.getString("booktitle") + "<br>");
                out.println("Book Price " + rs.getFloat("bookprice") + "<br>");
                out.println("********************************<br>");

            }


        %>
    </body>
</html>
