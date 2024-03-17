<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMain.aspx.cs" Inherits="Grupo3Proyecto_Veterinaria.PaginaMain" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Veterinaria</title>
    <link href="EstiloPagVet.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Veterinaria Heredia UH</h1>
        <img src="https://w7.pngwing.com/pngs/209/366/png-transparent-cute-vet-hand-lovely-veterinary-thumbnail.png" alt="Veterinaria">
    </header>
    <nav>
        <ul>
            <li><a href="MenuPrincipal.aspx">Inicio</a></li> 
            <li>
                <a href="#">Reportes</a>
                <ul>
                    <li><a href="ReporteUsuarios.aspx">Reporte de Usuarios</a></li>
                    <li><a href="ReporteMascotas.aspx">Reporte de Mascotas</a></li>
                    <li><a href="ReporteControlCitas.aspx">Reporte de Control de Citas</a></li>
                </ul>
            </li>
            <li><a href="#">Salir</a></li>
        </ul>
    </nav>
  
</body>
</html>


