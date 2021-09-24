<%-- 
    Document   : addbook
    Created on : 2018/08/29, 20:10:58
    Author     : sm041
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           //Register the Driver
            Class.forName("com.mysql.jdbc.Driver");
            //Establish the connection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
            
            //Fetch the data from HTML page
            int id=Integer.parseInt(request.getParameter("txtid"));
            String title=request.getParameter("txttitle");
            float price=Float.parseFloat(request.getParameter("txtprice"));
            //Query
            String query="insert into book values(?,?,?)";
            //String query="UPDATE book SET booktitle = ?,bookprice = ? WHERE bookid = "+fff;
            //Statement
            PreparedStatement pt=cn.prepareStatement(query);

            //Set the values
            pt.setInt(1, id);
            pt.setString(1, title);
            pt.setFloat(2, price);
            
            int count=pt.executeUpdate();
            
            if(count>0)
                out.println("Book details added in table");
            
            
        %>
    </body>
</html>
