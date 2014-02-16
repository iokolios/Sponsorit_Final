<%-- 
    Document   : eventdelete
    Created on : 16 Φεβ 2014, 1:57:34 πμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%@ page import ="java.sql.*" %>
    <% request.setCharacterEncoding("UTF-8");
   
    String userid = session.getAttribute("userid").toString();
    //String event_post = request.getParameter("event_post");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase", "root", "4deadmonks");
    Statement st = con.createStatement();
    ResultSet rs;
 
    int i = st.executeUpdate("delete from eventplans where uname ='"+ userid +"' ");
    //ResultSet rs = null;
%>
<body background="images/black1.jpg">
<h2>You have succesfully deleted your posted event plans</h2>
<div id="Catalogview">
     <b><a href="catalogview.jsp">Check the event plan list</a></b>.
    </div>
</body>