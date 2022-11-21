<%-- 
    Document   : logout
    Created on : Nov 19, 2022, 3:27:50 PM
    Author     : CSE
--%>

<%
 session.removeAttribute("user"); 
 response.sendRedirect("login.jsp");
%>
