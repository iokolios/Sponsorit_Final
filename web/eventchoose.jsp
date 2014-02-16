<%-- 
    Document   : eventview
    Created on : 26 Ιαν 2014, 7:16:17 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%@ page import ="java.sql.*" %>
<%
    String event_post = request.getParameter("event_post");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase", "root", "4deadmonks");
    Statement st = con.createStatement();
    //ResultSet rs;
    String QueryString = "SELECT * from eventplans";
    ResultSet rs = null;
    rs = st.executeQuery(QueryString);
%>

<body background="images/black2.jpg">
<center>
    <h1 style="color:deepskyblue;margin-left:20px;">Event Plan List</h1>
    <form name="input" action="notification.jsp" method="get">
    <div>
    <TABLE cellpadding="20" border="1">
        <%
            while (rs.next()) {
        %>
        <TR>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
            <%session.setAttribute("targetname",rs.getString(3));%>
            <TD><input type="submit" value="Sponsor it!"></TD>
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
    </form>
        <br> 
    <br>
    <div id="Logout">
        <b><a href="logoutpar.jsp">Log out</a></b>
    </div>
    <br>
    <div><img src="images/splogo.JPG"width="150" height="100"></div>
</center>
</body>
</html>