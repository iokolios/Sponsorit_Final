<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="bootstrap1.css">
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sponsoritdatabase",
            "root", "4deadmonks");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from organisers where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password!!! <a href='index.jsp'>Please Try Again</a>");
    }
%>