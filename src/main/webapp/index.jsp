<%-- 
    Document   : index
    Created on : 21 dic 2022, 15:41:00
    Author     : potus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Indice</title>
        <link rel="stylesheet" href="st/Style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
        <nav class="navbar navbar-dark bg-dark navbar-expand-lg pb-0">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="st/codoacodo.png" alt=""></a>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <h3 class="font-monospace" style="color: white;">Bienvenido a TP_Intregrador Crud22548</h3>
                    </li>
                </ul>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <p><a class="nav-link" href="#">Header</a></p>
                    </li>
                </ul>
            </div>
        </div>
        </nav>
        </header>
        <header class="shadow-lg p-3 mb-5" style="background-color: #57ce73;">
            <section class="container pt-section text-center ">
                <small class="fs-1 fw-light mt-3 font-monospace" style="color: white;">INDICE</small>
            </section>
        </header>
        <section class="container pt-section">
            <div class="row justify-content-center">
                <h5 style="color: #25a342">creado por :</h5>
                <div class="text-center">
                    <div class="card text-bg-success" style="padding:8px;">
                        <h3>Oliverio Leonardo</h3>
                         <!-- style="color: white; padding:8px; margin: 0.6px; background-color:#57ce73; border-radius:1px;" -->
                    </div>
                    <br>
                    <div class="col-md mb-2">
                        <a type="button" class="btn btn-outline-success col-9" href="SociosController?accion=socios">Ir a Socios</a>
                    </div>
                </div>
                <br>
            </div>
            <br>
        </section>
        <br>
        <footer style="padding:10px">
            <nav class="navbar-expand-lg btn-close-white">
                <ul class="gx-0 navbar justify-content-center navbar-nav">
                    <a class="col text-center nav-link active" href="#">Footer</a>
                </ul>
            </nav>
        </footer>
    </body>
    
</html>
