<%--
    Document   : capital
    Created on : 2018/08/28, 1:49:12
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
            String choice = request.getParameter("country");

            if (choice.equals("Japan")) {
                out.println("capital is Tokyo");
            } else if (choice.equals("India")) {
                out.println("capital is New Delhi");
            } else if (choice.equals("America")) {
                out.println("capital is Washington");
            } else if (choice.equals("France")) {
                out.println("capital is Paris");
            } else if (choice.equals("China")) {
                out.println("capital is Beijing");
            }
            else {

            }
        %>
    </body>
</html>
