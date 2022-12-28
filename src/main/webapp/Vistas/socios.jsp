<%-- 
    Document   : socios
    Created on : 21 dic 2022, 07:57:05
    Author     : potus
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Socios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="st/Style.css">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <!-- font -->
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
        <nav class="navbar navbar-dark bg-dark navbar-expand-lg pb-0">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="st/codoacodo.png" alt=""></a>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <p><a class="nav-link" href="#">C22548</a></p>
                    </li>
                </ul>
            </div>
            </div>
        </nav>
        </header>
        <header class="shadow-lg p-3 mb-5" style=" background-color: #57ce73;">
            <section class="container pt-section"> 
            <h1 class="mb-9 text-center pb-0 fs-1 font-monospace" style="color: white;">LISTADO DE SOCIOS</h1></section>
        </header>
        <br>
        <br>
        <section>
        <div class="container">
            <div class="row justify-content-center">
                <a class="btn btn-sm btn-outline-primary col-9 m-4"" href="SociosController?accion=nuevo">Agregar Socio</a>
                <div><br></div>
                <table class="table table-white border-start border-info">
                    <thead style="color: green">
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
                        <th>Localidad</th>
                        <th>Mail</th>
                        <th>Telefono</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </thead>
                    <%
                    List<Socios> resultado = null;
                    SociosDAO s1=new SociosDAO();
                    resultado = s1.listarSocios();
                    
                    for(int x=0;x<resultado.size();x++){
                        String ruta="SociosController?accion=modificar&id="+resultado.get(x).getIdSocio();
                        String rutaE="SociosController?accion=eliminar&id="+resultado.get(x).getIdSocio();
                    %>
                    <tbody>
                        <tr style="border-bottom-color: white;">
                            <td><%=resultado.get(x).getIdSocio()%></td>
                            <td><%=resultado.get(x).getNombre()%></td>
                            <td><%=resultado.get(x).getApellido()%></td>
                            <td><%=resultado.get(x).getDireccion()%></td>
                            <td><%=resultado.get(x).getLocalidad()%></td>
                            <td><%=resultado.get(x).getEmail()%></td>
                            <td><%=resultado.get(x).getTelefono()%></td>
                            <td><a href=<%=ruta%>><i class="fa-solid fa-arrow-right-arrow-left"></i></a></td>
                            <td><a href=<%=rutaE%>><i class="fa-solid fa-arrow-down"></i> </a></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table >
                <div><br></div>
                <a class="btn btn-sm btn-outline-primary col-9 m-4" href="SociosController?accion=salir">Salir al Indice</a>
            </div>
        </div>
        </section>
    </body>
</html>
