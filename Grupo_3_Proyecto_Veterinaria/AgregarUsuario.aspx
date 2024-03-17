<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Grupo_3_Proyecto_Veterinaria.AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar Usuario</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Agregar Nuevo Usuario</h1>
            <div>
                <label for="txtLogin">Login:</label>
                <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtClave">Clave:</label>
                <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <label for="txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            </div>
        </div>
    </form>
</body>
</html>

