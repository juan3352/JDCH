<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
        <title>Proyecto JSP</title>
    </head>



    <%
        String nombre = (String) session.getAttribute("nombre");
        if (nombre == null) {%>


    
        <h1>entro</h1>


    <%    } else {
    %>

    <body class="" style="background-image: url('imagen/fondo.jpg')">

        <div class="container">
            <%@include file='vistas/header.jsp' %>
        </div>
        <div class="has-text-light " hsl(171, 100%, 96%)>
            <%@include file='modelo/enrutador.jsp' %>
        </div>
        <div>
            <%@include file='vistas/footer.jsp' %>
        </div>
    </body>
    <%
        }
    %>    





</html>