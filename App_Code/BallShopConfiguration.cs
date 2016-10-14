using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Descripción breve de BallShopConfiguration
/// </summary>
public static class BallShopConfiguration
{
    private static string dbConnectionString;  // Caches the data provider name   
    private static string dbProviderName;
    static BallShopConfiguration()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
        dbConnectionString = ConfigurationManager.ConnectionStrings["BallShopConnection"].ConnectionString;
        dbProviderName = ConfigurationManager.ConnectionStrings["BallShopConnection"].ProviderName;
    }

    public static string DbConnectionString
    {
        get { return dbConnectionString; }
    }
    public static string DbProviderName
    {
        get
        {
            return dbProviderName;
        }
    }
        }