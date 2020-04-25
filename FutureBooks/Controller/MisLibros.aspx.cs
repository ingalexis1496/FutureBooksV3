using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_MisLibros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mostrarLibros();
    }
    public void mostrarLibros()
    {
        Elibro encapsular = new Elibro();
        DALibros libros = new DALibros();
        DataTable data = libros.listarLibros();
        ImgLibro.ImageUrl = data.Rows[0]["foto_libro"].ToString();
        LB_nomb_lib.Text = data.Rows[0]["nombre_libro"].ToString();
        LB_autor.Text = data.Rows[0]["autor"].ToString();
        LB_genero.Text = data.Rows[0]["genero"].ToString();
        LB_ano_plub.Text = data.Rows[0]["ano_publicacion"].ToString();
        LB_descrip.Text = data.Rows[0]["descripcion"].ToString();





    }
    
    

}