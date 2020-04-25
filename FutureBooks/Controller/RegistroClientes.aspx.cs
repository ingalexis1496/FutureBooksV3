using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_RegistroClientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_regist_Click(object sender, EventArgs e)
    {
        ECliente encapsular = new ECliente();
        DACliente funcion = new DACliente();
        String genero;
        
        encapsular.Nombres = TB_nombres.Text;
        encapsular.Apellidos = TB_apellidos.Text;
        encapsular.Telefono =  Int64.Parse(TB_telefono.Text);

        if (DDL_genero.SelectedValue == "1")
        {
            genero = "Masculino";
            encapsular.Genero = genero;
        }
        if (DDL_genero.SelectedValue == "2")
        {
            genero = "Femenino";
            encapsular.Genero = genero;
        }
        encapsular.Correo = TB_correo.Text;
        encapsular.Direccion =TB_direccion.Text;

        funcion.registrarCliente(encapsular);
        this.Page.Response.Write("<script language='JavaScript'>window.alert('Registro Exitoso');</script>");

    }
}