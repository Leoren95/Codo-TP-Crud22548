<%-- 
    Document   : modificar
    Created on : 21 dic 2022, 07:56:53
    Author     : potus
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="st/Style.css">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>
        <header class="shadow-lg p-3 mb-5" style=" background-color: #57ce73;">
        <nav class="navbar navbar-expand-lg pb-0">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="st/codoacodo.png" alt=""></a>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav mb-lg-0">
                    <li class="nav-item">
                        <h1 class="mb-9 text-center pb-0 fs-1 font-monospace" style="color: white;">MODIFICAR SOCIO</h1>
                    </li>
                </ul>
            </div>
            </div>
        </nav>
        </header>
        <div class="container">
            <div class="row">
                <%
                    String id=request.getParameter("id");
                    int mid;
                    mid=Integer.parseInt(id);
                    Socios resultado = null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.mostrarSocio(mid);
                %>
                <form class="p-3 fw-bold" method="post" style="color:#57ce73;" action="SociosController?accion=actualizar">
                    <div class="mb-1">
                        <label for="id" class="form-label">ID</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="id" id="id" readonly="true" value=<%=resultado.getIdSocio()%> bloqued>
                    </div>
                    <div class="mb-1">
                        <label for="nombre" class="form-label">nombre</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="nombre" id="nombre" value=<%=resultado.getNombre()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="apellido" class="form-label">apellido</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="apellido" id="apellido" value=<%=resultado.getApellido()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="direccion" class="form-label">direccion</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="direccion" id="direccion" value=<%=resultado.getDireccion()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="localidad" class="form-label">localidad</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="localidad" id="localidad" value=<%=resultado.getLocalidad()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="fnac" class="form-label">fecha nac</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="fnac" id="fnac" value=<%=resultado.getFnac()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="email" class="form-label">e-mail</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="email" id="email" value=<%=resultado.getEmail()%> required>
                    </div>
                    <div class="mb-1">
                        <label for="telefono" class="form-label">telefono</label>
                        <input type="text" style="border-color: rgb(211, 231, 243); color: cornflowerblue;" class="form-control text-center" name="telefono" id="telefono" value=<%=resultado.getTelefono()%> required>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-outline-primary">Modificar</button>
                    <!--<a type="button" class="btn btn-outline-success" href="SociosController?accion=socios">Volver</a>-->
                    <input type="button" class="btn btn-outline-success" value="Volver" onClick="history.go(-1)" placeholder="Volver"></input>
                </form> 
            </div>
        </div>
    </body>
</html>
