<%@ page import="jakarta.servlet.http.HttpSession" %>
<%  
HttpSession currentSession = request.getSession();

if (currentSession.getAttribute("username") == null) {
    if(currentSession.getAttribute("password") == null){
        response.sendRedirect("../index.jsp");
    }
} else {
%>
<html>
    <head>
        <title>Inicio Sesion</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
        <h1> BIENVENIDO/A</h1>
        <div>
            <h3>nombre: <%= currentSession.getAttribute("nombre") %></h3>
        </div>
    </body>
</html>

<%
    }
%>