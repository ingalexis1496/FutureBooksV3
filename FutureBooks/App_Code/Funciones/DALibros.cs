using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;



/// <summary>
/// Descripción breve de DALibros
/// </summary>
public class DALibros
{
    public DALibros()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public void registrarLibro(Elibro libro)
    {
        DataTable libroNuevo = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("libros.f_insertar_libros", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_foto_libro", NpgsqlDbType.Text).Value = libro.FotoLibro1;
            dataAdapter.SelectCommand.Parameters.Add("_nombre_libro", NpgsqlDbType.Text).Value = libro.NombreLibro1;
            dataAdapter.SelectCommand.Parameters.Add("_genero", NpgsqlDbType.Text).Value = libro.Genero1;
            dataAdapter.SelectCommand.Parameters.Add("_descripcion", NpgsqlDbType.Text).Value = libro.Descripcion1;
            dataAdapter.SelectCommand.Parameters.Add("_autor", NpgsqlDbType.Text).Value = libro.Autor1;
            dataAdapter.SelectCommand.Parameters.Add("_ano_publicacion", NpgsqlDbType.Text).Value = libro.AñoPublicacion1;
          
            conection.Open();
            dataAdapter.Fill(libroNuevo);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
    }
    public DataTable listarLibros()
    {
        DataTable listarLibro = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("libros.listar_libros", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conection.Open();
            dataAdapter.Fill(listarLibro);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return listarLibro;
    }

}