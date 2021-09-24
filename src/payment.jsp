<%-- 
    Document   : payment
    Created on : 2018/09/03, 15:05:30
    Author     : hatto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name=form action="confirmation of payment.jsp">
            <center>
                <%
                    String choice1 = request.getParameter("q1");
                    Object obj = session.getAttribute("sid");
                    String SID = obj.toString();
                    String sid = "";
                    session.setAttribute("sid", SID);
                    out.println(SID);
                    if (choice1.equals("selection1")) {

                        Class.forName("com.mysql.jdbc.Driver");
                        //establish connection
                        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admission", "root", "");

                        String query = "insert into student(pid)values(?) where sid=SID";

                        Statement st = cn.createStatement();

                        PreparedStatement pt = cn.prepareStatement(query);
                        //Set values to?
                        pt.setInt(1, 1);

                        //ExecuteQuery
                        int count = pt.executeUpdate();

                %>
                <br>
                <br>
                <font size="10">
                Account number: <font  color="#FF0000">1234 5678 6543</font>
                <br>
                Institutions:  <font  color="#FF0000"> Symbio</font>
                <br>
                Branch: <font  color="#FF0000">  Pune</font>
                <br>
                Outline: <font  color="#FF0000">  2018.9.8</font>

                </font>
                <br>
                <br>
                <br><br>
            </center>
            <%                }
                if (choice1.equals("selection2")) {

            %>
            <center>Card number: <input type="number" required-="true" maxlength=16  size="30" placeholder="Enter Card number here" name="q2" value=""><br>
                PIN code: <input type="password" required maxlength=3 size="30" placeholder="Enter PIN code here" name="q3" value=""><br>
                <form name="yyyymmdd" method="post" action="#">
                    Year               
                    <select name="select">
                        <option value="">--</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2014">2021</option>
                        <option value="2015">2022</option>
                        <option value="2016">2023</option>
                        <option value="2017">2024</option>
                    </select>
                    Month
                    <SELECT name="month">
                        <option value="">--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </SELECT>
                    Date
                    <SELECT name="day">
                        <option value="">--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>
            </center>
            <input type="submit" value="Submit">
            <%              }
            %>     
            <br>
            <br> 


        </form>
    </body>
</html>
