<%-- 
    Document   : validacion
    Created on : 17/11/2021, 10:19:31 AM
    Author     : juanh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.SQLException" %>


<%

    try {
        //recoge los datos del login
        String usuario = request.getParameter("usuario");
        //String contraseña = "5826";
        String contraseña = request.getParameter("pass");
        //contraseña = contraseña.toString();
        //coneccion a la base de datos
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=PW;", "Netbeans", "1245");
        PreparedStatement pst = conn.prepareStatement("Select usser,pass from Login where usser=? and pass=?");
        pst.setString(1, usuario);
        pst.setString(2, contraseña);
        ResultSet rs = pst.executeQuery();

        //comprobar si la contraseña es correcta
        //out.println(usuario+contraseña);
        if (rs.next()) {
            //out.println("exito"); //el include es a donde quiero ir despues de que la validacion sea correcta
            response.sendRedirect("../index.jsp");
        } else {
            //out.println("fracaso"); 
            response.setContentType("tester");
            
            %>
            
            <!--<form action=".../tester" method="post" ><button>Volver</button></form>-->
            
            <%
                    
        }
    } catch (Exception e) {
        out.println(e);
        out.println("ocurrio un error");

    }%>