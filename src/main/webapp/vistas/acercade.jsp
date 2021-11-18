<%-- 
    Document   : acercade
    Created on : 26 oct. 2021, 19:29:38
    Author     : Juan D Cuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
// Validación de entrada desde el menú principal
if (request.getParameter("menu") != null){
%>


<h1>Acerca de</h1>





    <% }else {
// Cargando la Página de errores
String redirectURL = "../index.jsp?menu=401";
response.sendRedirect(redirectURL);
}%>
   