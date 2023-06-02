<% @ page import="jakaart.servlet.http.Cookie" %>
<%
  if(nombre && password == null){
    response.sendRedirect("../index.jsp");
  }else{
    Cookie[] cookies = request.getCookies();
    String nombre = null;
    String password = null;

    for (Cookie cookie : cookies){
      if (cookie.getName().equals("nombre"))
        nombre = cookie.getValue();
      if(cookie.getName().equals("password"))
        password = cookie.getValue();
    }
%>
<html>
  <head>
    <title>Cookie</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <body>
    <h3> nombre: <%= nombre%></h3>
    <h3> password: <%=password%></h3>
    </div>
  </body>
</html>
<%
  }
%>