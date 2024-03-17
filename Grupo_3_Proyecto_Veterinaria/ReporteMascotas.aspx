<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Grupo3Proyecto_Veterinaria.ReporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Mascotas</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px; 
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .acciones a {
            display: inline-block;
            padding: 8px 16px;
            text-decoration: none;
            color: #007bff;
            border: 1px solid #007bff;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .acciones a:hover {
            background-color: #007bff;
            color: #fff;
        }

        .acciones a.editar {
            background-color: #28a745;
            border-color: #28a745;
            color: #fff;
        }

        .acciones a.borrar {
            background-color: #dc3545;
            border-color: #dc3545;
            color: #fff;
        }

        .btn-agregar-usuario {
            display: block;
            width: 150px;
            margin: 20px auto;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-agregar-usuario:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Reporte de Mascotas</h2>
            <asp:GridView ID="GridViewMascotas" runat="server" AutoGenerateColumns="False" CssClass="gridview" EmptyDataText="No hay mascotas para mostrar">
                <Columns>
                    <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" />
                    <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo Mascota" />
                    <asp:BoundField DataField="Comida_Favorita" HeaderText="Comida Favorita" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
