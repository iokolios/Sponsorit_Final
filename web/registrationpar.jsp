<%-- 
    Document   : registrationpar
    Created on : 27 Ιαν 2014, 4:25:28 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase",
            "root", "4deadmonks");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into sponsors(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcomepartner.jsp");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("indexpartner.jsp");
    }
%>
