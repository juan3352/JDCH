<%-- 
    Document   : enrutador
    Created on : 26 oct. 2021, 19:15:33
    Author     : Juan D Cuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if (request.getParameter("menu") != null){
int smenu = Integer.parseInt(request.getParameter("menu"));
switch (smenu) {//case "inicio" :
case 1 :
%>
<!--<h3 class="title is-3">Inicio</h3>-->
<%@include file='../vistas/inicio.jsp' %>
<%
break;//case "login" :
case 2 :
%>
<!--<h3 class="title is-3">Login</h3>-->
<%@include file='../vistas/login.jsp' %>
<%
break;
case 3:
%>
<!--<h3 class="title is-3">Fotos</h3>-->
<%@include file='../vistas/fotos.jsp' %>
<%
break;
case 4:
%>
<!--<h3 class="title is-3">Acerca de</h3>-->
<%@include file='../vistas/acercade.jsp' %>
<%
break;
case 401 :
%>

<!--<h3 class="title is-3">401</h3>-->
<%@include file='../vistas/401.jsp' %>

<%
break;
default :
%>
<!--<h3 class="title is-3">Inicio</h3>-->
<%@include file='../vistas/inicio.jsp' %>
<%
break;    
}
} else {
%>
<!--<h3 class="title is-3">Inicio</h3>-->
<%@include file='../vistas/inicio.jsp' %>
<%
}
%>