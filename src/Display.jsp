<%-- 
    Document   : Display
    Created on : 2018/08/31, 15:18:10
    Author     : sm041
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nm = request.getParameter("txtnm");
            String cnm = request.getParameter("txtcourse");
        %>
        <h2>Your Name is</h2><%=nm%>
        <h2>Your Course Name is</h2><%=cnm%>
    </body>
</html>
