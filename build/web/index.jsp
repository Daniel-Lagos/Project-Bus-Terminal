<%-- 
    Document   : index
    Created on : 22-feb-2020, 17:45:54
    Author     : mesla
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
    <head>
        <meta charset="UTF-8">
        <title>Terminal de Transportes de Sogamoso</title>
        <link rel="icon" href="./images/logo.jpg">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Alegreya&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Sriracha&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- Barra de navegación-->
        <div class="row navFont">
            <div class="col-xl col-sm col-lg">
                <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #344823;">
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.jpg" width="40" height="40" alt="">
                    </a>
                    <a class="navbar-brand" href="#">Terminal de Transportes de Sogamoso</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Empresas de transporte
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"
                                     style="background-color: #698465;">
                                    <a class="dropdown-item" href="./pages/libertadores.html">Libertadores S.A</a>
                                    <a class="dropdown-item" href="./pages/coflotax.html">Coflotax </a>
                                    <a class="dropdown-item" href="./pages/rapidoDuitama.html">Gacela Rapido Duitama</a>
                                    <a class="dropdown-item" href="./pages/concorde.html">Concorde</a>
                                    <a class="dropdown-item" href="./pages/cootracero.html">Cootracero</a>
                                </div>
                            </li>
                            <liv class="nav-item">
                                <a class="nav-link" href="#">Información de Rutas</a>
                            </liv>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About Us</a>
                            </li>
                            <!--<a href="https://facebook.com" class="btn">
                                <img src="./images/facebook.png" alt="">
                            </a>-->
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <br>
        <div class="container table-responsive">
            <!-- Carrusel -->
            <div class="row">
                <div class="col-xl">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner justify-content-lg-center">
                            <div class="carousel-item active carousel-img img-1" style="height: 100vh"></div>
                            <div class="carousel-item carousel-img img-2" style="height: 100vh"></div>
                            <div class="carousel-item carousel-img img-3" style="height: 100vh"></div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>


            <br>
            <div class="row">
                <div class="col">
                    <h2 align="center" class="titleFont">Misión</h2>
                    <p class="font">Promover, desarrollar y explotar soluciones de movilidad, mediante la gestión y
                        operación
                        innovadora,
                        eficiente y sostenible de servicios a la ciudadanía, al sector transportador, regional y privado,
                        que
                        impacten positivamente en la movilidad distrital y/o nacional.</p>
                </div>
                <div class="col">
                    <h2 align="center" class="titleFont">Visión</h2>
                    <p class="font">En el 2026 la Terminal de Transporte de Sogamoso será líder a nivel nacional en la
                        implementación de
                        soluciones innovadoras y sostenibles de movilidad, mediante la prestación de servicios que
                        beneficien a
                        nuestros clientes, entendiendo ciudadanos, transportadores y terceros. Todo esto cumpliendo con las
                        expectativas, financieras y misionales, de nuestros accionistas y socios.</p>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xl">
                    <h2 align="center" class="titleFont">Nuestras Empresas Afiliadas</h2>
                    <!--<h3 align="center">Libertadores S.A</h3>-->
                </div>
            </div>
            <br>

            <!-- Cards-->
            <div class="row row-cols-1 row-cols-md-2">
                <div class="col mb-4">
                    <div class="card">
                        <img src="./images/cardLibertadores.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title titleFont">Libertadores Coflonorte L.t.d.a</h5>
                            <p class="card-text font">Coflonorte Ltda. es una empresa boyacense del sector cooperativo que
                                presta servicios de transporte de personas, carga, encomiendas y servicios conexos con el
                                objetivo de brindar la mejor experiencia de servicio al cliente.</p>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="./images/cardCooflotax.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title titleFont">Cooflotax</h5>
                            <p class="card-text font">Cooflotax Duitama es una empresa de transporte de pasajeros de Duitama
                                y con servicios en el departamento de Boyaca. Coflotax cuenta con una flota de vehiculos
                                compuestos por taxis y busetas con las cuales llegan a destinos como Sogamoso, Soata y
                                Tunja.</p>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="./images/cardRapidoDuitama.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title titleFont">Rapido Duitama L.t.d.a</h5>
                            <p class="card-text font">EL RAPIDO DUITAMA LTDA. pensando en nuestros usuarios mejora los
                                diferentes servicios, que brindan una mayor alternativa en la demanda, con cubrimiento en
                                Servicio de Lujo y con el superdirecto VIP a las ciudades de: Bogotá, Tunja, Duitama, Paipa
                                y Sogamoso; y en el Servicio Corriente a los municipios de: Ramiriquí, Zetaquirá, Miraflores
                                , Siachoque, Berbeo, Toca, Soracá, Rondón, Úmbita, Garagoa, Tibaná, Turmequé, Aquitania,
                                Pesca y Tota.</p>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="./images/cootraceroCard.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title titleFont">Cootracero</h5>
                            <p class="card-text font">Cootracero es una empresa de transporte de pasajeros intermunicipal
                                con sede en el municipio de Sogamoso. Entre sus servicios destacan el transporte de
                                pasajeros y de carga en el departamento de Boyacá. Una de sus rutas principales es la desde
                                Sogamoso a Duitama.</p>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="./images/cardConcorde.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title titleFont">Cootransbol Concorde L.t.d.a</h5>
                            <p class="card-text font">CONCORDE empresa orgullosamente Boyacense, compañía con mayor
                                participación en el dinámico mercado del transporte de Pasajeros por carretera en el
                                territorio Colombiano, con operación desde el departamento de Boyacá prestando servicio de
                                lineas superdirectas con origen desde la ciudad de Duitama y destino Bogotá, también con
                                cobertura en los departamentos de Atlántico, Bolívar, Casanare, César, Cundinamarca, Guajira,
                                Magdalena, Norte de Santander y Santander, cubriendo 63 destinos, extendiendo su servicio y
                                atendiendo las necesidades de nuestros fieles pasajeros, con vehículos ultimo modelo para
                                el confort de nuestros usuarios.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <table>
                <thead>
                    <tr>

                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <div class="col-sm">
            <div class="row justify-content-md-center card-body">
                <footer>®Derechos reservados Daniel Lagos-Sergio Quintana 2020</footer>
            </div>
        </div>
        <!--Mapa Terminal-->
        <div class="row">
            <div class="col-3">
                <h5 class="titleFont">Dirección</h5>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3969.9636747187205!2d-72.93572668582614!3d5.718371995855482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e6a45d75ebc29d9%3A0xa34a529ea7e39d27!2sTerminal%20de%20Transportes%20de%20Sogamoso!5e0!3m2!1ses-419!2sco!4v1582049388025!5m2!1ses-419!2sco"
                        width="300" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
            <div class="col-3">
                <a class="twitter-timeline" data-lang="es" data-width="250" data-height="400"
                   href="https://twitter.com/termisogamoso?ref_src=twsrc%5Etfw"></a>
            </div>
        </div>


        <script src="./js/Jquery.js"></script>
        <script src="./js/popper.js"></script>
        <script src="./js/bootstrap.js"></script>
        <script src="./js/all.js"></script>
        <script src="./js/script.js"></script>
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </body>
</html>
