using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;

/// <summary>
/// Descripción breve de DACliente
/// </summary>
public class DACliente
{
    public DACliente()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public void registrarCliente(ECliente cliente)
    {
        DataTable datosCliente = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.insertar_cliente", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombres", NpgsqlDbType.Varchar).Value = cliente.Nombres;
            dataAdapter.SelectCommand.Parameters.Add("_apellidos", NpgsqlDbType.Varchar).Value = cliente.Apellidos;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Bigint).Value = cliente.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_genero", NpgsqlDbType.Varchar).Value = cliente.Genero;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = cliente.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = cliente.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = 2;

            conection.Open();
            dataAdapter.Fill(datosCliente);
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
    public DataTable ValidarLogin(ECliente cliente)
    {
        DataTable datosCliente = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.validar_login1", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = cliente.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_contrasena", NpgsqlDbType.Varchar).Value =cliente.Contrasena ;

            conection.Open();
            dataAdapter.Fill(datosCliente);
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
        return datosCliente;
    }
}