<%-- 
    Document   : errorpage
    Created on : 2018/08/28, 15:32:18
    Author     : sm041
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is error page</h1>
        <%=exception.toString()%>
    </body>
</html>
