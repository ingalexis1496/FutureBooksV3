<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/RegistroClientes.aspx.cs" Inherits="View_RegistroClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 413px;
        }
        .auto-style3 {
            width: 163px;
        }
        .auto-style4 {
            width: 413px;
            height: 31px;
        }
        .auto-style5 {
            width: 163px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            width: 177px;
        }
        .auto-style8 {
            width: 177px;
            height: 31px;
        }
        .auto-style9 {
            width: 95px;
        }
        .auto-style10 {
            height: 31px;
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Nombres:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TB_nombres" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Apellidos:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TB_apellidos" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Telefono:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TB_telefono" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Genero:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DDL_genero"  runat="server">
                            <asp:ListItem  Enabled="true" Text="seleccione" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Femenino" Value="2"></asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Correo:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TB_correo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Dirección:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TB_direccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="BTN_regist" runat="server" OnClick="BTN_regist_Click" Text="Registrarse" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
