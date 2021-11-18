<%-- 
    Document   : 401
    Created on : 26 oct. 2021, 21:52:36
    Author     : Juan D Cuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
// Validación de entrad desde el menú principal
if (request.getParameter("menu") != null){
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="has-text-centered">
        <h1 class="has-text-centered">Te equivocaste compa, vea que chingao hizo mal!</h1>
        <a class="is-centered" href="../index.jsp?menu=2">
            
            <img class="is-centered" src="https://th.bing.com/th/id/R.17c9cf6866efdd9695a0cc507ad024f4?rik=m%2fnpBqJFCco87g&riu=http%3a%2f%2fwww.screamprice.com%2f404.gif&ehk=%2ffaw74Cg7sOSYZShDbJH1Oo1pQTbRK89hNl82mTqcWA%3d&risl=&pid=ImgRaw&r=0" alt="Fallo la imagen de fallo xD, que epico" background-repeat:no-repeat ; style="align-self: center"/>
        </a>
        
    </body>
</html>
<% }else {
// Redireigiendo a la Página de errores
String redirectURL = "./vistas/401.jsp";
response.sendRedirect(redirectURL);
}%>