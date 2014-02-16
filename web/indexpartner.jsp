<%-- 
    Document   : indexpartner
    Created on : 27 Ιαν 2014, 3:57:00 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap1.css">
        <title>Sponsorit</title>
    </head>  
    <body background="images/black2.jpg">
    <center><img src="images/splogo.JPG"width="350" height="200"><br>
        <h2>Be Our Partner</h2>
        <h2>Find the event which fits you the best and sponsor-it!</h2></center>
    <form method="post" action="loginpartner.jsp">
        <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Your Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Your Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered Yet?<a href="registerpartner.jsp">Register Now!</a></td>
                    </tr>
                </tbody>
            </table>
            <br> 
            <div id="homePage">
                <center><b><a href="index.jsp">Back To HomePage</a></b></center>
            </div>
        </center>
    </form>
</body>
</html>
