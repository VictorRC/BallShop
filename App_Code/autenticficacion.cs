using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de autenticficacion
/// </summary>
/// 

public static class autenticficacion
{
    public static  bool autenticar(string usuario, string password)

    {
        //consulta
        string sql = @"SELECT COUNT(*) FROM Usuarios WHERE USUARIO =@user AND contrase = @pass";
        //conexion
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BallShopConnection"].ToString()))
        {
            conn.Open(); //se abre la conexion

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@user", usuario);
            cmd.Parameters.AddWithValue("@pass", password);

            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 0)
                return false;
            else
                return true;


        }
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}