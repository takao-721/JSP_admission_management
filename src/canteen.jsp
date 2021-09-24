<%-- 
    Document   : canteen
    Created on : 2018/08/27, 19:59:58
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
            String choice = request.getParameter("drink");
            int quantity = Integer.parseInt(request.getParameter("txtqty"));
            float bill;

            if (choice.equals("Tea")) {
                bill = quantity * 10;
            } else if (choice.equals("Milk")) {
                bill = quantity * 15;
            } else if (choice.equals("Juice")) {
                bill = quantity * 20;
            } else {
                bill = 0;
            }
            out.println("Bill is" + bill);
        %>
    </body>
</html>
