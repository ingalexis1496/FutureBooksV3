using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ECliente
/// </summary>
public class ECliente
{
    public ECliente()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private String nombres;
    private String apellidos;
    private Int64 telefono;
    private String genero;
    private String correo;
    private String direccion;
    private Int64 id_cliente;
    private String contrasena;

    public string Nombres { get => nombres; set => nombres = value; }
    public string Apellidos { get => apellidos; set => apellidos = value; }
    public long Telefono { get => telefono; set => telefono = value; }
    public string Genero { get => genero; set => genero = value; }
    public string Correo { get => correo; set => correo = value; }
    public string Direccion { get => direccion; set => direccion = value; }
    public long Id_cliente { get => id_cliente; set => id_cliente = value; }
    public string Contrasena { get => contrasena; set => contrasena = value; }
}