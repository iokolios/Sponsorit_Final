<%-- 
    Document   : logoutpar
    Created on : 27 Ιαν 2014, 4:31:02 μμ
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//session.setAttribute("targetname", null);
//session.setAttribute("targetemail", null);
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("indexpartner.jsp");
%>
