using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Elibro
/// </summary>
public class Elibro
{
    public Elibro()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    private String FotoLibro;
    private String NombreLibro;
    private String Genero;
    private String Descripcion;
    private String Autor;
    private String AñoPublicacion;

    public string NombreLibro1 { get => NombreLibro; set => NombreLibro = value; }
    public string Genero1 { get => Genero; set => Genero = value; }
    public string Descripcion1 { get => Descripcion; set => Descripcion = value; }
    public string Autor1 { get => Autor; set => Autor = value; }
    public string AñoPublicacion1 { get => AñoPublicacion; set => AñoPublicacion = value; }
    public string FotoLibro1 { get => FotoLibro; set => FotoLibro = value; }
}