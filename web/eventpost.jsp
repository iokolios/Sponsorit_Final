<%-- 
    Document   : eventpost
    Created on : 26 Ιαν 2014, 6:44:22 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8");
    String userid = session.getAttribute("userid").toString();
    String event_post = request.getParameter("event_post");
    event_post = event_post.replace("\'", "\'\'");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase", "root", "4deadmonks");
    Statement st = con.createStatement();
    ResultSet rs;
    //rs = st.executeQuery("select * from organisers where uname='" +  userid + "'");
    //rs = st.executeQuery("SELECT * from eventplans");
    int i = st.executeUpdate("insert into eventplans( plan, uname ) values ('" + event_post + "','" + userid + "')");

    String QueryString = "SELECT * from eventplans";
    //ResultSet rs = null;
    rs = st.executeQuery(QueryString);
%>
<body background="images/black1.jpg">
<center>
    <h1 style="color:deepskyblue;margin-left:20px;">Event Plan List</h1>
    <div>
    <TABLE cellpadding="20" border="1">
        <%
            while (rs.next()) {
        %>
        <TR>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
        </TR>
        <% } %>
        <%
        // close all the connections.
            rs.close();
            st.close();
            con.close();
        %>

    </TABLE>
    </div>
    <br>
    <div id="Logout">
        <b><a href="logout.jsp">Log out</a></b>
    </div>
    <br>
    <div><img src="images/splogo.JPG"width="150" height="100"></div>
</center>
</body>
</html>