<%@ Page Title="" Language="C#" MasterPageFile="~/View/assets/MasterUsuario.master" AutoEventWireup="true" CodeFile="~/Controller/LibrosUsuario.aspx.cs" Inherits="View_LibrosUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4" style="margin-bottom: 20px">
                        <div class="card" style="border: 1px solid black">
                            <asp:Image ImageUrl='<%# Eval("foto_libro") %>' Style="width: 300px;" runat="server" />
                            <div class="card-body">
                                <p>
                                    <strong>Nombre: </strong>
                                    <asp:Label Text='<%# Eval("nombre_libro") %>' runat="server"></asp:Label>
                                    <br />
                                    <strong>Genero: </strong>
                                    <asp:Label Text='<%# Eval("genero") %>' runat="server"></asp:Label>
                                    <br />
                                    <strong>Descripcion: </strong>
                                    <asp:Label Text='<%# Eval("descripcion") %>' runat="server"></asp:Label>
                                    <br />
                                    <strong>Autor: </strong>
                                    <asp:Label Text='<%# Eval("autor") %>' runat="server"></asp:Label>
                                    <br />
                                    <strong>Año de publicion: </strong>
                                    <asp:Label Text='<%# Eval("ano_publicacion") %>' runat="server"></asp:Label>
                                    <br />
                                    <asp:Button ID="Button1"  CssClass="btn btn-success" runat="server" Text="Intercambiar" />
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>

