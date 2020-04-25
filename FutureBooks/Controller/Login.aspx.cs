using System;
using System.Data;

public partial class View_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_ingresar_Click(object sender, EventArgs e)
    {
       
    }

    protected void BTN_ingresar_Click1(object sender, EventArgs e)
    {
        DACliente datosCliente = new DACliente();
        ECliente encapsular = new ECliente();
        DataTable datos = new DataTable();
        DataTable rol = new DataTable();

        encapsular.Correo = TB_correo.Text;
        encapsular.Contrasena = TB_contra.Text;
        

        datos = datosCliente.ValidarLogin(encapsular);



        if (int.Parse(datos.Rows[0]["validar_login1"].ToString()) == 1)
        {
            Response.Redirect("~/View/assets/LibrosUsuario.aspx");
        }
        else if(int.Parse(datos.Rows[0]["validar_login1"].ToString()) == 2)
        {
            
        }
        else if(int.Parse(datos.Rows[0]["validar_login1"].ToString()) == 3)
        {
            this.Page.Response.Write("<script language='JavaScript'>window.alert('Correo o contraseña Incorrectos');</script>");
        }
    }
}