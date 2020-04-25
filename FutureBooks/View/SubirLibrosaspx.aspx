<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/SubirLibrosaspx.aspx.cs" Inherits="View_SubirLibrosaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Añadir Mi Libro"></asp:Label>
        </div>
        <p>
&nbsp;<asp:FileUpload ID="FileLibro" runat="server" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Subir foto de libro"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TB_genero" runat="server"></asp:TextBox>
            Género</p>
        <p>
            <asp:TextBox ID="TB_descripcion" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Descripcion corta"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TB_nombre_libro" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Nombre del libro"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TB_ano_publi" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Año de publicación"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TB_autor" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Autor"></asp:Label>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTN_Guardar" runat="server" OnClick="BTN_Guardar_Click" Text="Subir Libro" />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
