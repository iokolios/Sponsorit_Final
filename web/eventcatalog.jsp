<%-- 
    Document   : eventplan
    Created on : 26 Ιαν 2014, 6:34:12 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap1.css">
        <title>Event Plans Catalog</title>
    </head>
    <body background="images/black1.jpg">
    <center>
        <div id="event_post">
            <form action="eventpost.jsp" method="post">
                <h1>Add Your Event Plan Here: </h1>
                <textarea name="event_post" placeholder="Type your text..." cols="40" rows="15" required/></textarea>
                <input type="submit" value="POST"/>
            </form>
        </div>

        <br> 
        <div>
            <img src="images/splogo.JPG"width="150" height="100">
        </div>
        <br>
        <div id="Logout">
            <b><a href="logout.jsp">Log out</a></b>
        </div>
    </body>
</html>
