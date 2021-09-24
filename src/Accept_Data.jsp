<%-- 
    Document   : Accept_Data
    Created on : 2018/08/31, 14:58:06
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
        <jsp:forward page="Display.jsp">

            <jsp:param name="txtnm" value="<%=nm %>"/>
            <jsp:param name="txtcourse" value="<%=cnm %>"/>

        </jsp:forward>
    </body>
</html>
