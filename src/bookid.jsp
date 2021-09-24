<%-- 
    Document   : bookid
    Created on : 2018/08/30, 15:06:18
    Author     : sm041
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
            //Register the Driver
            Class.forName("com.mysql.jdbc.Driver");
            
            //Establish the connection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
            
            //Query
            String query="select booktitle,bookprice from book where bookid=?";
            
            //Statement
            PreparedStatement pt=cn.prepareStatement(query);
                        
            //To read bookid
            int id=Integer.parseInt(request.getParameter("txtid"));
            
            //Set value to question mark
            pt.setInt(1, id);
            
            //Execute the query
            ResultSet rs=pt.executeQuery();
            
            //Display the result
            while(rs.next()){
                out.println("Booktitle is=" +rs.getString("booktitle")+"<br>");
                out.println("Bookprice is=" +rs.getString("bookprice"));
            }

            %>
    </body>
</html>
