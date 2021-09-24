<%-- 
    Document   : Registration_form
    Created on : 2018/08/27, 15:42:55
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
            
            
            //Registr the driver
            Class.forName("com.mysql.jdbc.Driver");
            
            //Conection
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admission", "root", "");
            
            //Fetch the data from HTML, PAge
            //ここでHTMLページから値を受け取る
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            int SID = Integer.parseInt(request.getParameter("SID"));
            String interest = request.getParameter("interest");
            String education = request.getParameter("education");
            String grade = request.getParameter("grade");
            String password =Integer.toString(SID)+"_"+name;
            String admission = "F";
            int course_id;
            int exam_id;
            
            if(interest.equals("information_engineering")){
                course_id=1;
                exam_id=1;
            }else{
                course_id=2;
                exam_id=2;
            }
            
            
            
            //Quary
            String quary = "insert into student values(?,?,?,?,?,?,?,?,?,?,?,?)";
            
            //Statement
            PreparedStatement pt = cn.prepareStatement(quary);
            
            //Set the value
            //ここでデータベースに挿入
            pt.setInt(1, SID);
            pt.setString(2, name);
            pt.setString(3, password);
            pt.setString(4, address);
            pt.setString(5, interest);
            pt.setString(6, education);
            pt.setString(7, admission);
            pt.setString(8, grade);
            pt.setString(9, null);
            pt.setInt(10, course_id);
            pt.setInt(11, exam_id);
            pt.setString(12, null);
          
            
            
            int count=pt.executeUpdate();
            
            if(count>0 && address!="" && interest!=null && education!="" && grade!=null && SID!=0){
         
        %>
        <jsp:forward page="Registration_Completion.jsp">
        <jsp:param name="name" value="<%=name %>"/>
        <jsp:param name="address" value="<%=address %>"/>
        <jsp:param name="SID" value="<%=SID %>"/>
        <jsp:param name="interest" value="<%=interest %>"/>
        <jsp:param name="education" value="<%=education %>"/>
        <jsp:param name="grade" value="<%=grade %>"/>
        <jsp:param name="password" value="<%=password%>"/>
        </jsp:forward>
        <%
            }else {
            %>
        <%@include  file="Registration_form.html" %>
        <%
            }
            %>
    </body>
</html>
