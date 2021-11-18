<%-- 
    Document   : login
    Created on : 26 oct. 2021, 19:29:21
    Author     : Juan D Cuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
// Validación de entrada desde el menú principal
if (request.getParameter("menu") != null){
%>

<div>
    <form action="./modelo/v.jsp" method="POST">
        <center>
            <table border="1" cellpading="5" cellspacing="2">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Usuario</td>
                        <td><input type="text" name="usuario" required></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="pass" required></td>
                    </tr>
                    <tr>
                        <td colspan="2" aling="center">
                            <input type="submit" value="Login"/>                            
                        </td>
                    </tr>
                </tbody>
                
            </table>
        </center>
    </form>
</div>



<!--
<div class="container">
    <div class="card">
        <section class="" style="background-color: grey">
            <div class="hero-body">
                <div class="container">
                    <div class="columns is-centered">
                        <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                            <form action="./modelo/v.jsp" method="post">
                                <div class="field">
                                    <label class="label">Usuario</label>
                                    <div class="">

                                        <input type="text" name="usuario" placeholder="nombre de usuario" class="input" required>
                                        
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Password</label>
                                    <div class="">
                                        
                                        <input type="password" name="contraseña" placeholder="*******" class="input" required>
                                        
                                    </div>
                                </div>

                                <div class="field">
                                    <button>
                                        Login
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <br>
    <!-- con materialize
    <div class="row">
    <div class="col s12 m6 offset-m4">
        <form action="./controlador/login.php" method="post">
            <div class="row card-panel z-depth-4" >
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_box</i>
                    <input type="text" placeholder="Ingresa tu cuenta de usuario" id="usuario" name="usuario" class="validate" required="">
                    <label for="usuario" class="active" style="color: blue">Usuario:</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">https</i>                            
                    <input type="password" placeholder="Ingresa tu contraseña" id="contraseña" name="password" class="validate" required="">
                    <label for="contraseña" class="active" style="color: blue">Contraseña:</label>
                </div>
                <button class="btn blue right">
                    <i class="material-icons left">login</i>
                    Enviar
                </button>
            </div>
        </form>
    </div>
</div>   -->
    
    
    <% }else {
// Cargando la Página de errores
String redirectURL = "../index.jsp?menu=401";
response.sendRedirect(redirectURL);
}%>
    
    
    
    
</div>