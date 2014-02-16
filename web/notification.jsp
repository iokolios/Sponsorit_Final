<%-- 
    Document   : notification
    Created on : 11 Φεβ 2014, 4:04:14 πμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%@ page import ="java.sql.*" %>
<%  String target = session.getAttribute("targetname").toString();
    String targetemail;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase", "root", "4deadmonks");
    Statement st = con.createStatement();
    //ResultSet rs;
    //String QueryString = "SELECT email from organisers where uname='" + target + "'" ;
    ResultSet rs = null;
    rs = st.executeQuery("SELECT email from organisers where uname='" + target + "'");
    if (rs.next()) {
        session.setAttribute("targetemail", rs.getString(1));

    }
%>
<body background="images/black2.jpg">
<center>
    <h2 style="color:deepskyblue;margin-left:20px;">Are you interested in this event plan?</h2><br>
    <br>
    <h2>Send an e-mail to organiser <b><%=session.getAttribute("targetname")%></b> to express your interest!</h2>
    <h3>Organiser's email account is <b><%=session.getAttribute("targetemail")%></b></h3>

    <form action="MAILTO:<%=session.getAttribute("targetemail")%>" method="post" enctype="text/plain">
        Name:<br>
        <input type="text" name="name" value="Type your name"><br>
        E-mail:<br>
        <input type="text" name="mail" value="Type your email"><br>
        Comment:<br>
        <textarea name="comment" placeholder="Type your text..." cols="50" rows="10" required/></textarea><br><br>
        <input type="submit" value="Send">
        <input type="reset" value="Reset">
    </form>

    <br>
    <div id="Logout">
        <b><a href="logoutpar.jsp">Log out</a></b>
    </div>
    <br>
    <div><img src="images/splogo.JPG"width="150" height="100"></div>
</center>
</body>
</html>
</body>
</html>
