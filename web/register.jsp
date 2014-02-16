<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap1.css">
        <title>Registration</title>
    </head>
    <body background="images/black1.jpg">
        <form method="post" action="registration.jsp">
            <center>
                <h1>Registration form</h1>
            <table border="1" width="40%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Your Information</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Your First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Your Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Your Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Give a Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Give a Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Register" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already Registered?<a href="index.jsp">Login Here!</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <br>
        <center><img src="images/splogo.JPG"width="150" height="100"></center>
    </body>
</html>