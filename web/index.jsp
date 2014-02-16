<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap1.css">
        <title>Sponsorit</title>
    </head>  
    <body background="images/black1.jpg">
    <center><img src="images/splogo.JPG"width="350" height="200"><br>
        <h2>You Give Your Plan,You Get Your Event!</h2></center>
    <form method="post" action="login.jsp">
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
                        <td colspan="2">Not Registered Yet?<a href="register.jsp">Register Now!</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </form>
    <br>
    <div id="sponsor">
        <center><b><a href='indexpartner.jsp'>Be A Sponsor!</a></b>
        </center>
    </div>
    <br>
    <br>
    <div>
        <center>
            <b><p>Developed by iokolios</p></b>
        </center>
    </div>
</body>
</html>