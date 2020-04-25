<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PruebaRepeater.aspx.cs" Inherits="View_PruebaRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate> 
                        <table>
                            <tr>
                                <td>
                                   
                                    <asp:Image ID="Image1" ImageUrl='<%# Eval("foto_libro") %>' runat="server" />

                                </td> 
                                <td> 
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("nombre_libro") %>'></asp:Label>
                                </td>
                              
                            </tr>
                        </table>

                    </ItemTemplate>
            </asp:Repeater>
        
        </div>
    </form>
</body>
</html>
