using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class View_ViewLibros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            Datos reporte = ObtenerInforme();
            CRSLibros.ReportDocument.SetDataSource(reporte);
            CRVlibros.ReportSource = CRSLibros;
        }
        catch (Exception)
        {
            throw;
        }


    }



    protected Datos ObtenerInforme()
    {
        DataRow fila;
        DataTable informacion = new DataTable();
        Datos datos   = new Datos();
        informacion =  datos.Tables["DTLibros"];
        DALibros libros = new DALibros();
        DataTable intermedio = libros.listarLibros();

        for (int i = 0; i < intermedio.Rows.Count; i++)
        {



            fila = informacion.NewRow();
            fila["NombreLibro"] = intermedio.Rows[i]["nombre_libro"].ToString();
            fila["Genero"] = intermedio.Rows[i]["genero"].ToString();
            fila["Descripcion"] = intermedio.Rows[i]["descripcion"].ToString();
            fila["autor"] = intermedio.Rows[i]["autor"].ToString();
            fila["anopublicacion"] = intermedio.Rows[i]["ano_publicacion"].ToString();

            // (fila) = ("nombre", "genero", "descripcion", "autor", "ano_publicacion");

            informacion.Rows.Add(fila);



        }
        return datos;
    }

}