using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class View_MasterUsuario : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }





    protected void BTN_subir_Click(object sender, EventArgs e)
    {

      
                Elibro encapsular = new Elibro();
                DALibros agregaLibro = new DALibros();
                encapsular.FotoLibro1 = cargarImagen();
                encapsular.NombreLibro1 = TB_nomLibro.Text;
                encapsular.AñoPublicacion1 = TB_año.Text;
                encapsular.Genero1 = TB_genero.Text;
                encapsular.Descripcion1 = TB_descripcion.Text;
                encapsular.Autor1 = TB_autor.Text;

                agregaLibro.registrarLibro(encapsular);
            
     



        }
        private string cargarImagen()
        {
            string saveLocation = "";
            string nombreArchivo = System.IO.Path.GetFileName(Filelibro.PostedFile.FileName);
            string extension = System.IO.Path.GetExtension(Filelibro.PostedFile.FileName);
            if (!(string.Compare(extension, ".jpg", true) == 0 || string.Compare(extension, ".jpeg", true) == 0 || string.Compare(extension, ".gif", true) == 0))
            {
            }
            //Crear ruta de la imagen
            saveLocation = Server.MapPath("~\\Img\\Libros") + "\\" + nombreArchivo;
            //guardar en la ruta
            Filelibro.PostedFile.SaveAs(saveLocation);
            
            //retornar ruta
            return "~\\Img\\Libros" + "\\" + nombreArchivo;
        }
    
}
