<%-- 
    Document   : successpartner
    Created on : 27 Ιαν 2014, 4:27:52 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in!<br/>
<a href="indexpartner.jsp">Please Login</a>
<%} else {
%>
Welcome  <%=session.getAttribute("userid")%>
<br>
<b><a href='logoutpar.jsp'>Log Out</a></b>

<br>
<body background="images/black2.jpg">
<center><h2 style="color:deepskyblue;margin-left:20px;">What Sponsorit is?</h2></center>
<h4>Sponsorit is a tool which can be used by event organisers to succeed sponsorships and make their own events.It has the role of a “web marketplace”.</h4>
<br>
<center><h2 style="color:deepskyblue;margin-left:20px;">How it works?</h2></center>
<h4>People or groups can register and post their full event plan description in an “event list”.Brands and companies can register as sponsors and check the event list to find an interesting plan to get involved with.When a sponsor chooses an event plan,the organiser is notified.It is a modern,quicker and easier way to secure sponsorships nowadays.</h4>
<br>
<br>
<center><h2 style="color:deepskyblue;margin-left:20px;">Do you want to check the Event Plan List for something interesting?</h2></center>
<h4>Check it <b><a href="eventchoose.jsp">here</a></b></h4>
<br>
<br>
<br>
<center><img src="images/splogo.JPG"width="150" height="100"></center>
</body>
<%
    }
%>
