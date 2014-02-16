<%-- 
    Document   : success
    Created on : 15 Ιαν 2014, 4:09:45 μμ
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<center><h1>You Are Not Logged In!</h1><br/>
    <a href="index.jsp">Please Login</a>
</center>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<br>
<b><a href='logout.jsp'>Log Out</a></b>
<body background="images/black1.jpg">
    <br>
<center><h2 style="color:deepskyblue;margin-left:20px;">What Sponsorit is?</h2></center>
<h3>Sponsorit is a tool which can be used by event organisers to succeed sponsorships and make their own events.It has the role of a “web marketplace”.</h3>
<br>
<center><h2 style="color:deepskyblue;margin-left:20px;">How it works?</h2></center>
<h3>People or groups can register and post their full event plan description in an “event list”.Brands and companies can register as sponsors and check the event list to find an interesting plan to get involved with.When a sponsor chooses an event plan,the organiser is notified.It is a modern,quicker and easier way to secure sponsorships nowadays.</h3><br>
<br>
<br>

<center><h2 style="color:deepskyblue;margin-left:20px;">Do you have your own event plan?</h2></center>
<h4><b><a href="eventcatalog.jsp">Type your plan</a></b> and add it in our event plan list.You may find your people!</h4>
<br>
<h4><b><a href="eventdelete.jsp">Delete</a></b> the event plans you have posted.</h4>
<br>
<h4><b><a href="catalogview.jsp">Check</a></b> the event plan list.</h4>
<br>
<br>

<center><img src="images/splogo.JPG"width="150" height="100"></center>
</body>
<%
    }
%>
