<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="Veterinaria.MenuPrincipal" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Veterinaria</title><%--titulo llamado veterinaria--%>
    <link href="EstiloPagVet.css" rel="stylesheet" />
    <%--link de css con el tipo de estilo--%>
    <style>
        /*estilo de diseno seleccionado para el menu principal*/
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            background-color: #4caf50;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 5px;
        }

            header h1 {
                margin: 0;
                font-size: 32px;
            }

        nav {
            background-color: #2e7d32;
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 20px;
        }

            nav ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

                nav ul li {
                    padding: 10px 0;
                    border-bottom: 1px solid #fff;
                }

                    nav ul li:last-child {
                        border-bottom: none;
                    }

                    nav ul li a {
                        display: block;
                        padding-left: 20px;
                        color: #fff;
                        text-decoration: none;
                        transition: background-color 0.3s ease;
                    }

                        nav ul li a:hover {
                            background-color: #1b5e20;
                        }

                nav ul ul {
                    display: none;
                    padding-left: 20px;
                }

                nav ul li:hover > ul {
                    display: block;
                }

        main {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
        }

        img {
            display: block;
            margin: 0 auto;
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        footer {
            background-color: #4caf50;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            border-radius: 5px;
        }

            footer p {
                margin: 0;
            }
    </style>
</head>

<body>
    <header>
        <h1>Veterinaria Heredia UH </h1>
        <%--nombrando el titulo de la Veterinaria llamada Heredia UH--%>
        <img src="https://w7.pngwing.com/pngs/209/366/png-transparent-cute-vet-hand-lovely-veterinary-thumbnail.png" alt="Veterinaria">
    </header>
    <%--imagen agregada con dirrecion url metodo img src y pegando la dirrecion--%>
    <nav>
        <ul>
            <li><a href="MenuPrincipal.aspx">Inicio</a></li>
            <%--nombrando el inico--%>
            <li>
                <a href="#">Reportes</a> <%--nombrando reportes--%>
                <ul>
                    <li><a href="ReporteUsuarios.aspx">Reporte de Usuarios</a></li> <%--enlace de reporte de usuarios--%>
                    <%--al selecionar reportes se puede seleccionar las opciones de reportes--%>
                  
                    <li><a href="ReporteMascotas.aspx">Reporte de Mascotas</a></li> <%-- enlace de reporte de mascotas --%>
                    <li><a href="ReporteControlCitas.aspx">Reporte de Control de Citas</a></li> <%-- enlace de reporte de control de citas --%>
                </ul>
            </li>
            <li><a href="Salir.aspx">Salir</a></li> <%--enlace de salirse volviendo a la pagina de inicio de sesion--%>

            <%--por ultima opcion esta la de salir--%>
        </ul>
    </nav>
</body>
</html>


